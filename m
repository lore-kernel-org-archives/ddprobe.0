Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317AF272E72
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759428595; cv=none; b=gzNlqcDVPKducuzgH2M1gW3PLg3I5jVpT91GlFOP9KYo8ZT0QKkhCcRGx7xk7+WGjjGngMmtyY7a+X7vqE2U1jU//0lYzVb9aRoAYzPYIbTpJwamtfDPxcit+qpZE4rKNyPRrd2/vWcmUs3crOUlhLPt2kiGaNUFXxlnh+pZdO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759428595; c=relaxed/simple;
	bh=WyFM/xadvWwKM7fUM2Ats5Vc2CGtEuK7hqObRF5jM1Y=;
	h=To:Subject:From:Message-Id:Date; b=qf/4AExmKNURJLzgykOVxAgirWU7Gj4M8i3xF/TfRpI0oMYCGmiQtZeGOwPw9w+I+WAgTrHWxZwqnYI6Ythb9El5RQ6VAY1Tn8TUC5egkWvOVAsX4b40EVHwk6WyJDPJjRmIDGwr8BlIZez4pWPdPqkkl+2gq3pHmvMZrFZIkzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAIc2nDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAIc2nDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF10BC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759428593;
	bh=WyFM/xadvWwKM7fUM2Ats5Vc2CGtEuK7hqObRF5jM1Y=;
	h=To:Subject:From:Date:From;
	b=jAIc2nDKDZl96bzBBLnEJhl6QvBMNiEh9RQ5skD/Yo+YenSAV8NDs3IuT2e/sJBRS
	 51/oyFHbVvHrQHTQh3XrOnG8q7iMM9gV+5YMatKqkUHoDetIB6yiXiCJhTiKwTEw/3
	 dVB4a52HpcOecOGtaFLWYyv27QmfAGCrP3EZ93COGIX4zoF7gXJT0CQ1MfTNeRVUpn
	 tXKo03blspSjjsZJgBMI98XqBVJJB2/aIv8nzShQrhClU5aIi0xKymJu6nHbOhBpkZ
	 X1IlAdSzFLSkA5DJemaVvlX3Cdhz4cyRxVw0IbltG0lUNnkhCC0/8iyL3KcSxAIPtl
	 8lj772ddPreIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9F7CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942859363.15527.15120726654736852105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c355eaf02c140ae0b4811b4293937bbf3a963fb3dd7a81fd12069c57b00180
Date: Thu, 02 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759428593

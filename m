Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EA13209
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740632933; cv=none; b=LEnILzjZH20fH39byBscAhdDoEvMhrWNkWLN4GckV5Eq0lX0Yoo9lDyRKbKYgMg22UVEgIKAZ6OCQJyD55uJcVZwXBhMyac0r8m1Mawnst3XDsCchU7gBd4Ordv+0L2DkKlzM7+9YKYdU/+KJedRfTENV/6cDNw1vJCCrsRE14E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740632933; c=relaxed/simple;
	bh=POsUc7tqCxoe1C+Uwbu3jR2QyzMwVT0sxBRbcr7usAE=;
	h=To:Subject:From:Message-Id:Date; b=j1PHk51+QkBRWUcUjaBrqzOBknUALAoHCzFWdLC91f+M/i7FXv51BgHmPw5aSIMUY5yYeOnqL7pALx1VhbPwYBqpvAhfvUZVVwOtgJRJRP3ct0beap7izzI+2/B2iLAVopUibZVc19gA0PpUDHcliQFjozj6VZ+9y3VYCYWhsHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/PUpcsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/PUpcsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA730C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740632933;
	bh=POsUc7tqCxoe1C+Uwbu3jR2QyzMwVT0sxBRbcr7usAE=;
	h=To:Subject:From:Date:From;
	b=O/PUpcswhfA2Smu4LaoXRzJB594nP18FaA5Ycr8kLbqVPUwBhozQY67IQc4W/lx68
	 esrzdpFiwF1gKpKRhG9XvhLNj6pJfiivBnlohu1NIhudtqV6Ao98LHdzYM/908Y3Lx
	 jtT4o84PRL89fiFfzI+SS6UTyBe6jv8nVZ+495rx9qK0WTAzDpWdguf+6+mCTTKYZK
	 JQd9HZnMC6Rxp9I3f94dPDmuXiuWC5DhaVn26RsCa7CsGE9+dEAfOO2smOB/VQZSQR
	 OPWUUywiH+TPEAJ5cPXxy4t5qsdUmzI0qqaQfyIXgAnZQwhdtBD2mU03MriVTE40VY
	 /H/StUwfWl6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988FFC021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063293361.16620.1291920356620266515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cdfd85c1da43dc3ace55890438af5cc549639beab60f203bf2d4f915696a5d
Date: Thu, 27 Feb 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740632933

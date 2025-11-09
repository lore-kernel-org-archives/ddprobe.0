Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773872E63C
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762726194; cv=none; b=MCtTZcT1G+VYYYQTG3slMMXwh58lF7K/Olr26ylmv8eYWY37udytanYn1rdP8lEclqvDi0JfvGhrPwTJ/saBR/qby4KTQi2P2wCOW7ZKYztNG/lywTYxhIB4ikSHkegbO7XKw2oHWt++AwxiFGSk10lNU9v3AXnmHqN9PEz75sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762726194; c=relaxed/simple;
	bh=nsNIZaVXO347Y06IgKSj4Vse9gheMVXVB4HufuovlK4=;
	h=To:Subject:From:Message-Id:Date; b=DTFweiuNxUNCS1FFdL71fC4IsWQ7dr0wizs9Lu2YB0cEsnfniuBQ+tVNwsHza8tUAj/bw7wQnSgmXAUFQyeYEkfz20S/KkfqQWWwdDB1+4zl3dYTf2pyl7cycxETxmEI5LYbqc77ZGqjR32nNQuO5EE4u4uctQnWA8B/HCr4Aes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmbWQbL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmbWQbL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B68C19423
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762726193;
	bh=nsNIZaVXO347Y06IgKSj4Vse9gheMVXVB4HufuovlK4=;
	h=To:Subject:From:Date:From;
	b=VmbWQbL8Lh1GkLmEiXkOTDumrH+GGd7CwfOWc83mF4D3qMVKfivSnE7EpX9pQXlFW
	 5gCQyWWt3Iq+m6LioqIeNhAgh/UztG3avwBILuFYJXENOk7eMsucNOGwluj1dsXQyI
	 3uPWlqrZffILWgMkWjUr5qF9D8jIqIm3JkYCdclsN7TNGSLqtK28rwsQg+xCYYBm6u
	 TCAahpVG2ZeoZIvWR+s56Y2FL9GkCHseBMsgdPqJhNgU3Drvyw2Vb3LyTDv/lvAELE
	 KdkZ4qcB2Vh3mmqzjT4s69mcpCtE3Df8f3227gHCKjF9Eddcq9d5QQ3Vyo41TKBp5/
	 +atfkJxr+NZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22ECCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272619357.8828.15165185528512077372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc8b5462599f50c2ee24de505a38658a3e048b4070902caf658026f403db169
Date: Sun, 09 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762726193

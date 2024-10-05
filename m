Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4779B20E6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728110754; cv=none; b=iFYWZC8twExr6LUHs68C1TobuDvJm0BntavXuAXiTxR+G+0YekTKLpfdSq8o9lc2+madTEq1MFlum/rPBhQ7XEszHBzzDbsdz2khBmmyZYeZf1+6kvXoXe95bbbt8HKx5l6r1rwVxltOycQSazwDZ+BFJP2Jz15NIGzK+2Ax78w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728110754; c=relaxed/simple;
	bh=BK0Euw2QaP+RgVrnPS3pRn6Xy0KkWJSTzTI8PDZFc3c=;
	h=To:Subject:From:Message-Id:Date; b=HODnSEyv1xTnVeS7GqeM2aSy5su/t3W10/jYRG4gtSomhJ/ud7gw/6ZInvlmq5j7Iw09+flEZWDwwLSVJaTth2o37mFE2VGvcEUVqm0XAHWjLWIsyfZFECL9cKL9qthbEBgfKsHB2VxgQpZ2SBBmXeQQ13a4h0LchF25kmW+K5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0DYzbU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0DYzbU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB409C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728110753;
	bh=BK0Euw2QaP+RgVrnPS3pRn6Xy0KkWJSTzTI8PDZFc3c=;
	h=To:Subject:From:Date:From;
	b=e0DYzbU26NPPRGKcPtPzU0BvKRYccFSkpMpD4VUsJ2zXNvBtYh3Yw3M18ixa3ZQHM
	 cRVcWyg/1eShiRHLkPl6QxSQRwej+TbFAhq32ufmH9oN+ZtiWAWI63TEJcFhPxbLHg
	 LPORaYMar9tLQduTNGdZKsJOZKF3unDSds3ijQaGj5IfrYOlXAokNS+yVA3nZAMc5w
	 ThMy4N+u+DznJcMkEl+P/WzWwVPPvZuJr86vIsDoQ7+uGN+Hj1LZe2CkAHZTk3ZWmq
	 yoAzuVVedP3bYydoXR0+1yQaTyWPSYFP4csGGHYYuMxq8wfig15OhTIk/WBnwI7jfd
	 +qBSK8CNJkqqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE28CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811075369.2420.6181004418547240925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5ef95166c0312cad7deaefb44596c95313227f48cda3312dbb7eea26fc694f
Date: Sat, 05 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728110753

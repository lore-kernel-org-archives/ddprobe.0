Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9984A1D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726621554; cv=none; b=Di0D+C7K7cXkFTsovsJ5OIPq7pLWotc5D7uoq9CX00hZmvUwrr3X4iZgVwikQU0KtzXoUS6YD1Lf+jW/VDexZN3OkNom+AvBK1HPxxh4qvGUClGq5G3XOkLWuyTHl/yz/C9bxCu74y7qEwmCyQj5j2rwVTSsoKQhWe+OBdUcz9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726621554; c=relaxed/simple;
	bh=UNVthLurUBHY0U7ufcJQEcJ0VHMvCTsGMwTFWqCfIN8=;
	h=To:Subject:From:Message-Id:Date; b=dnl/Tl/M+vkjO//CULqwoY3YiydXpbxAwSgUlKYGbA3r19PH+jXlv13ekygPgyK/flQiGQcCoubaapUQSjVgNAZs7B3SpGNRWqIqME8vmgMxzvxA6aro7DpUFHCcwDwuNbXXpvE/zWqzF8lmEsbLHz8pYZoy0doEmjK7mXrc6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqNKLhVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqNKLhVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6910C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726621553;
	bh=UNVthLurUBHY0U7ufcJQEcJ0VHMvCTsGMwTFWqCfIN8=;
	h=To:Subject:From:Date:From;
	b=fqNKLhVMPHXB2156iVQm12KOoja1WEW3bDucmsaLeSPxvel6Xt92COMpEhWsVQewC
	 nANNTYO+IPNCvsoIwIVx+76x9ahbxcgGog+D7EzJeTyBtRNJXfZxtpn/dG0zw38DYp
	 GZxT+X4kLEpK1onwdpcA3GMMzMRt9Wx7M9Au0ZaBZwSaa3hB4LTGDG2cop3iNYV173
	 JptWM86OSaKtZsY0qOWHBpcJdndDtmNbyXD+MK3UHiuQS5Nhs6xO9V+p4ZjeXnIIW8
	 lFrws0w0HVmvRFFXOFI1uC8gLKIwAx8t5peTh7OsVr1jG9TY3xdP/iO5hhLzD42klB
	 9p0prMOZSPOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0802CAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662155361.669.3986936872337363675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cd8c3d1603b14f74c844ab55975075814bed6da8be353f0084e9ec2a88a158
Date: Wed, 18 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726621553

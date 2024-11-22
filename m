Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EAE1509B6
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732258554; cv=none; b=UxcLMwSwkrh/DK5f1ztH2oy+3nMGBOao7IZz1HG6eFSUwzRlM0fxzmFVIQmYavPwH73vLFBg9XL2EijQu50VkbDW5vcQbnRtlwjuEv7Lb5k08sWkTygcmjbEhvQ7ch/zGaEprvavr05v0rAvJS7XWW+g3Miy44OFXDQ696utz00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732258554; c=relaxed/simple;
	bh=vXPnUj51zFUQAUdrXdW4G2bqHxZkJzZ3j6W0b4QG1DU=;
	h=To:Subject:From:Message-Id:Date; b=FbBOQdpC+LtpCdTwYPnV9b3dDPVn8ONSSixXAm3vF3xGlWcvVXWRCdjiAl6bCdZUwFjqE4ItK2ezjl7os6QrW/gxQ5CopBzCkPwJsfit8aPS1HvytGVde2ZiD2G6ax77PmUfOljyDli9vhnRHCXry1jQrwSOgAVXSveE5XtgU/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrziZwwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrziZwwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ADCC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732258553;
	bh=vXPnUj51zFUQAUdrXdW4G2bqHxZkJzZ3j6W0b4QG1DU=;
	h=To:Subject:From:Date:From;
	b=ZrziZwwf4oajDvDbfuUviUWY7ixjjK7hCj6X/BE7Yx33YfVRyyQ3A8/YucwYVhQmN
	 8ho5QuK41qWxh9LsYdDsME4mOcUItubizEy8oLuYngkyqHbVRAo16R7eNT90M0hVAY
	 xbY270gfeYCxiBrZ//8QHSFrolxzyZzS0DgQaig7EtuCl/EgA8parrsHOcjp+sm1sD
	 iJMgnnGuqhuHMfCYVRvJRf2oiqX6lySD7j8GLN/rCafCXrGQ/VGLVItd3cM4wI1dvr
	 ExxZCP0TTR7D+3FqBSeeEzXxmDpriHZ1cTTYTiXGfQFOtTMHyKrEpXrO6ChaXYHEob
	 V391XSRXDR+aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8DEE65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225855363.26075.15657087188019004210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcedf3f6ab2ff618544e9117616fca17ae5e4b508e734c191101e03190a46f6
Date: Fri, 22 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732258553

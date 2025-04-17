Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91B11E5B75
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744870793; cv=none; b=WesyU/nBHUCcOAb89Uiko8pSBUxtMcRu3KGYhmKONvY7UUZ+CsR8u5NiwsvVTqwG1720TNzEiYip5NFHz8XqD4NrNGn5Z3UJO6wHu6NVoLW7ratGDZhd4vUmNKn/wrxrBOOQrp7GvdTEFXaEP/2O7FYYRiqeLDL4A13eP8PZDS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744870793; c=relaxed/simple;
	bh=u3/ygIsVUOr1uJod7uOsz19ZFnzSbtx5evimiLedR88=;
	h=To:Subject:From:Message-Id:Date; b=qKgOfqumCVJC2/kZRdrnY417GUXx5U6W0G8Imcaz8ljyIYXDZNZb3jP3ovTMWZWIviTZiskyGtOYE9GwiPdn2n4PrHfegnqSlPZfvZG7MC1ViCm6Lpb1x7hi7nL8ZocbUwvB0R7m8qa2fVN6xZnlhucEZk/LRRkyLEzRo40HPS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vr5vSsad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vr5vSsad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B874DC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744870793;
	bh=u3/ygIsVUOr1uJod7uOsz19ZFnzSbtx5evimiLedR88=;
	h=To:Subject:From:Date:From;
	b=Vr5vSsad0sLCIwcOPCbQvhnTPrVHAGV/pvoMFyhOQVaKYVj3Qtv7HokpcBPEw5avN
	 rvOIdvJmQRI6aYCFd4aJ15yQj34PXKELBKA2IEtKzm+odN9PEeLhBNKNtUIo+S0097
	 eOkS8gbQMLKZxw4nyY10Fv+zdW+KZyidcyCtnKwHllv/dB9fKl56ogHWFcefQt+ifO
	 AXb7rpIqA8G4Mt6SyHOyjiFHSUNotx9gtz/zO+/xrL/baKToujE7gQtO3Mt8TA3z35
	 Hqsjg1k4V5sl/0ggH8J09ICHhC8E6wbeLaceIE+Ptv84Jd5vZz7m4ZdihvaAACMDB3
	 ktWiK9ZAX611A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A212BC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487079364.12331.1607715979518355279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a910af10d5fb2cef58908f54ed88f9fe41bef61eea599686e0ba93f7fdde84a9
Date: Thu, 17 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744870793

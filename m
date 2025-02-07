Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF87D198E81
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738964754; cv=none; b=dYNNT7YLPWPtKYLp31n6t+vpDlks5tcvT/GHxO5rKeIsjeQV9fpHf5MrACvTNIyP9Vje1LIhpAseQmx8vDSdfdRc/0xc/rxqni04yZAZztbS+Lb709oix/Fu8BBTssYRc9D9qzbMfcs4ELfRtMLVAXplLOB3JHXx7nacZc2XOY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738964754; c=relaxed/simple;
	bh=H4a/RmZAQorZjlvrbt6Zf/ltMoAPgjpPh4TNQ/F1ROo=;
	h=To:Subject:From:Message-Id:Date; b=qP1KC1hWgXUq+hXyQBGG0oaO4dkkBeBygBz4DTkF8o7mkBY+lA84vL3MVbJEn9+WsnokEtdfQIgiTJbuVHyXHNIhgFeyMp11hRqCg4KlMaELz2Z2HcONl9K1oRK9KIsvdzczqveKhXJV1orwoYUGZfyk5ZtDvjXPVCn3VKFOXDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEqXSwly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEqXSwly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B7EC4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738964753;
	bh=H4a/RmZAQorZjlvrbt6Zf/ltMoAPgjpPh4TNQ/F1ROo=;
	h=To:Subject:From:Date:From;
	b=iEqXSwlyegRe5uwNuAk8HKIozFb9BxpuD1ZaTIbB+WuDOXoQI8+YXAnCRbJrxjzn9
	 eyju2P0evMEPj7kleuNkh7xwYjjgqY5gydMFSn8TsR0j9xpiuRMt6aymqtZQmHJJSv
	 m8fLBVx7q/4QI4CoKoTO/QSBwd2BsxM5EJccIe0BFyg7TU5pRFe23L2ps+cbjh9m0U
	 te1bRSi7OX88YUPNsrzLAB+AATISy/KkcQ91/KBvm158EY85Q3KJU1LTKt4aQUR/IJ
	 OLPCJu389qpizMZlq+fQxSHY8rCUKGilNFfpbCfTrB1bJjgooMLL3rfMEWC1xdSQVB
	 RSQSGGb41rg3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2F8C0219D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896475362.14050.9884213739285604190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992031b3075402b2b397443f8c902f27d672269ad4ce269eeb90d60871690dd3
Date: Fri, 07 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738964753

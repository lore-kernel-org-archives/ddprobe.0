Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD612107
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724719554; cv=none; b=uTmrjAVxjFWrwnI9s3d8iDst4ZXBMpPglw9Ps4Sg9XhUIifiiXYaP6ML1V7KqVmTgkOj2wRDDnW+lJSedu+dIWI6CFMpJle0tgtlnKn1Z5Uw5jbAfXEXC9200qerRJW6lN9uJPLtHd2YyHvkVdAeW+LRmGlQajAd0AVTpsFf/mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724719554; c=relaxed/simple;
	bh=RLjQ0M31RfmKUWxKvSLwYQ0iOT5yi4KxW06sh8sVtk8=;
	h=To:Subject:From:Message-Id:Date; b=lcToBIdP6Bmj2H43Rp3a/uyUtfJCJpPgYE7L0Hr3EXOyj0fpsjFiHJ6wEs0P5UcfAxkPC9JDNhyztxpMmzO+YHEKliEisIHFdpCVOXTMfmaCwhLNb9BMbmSqeyzCvXukfqN98hIYeabrKaMjtGRevXXbnLwUJDSNU83iiy+SvEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmklngRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmklngRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7D5C8B7B5
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724719553;
	bh=RLjQ0M31RfmKUWxKvSLwYQ0iOT5yi4KxW06sh8sVtk8=;
	h=To:Subject:From:Date:From;
	b=rmklngRVxTakXt/rRCxaoWo8wdhqmzb+5gzANSMLfwEolM0FaNLsyyWCsO9VO+74s
	 egDXF/qmgMbreJb7GeZKhC7PuF60Xo1+10FbF9iHlBkIAzuD0ZvdkLi1MoWmBJltqV
	 lcYhFFeekVrOydQ/CT0xp5KP7hlgv2OeyVzdJl6ixLZYhS1MOfyLylszgfN6d+wDmu
	 56bwQljEoU7ZoOgZk9/YfC8vmezdokCxyd5RYY4I1TjOB1J3hotKKp6FPZVp7xj/jE
	 g60tUjAOsRGK0r5yCf8rr0h0F1r6SsJUR+6NlD1b+C3VRqrMSHzoioAomZ/OPJ9/U5
	 y8StbXX8JxDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C83C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471955359.11534.4137806320610178943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a1596f0f212b315e19ce1ba27324f51d11d35fe6f776a8818bcb47afbc74ad
Date: Tue, 27 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724719553

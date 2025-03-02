Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525E12033A
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740947936; cv=none; b=Qc9aDOzENQDASZYe1ALJv+i20GBSdm+XgVyHgi9eqNVrKVsksNxkSCJ+/y0nMxbO1K3qvfx8NH7G09v3L0eYoaivgCCe8i359lIZFBKZpJL39vbeQ3swjw5jGxCIwpZ1I+wirTcF8x3GNQ3VWfO9UozzL3I9QHpw5KqzTxLnw7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740947936; c=relaxed/simple;
	bh=KbPD8Cr76Akw/gigRyY/zpmOOTjjtqmEL02mxIPSbZo=;
	h=To:Subject:From:Message-Id:Date; b=NBChrOPZ4g0V0q18/2X9kB1Om39eQIEWB7NGJ5HPvsreyEIfTUnE5YAg7lvta8MK6FF/RNykKhkSXz8VarENGFEVENXFdW6aIKayFOW8h1XrI8YWe9507ZZniiFCq4tgn/VP/GB+D/12rO1HC4taLQGfeqWM/QC3iQYbM7SI7vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr2O4RUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr2O4RUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF32C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740947933;
	bh=KbPD8Cr76Akw/gigRyY/zpmOOTjjtqmEL02mxIPSbZo=;
	h=To:Subject:From:Date:From;
	b=pr2O4RUxGEpuwvx5BlehLR4Q1IWONIsbRnMUBIH5WVz+Gsn+OKWQZcuLAUJ0PX6DJ
	 jy9Uv0nISV9j/jf4v9inH3ZLCC1rR1icZSQStZw3Dm5lTYMERFu1ene956OglcP3Xu
	 l6KdyOj6emmk+VRnEpYXSVdVXOyFLqTQSuOWWIXQmBVN/SR0JEcD1XiUzRPawWDnoy
	 TLR0uEsksY2NK2e6bUpmrcmEMD5c1Ds/RIg4C1ppNFfNoP22JItaef/5QdJBC1A6LH
	 0fg/xCppmer/fmGM9YTZBPcgVTNLgKlj9TaF7138G7kRog7uvw0npHCTZhKmOlR24x
	 iyDXcmxVKBQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FB1C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094793367.6078.6876759349503033056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f934650d1b9a6f8a2dc04a682e72ff96c34efbc9e3224cb590dd21080ce76e52
Date: Sun, 02 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740947933

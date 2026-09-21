Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B6498922
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789998034; cv=none; b=Fqh6r6LsihX6SSTVVdqECKwH7PKcuWPh8gxe6g+rvs3xmEI7gvECceANwSYu7RT5KLDsPiwnWYoCA3e1bd51eIcPqKFPML7HX1SPLmFJjbzpyC+QdJBZd+k21hxPtAtG1PMYifq8ZXcbTPV99xFqTExo5RRLFmIab31DyCL8We4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789998034; c=relaxed/simple;
	bh=G4wAMtbGkIkSadR+R8P19SWuvpAqG8dsMgvvxRCZ9Zk=;
	h=To:Subject:From:Message-Id:Date; b=ZX+a3aX0qpTXIQtWiTT2CPtNDdf1ivetDrF8MCBV/7eIi04nWZqu9QDi4YympMQE2Sw2wx5vWxA7L0SeFxIF6P/xVBnMfFb5ODpxweb+wmvfBYI/CW/2E7IocM2JyCvFbfCikDCJAiKw+FHfUYvI3oemowHPnHO2qwTZK/6o2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBRgbIzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBRgbIzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B4DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789998033;
	bh=G4wAMtbGkIkSadR+R8P19SWuvpAqG8dsMgvvxRCZ9Zk=;
	h=To:Subject:From:Date:From;
	b=oBRgbIzHHcvaNTJWPJbZiHZyyTIaY43S1CR6e2DKLtBaPidB7l10wVik6PamJIIcm
	 yMJV7+jqVdFyXFnhVqCB98Dchp08tNYfdo9jb4UmLuNt8vt2r6KQXvTR3Wb9vXtark
	 yMd01VR7NaoqqM5oyUvGUDoFAqYUUgrly3Amhl92ozlI2dB8hQusY2RP9RdSSIU5vt
	 GIql+LfoRXbNtxQyruTVa3rejFeeswgemzbM3Uu+zBsg6y/zSy2oNS2eBfuRaOjsGJ
	 Kzsfr0FTsrIuaQZQBji8o5ioXbvXj7sImZUYoq874BamfsQRIzTSKp1QVDuE/JtBlk
	 AadrdqHI//T8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC89C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999803369.6482.15354952824965280472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05c7991f13615e7159033b98e00e9ae8746bdd046e1ec3e8e114f0c840dbac0
Date: Mon, 21 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789998033

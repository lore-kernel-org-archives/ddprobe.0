Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044E124C076
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772142894; cv=none; b=IYEcvp2Ho5mV0OJ1xZDGPsV4lzGRkMZq/SQHyE3doMuFP+u8jpoiICqrUgGytjgDivzs6EGUraLvDhizIt6hpeoK5Oxe3LVGTL8NjmO6ZVEkpRiUOQ6tBDIlFEFTJR/a2G1fECkVYMhVcUhYH2i9J7eSetPx53/BCqjhkmUNaKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772142894; c=relaxed/simple;
	bh=PT8deWN6yOfTkzrV1qhOHBPuefGN9XzZ2UFJhr2M2vw=;
	h=To:Subject:From:Message-Id:Date; b=I37H/2Ia9P5FXV3KD9rnQL4AX03cKXWinRukGf1xN3PvEer/v3FgW6B6yK6PV+evxyrJPdadbkDUQcetD6EAc6Wi3I61Qlp7qeXB050R6FpWaoeSLhdcASfPpBk4lW47+dDHckfbbsTLmAaa5uyZuwEtnhvI+2W0GfgmACvIxq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEuR4/TK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEuR4/TK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0876C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772142893;
	bh=PT8deWN6yOfTkzrV1qhOHBPuefGN9XzZ2UFJhr2M2vw=;
	h=To:Subject:From:Date:From;
	b=PEuR4/TKPe6bPLu8r7usx1v40N9yhuQLRq8EvxTejjoLAAPkdJvq5rBGCdsZ9nr9w
	 UZY4avq2fN6iKUj6yRE5O/YKJwaKEZz8VLmPAWWHMcs2IP2DWBlPhtIfzZ458A2G60
	 6zMBs/PpB0u46l33hMRxatO8uMbrvj1VySCRl7fep7HlvzvrAh3JAcs7qgop4XK5iP
	 s/Jc7342brebRZg/20EHGG3vOJpCLXKAzl/ktfhWcten+2XoaWE4gT8BaYD92qFOf3
	 ObnLfTTnAmASj7krTswt1+q1KPqOvKlmLaSNH4mSegcsNtiRFHdLDqa6tGfmt4USWd
	 U9vZhiaOqa65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91310FD9E14
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214289358.1882.14792289533836029493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db54d3105766ce4f69e4d89fda0891de8b7e6062893a3f41e2bf53554a5b8802
Date: Thu, 26 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772142893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2943BBE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738978554; cv=none; b=eUPUkgw+/aepAa3WHim1oTpR5L2ZftltEs/9KICFEdPpBdEm/qUPm/0A3D/8065iaIcUMFx6V4BC0iuO2WLB6Y75KhtdpfjXbwxP0hz3AaobOL1Su5jlzdsrGPMceyIeLiqnMX+TtM/40eKTVCp4khLh0jSv12GBW6/TQo2R2FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738978554; c=relaxed/simple;
	bh=ECJT7cyHCAChNf/IhKxmMtQFbjBVrTsWF4ODprCAd1E=;
	h=To:Subject:From:Message-Id:Date; b=Xn8kwK7vD1D4QmIEfOnedS25/R73OdLC1pNovRf6hgcu3TeRzjsEdjy+ch2pmEveoz99aAddIxxHQZaHIN8kiCHgwjz+RLERF+zosQ7HISxr6Gu/wdXkwLbnWYcUcXwXEm58JxcSFIPBzmLY34HSpnRb4x31uUGnHrl9Rc84wF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gvuk52pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gvuk52pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB11CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738978553;
	bh=ECJT7cyHCAChNf/IhKxmMtQFbjBVrTsWF4ODprCAd1E=;
	h=To:Subject:From:Date:From;
	b=Gvuk52pZ/D7w+r98/hOFGwpls+7RftMxwJm7R6XJ+3fCNjS9N0wbHRRK8HdKRe+EF
	 GFZrDXstAhlIVICkoH6tKawnXYtmzjY5S1yetAZ416JbeNyuzg1mFYIMaY1Nl34zgf
	 UCBbA9LRkaNzOAjQ8rVgdnVUeyaEx3EFtcT7UcUePEmJVAJUJxKjtYJ6a8WXIKVMPd
	 509VCjSJ67J2bzD84dAnm69xci1B+ZMtUMOLl4PbtxKihHGTJVW8yXGdMR+GY3LWDE
	 4OpFY79195vthO5ygnEqr6leCuZZwIsrdm37AILiC6eg7HphvVQ6RUzvdbu5YqpRIL
	 SB1Vlrt7qrKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B70C02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897855364.21640.4697197851312840927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2211a81682e9002c18960c5dba95e7466d65b4fe260eb8b8d1641107038fc7
Date: Sat, 08 Feb 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738978553

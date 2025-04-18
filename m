Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D603277003
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982394; cv=none; b=TsT0ADpM5neyUtaniV5dCeyl696md44WRL+UDpbVLgS6xLeDp+ayIyFqLO47jEO63WeavZSP5JHO86IMbqzQws+cy1Us0kTdPnh4ilgJQVLw/SX/lHHWzE2S3IxfeUhLbtxDXTKEBnmnu9Xb9fe3hL7sXHCdb2ujkW9NDEedSnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982394; c=relaxed/simple;
	bh=wrgA4lc82o8w09wHxbewJWo2wCtk6qSXHzpyoSCLwUg=;
	h=To:Subject:From:Message-Id:Date; b=Jhvb7U3X6ll1PPl+xwWCtmvPviqI4dsszOoDwhZrOa+sTFrggHX9z5ZYGT0uUZ1wAFfWQrWLK/SKeXPzB2oSEGfWoaZAJspDVhHvHYVM6cuKMUaWUNr/P5GDMsYhpspbwHmfDZfi0AxWV2xYP9sVTFLyinzeUTlsodI8KxsLPbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRMSQAJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRMSQAJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE954C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744982393;
	bh=wrgA4lc82o8w09wHxbewJWo2wCtk6qSXHzpyoSCLwUg=;
	h=To:Subject:From:Date:From;
	b=JRMSQAJ5nOBoeaiwSpRJdqZmvfesNhyuLyBINgYSMig4Qbbxe8UPx8W6/oxAImj8d
	 x4YaTDeVSxKCoXPrCZomq/o6VzVYJUNSpeo4NifsrT1ttdFsjKJ53W+Rgdte3R2XWW
	 iEhIvFEM3NivJew9yuimi6O25j/FMth3N+F0eMgjTgdMOPU5ZKHLmE/uH5ELSrI798
	 /PUaHUvn1uh4sBxiMupm8U3kRtI41qLZXOvpAhGx0KvcDU6+DucEjZFjp9Q9/ItGba
	 TN63dZlzoy69k3p+osip+svgEwFTs0Rzh20lh+a3TAqQcNeo5/j2gk3Zam4c8m4jPb
	 rBLt/DfLV3qyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97345C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498239359.28354.6803104473584195642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f729cfae954b6f5bf63d71e7d1eeec0b72bb42813ecb6aa82a77f9df5c4932d
Date: Fri, 18 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744982393

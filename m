Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B9518508A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719411803; cv=none; b=k9pdcRpueXy4/QOA7rqgOB/M1CQHJZD4Ex2CBNGc3EtAtYKs9AxNaInhuI5huZ2l/fY6x4XWpkz6PkIsFXuhQVRplDTkeBEsIaHe8Ze5hJAuFrFk7oQ9Sw+o+d9Lq4oEDVG23WnmJ/GqVTCC5Qy++dPFrPFZnq9WNRFEn5Zvfdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719411803; c=relaxed/simple;
	bh=OWF0C21TXE5/yDlddO/bNv5tDpxNghZaV0+mjK3Ctpw=;
	h=To:Subject:From:Message-Id:Date; b=ovm4/3T0WxHllgwP9fmVps5nXTu6Bz2QZsWDLzx33qADXrvv2w1BM/LCnrFFEOBGf6ISmy0l1CAxo/8z5g70Ac9yFM/gh5gLDoHbXQDv9OHLeaRnQZtO+b1FlqucN0KvCPkKP33Yx6f3fIM5SIoiiwkbn9oVwp75V2ZcVCgCyAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy580rbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy580rbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67A8C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719411802;
	bh=OWF0C21TXE5/yDlddO/bNv5tDpxNghZaV0+mjK3Ctpw=;
	h=To:Subject:From:Date:From;
	b=Vy580rbBJpTEzMJd9tEIDPUfq3oSQo+u1Vcs1QNHXlT4rK/S0j49kKr0YLo2tBN8U
	 Kgc+GCLT4eGm9SpWius2U8iVAMYr8WK/Tl6rgMvdmTsn3gAJ7z1M98C9D1QFPXPqU8
	 yBJsj8Uoxt4MtLqfwZiWKxvKtCj+aFUB5KqusIVZjd0qsNMMln4grEjvMBrslj/ikQ
	 plK5Cnnt8JGxge1ozQf/+mmN2J9W1R+g75CQ0M1cS+bH62d8Vrovg1C7I9l8UmiRJD
	 tlLQ3Eql4giRwrdfbkgJXNt1qPgxd9VSkUnLKtrjUcwA3CjlC4mivNZrxPygbFCsiG
	 Z2uS/gIO38x2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02CDC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941180277.28168.14895282074952597359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8268cb1d627d13d1f458c4fdbc340f40c34546db25b9fe796078dba658abc4c
Date: Wed, 26 Jun 2024 14:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719411802

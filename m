Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E73644A6
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791559834; cv=none; b=CpnWWFJvVYfgj9mzG9yTIH27eVlFroXPKU3IZyhIEAOhbbByFq3al8Oh9mWSsM1KEWF3mYDN00dXJgoi9psWaUDB6VDwX1tnwDkCPBsWqXqFEkV6dD+nlQ12hgdqsCIkg1r4luoOkzU/gYVH1FO1UOv8ffUKPX2599KzFFWFptM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791559834; c=relaxed/simple;
	bh=UUmjW/pxBp2OlFGS2ElIYzZYs5DKfvK+JYYrRkjQo+U=;
	h=To:Subject:From:Message-Id:Date; b=YRBcL3LydzYDvXVzPIyVJv7U8ioqQkHeHoIXuI4XdfNKd2MAloIXxcbVN8hqRCly1oQlprW48bFp3kzhemBZxT3OwkrnTjhqrGziYrNuN68Pyb1//ry5r2V3gblQlRyktOv0v1v+v5zXqydEXkyGnw4gh1b6N3R2orCywjvrLww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NugUKElf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NugUKElf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D507BC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791559833;
	bh=UUmjW/pxBp2OlFGS2ElIYzZYs5DKfvK+JYYrRkjQo+U=;
	h=To:Subject:From:Date:From;
	b=NugUKElfUzWvBBEalZPqN26EBx0xLbHjV4w1D/7JfsM+M2YLeqI/t/Pc+kOrIO8ya
	 TdvWalTv7O034nljRWYTf8PeUBXbsW5x/Wb0v+bEuJhtJm7Fq3m+Dzf13Uqka8t5+l
	 28iVmIj20mPklTg4Gfck906l7exkdi+Kj5GBjliNOjeMDvCtjsw+JXABZR/eozxzlL
	 zWrnDEsLWpWPkOMAgj112C5A+yb+czNiZvSLj9eGLd1GrmQ4jwSrJZ3v2tz/pdJzse
	 Krv2KaNVz6eMTSwpW8dD+IwIeddLr5wU3sy/qu/dVX2uyPpOvBgYHxX0zJWNXt+XkS
	 6XrZvPivGo8mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC07BCA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155983369.16969.11443373192578490565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870b2aa7a451ce023c0f0d3b919aab1e4588fa071524a73a5474fdef5ca09071
Date: Fri, 09 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791559833

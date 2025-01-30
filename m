Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A33019C561
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738236354; cv=none; b=H2uOiA2F+Qj5aQoHIWdMqumd1/i1pTGEZ3g8H5w40OXPftzkum1FLJ5i9bzDqw/Kl0pW7dj45JzZ9Ex832smltCHytlz9zO6vpuWd+OG+Pd1xWGpZBb2Ytf7EQLoewH7U5VY2Dle5P1yDdefkw21mdnulv/i6kOXQ6gSpFFhHdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738236354; c=relaxed/simple;
	bh=rKdv1//kIozJP3YUCUzw4vYdpZ9Y58fBmAM5RXZODqk=;
	h=To:Subject:From:Message-Id:Date; b=if2bUbkh7erd4WsX9lzp/vj6HJBrJezgtIJ9I4RRyxkhRLDTKzPvy1muoGXindvO5VQtFX3bPACyLF207HSGmgYXNwYEtYtWMqsaXN/cYK59x5V9sclZr2XWUv1FCx8WFAkm/rsSustEO/55F71MKUiYlNDN8Ow2dgPF/czyXFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbIDRGW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbIDRGW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0254C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738236353;
	bh=rKdv1//kIozJP3YUCUzw4vYdpZ9Y58fBmAM5RXZODqk=;
	h=To:Subject:From:Date:From;
	b=GbIDRGW+zqg/MNYwRrl4HIIirfLzKwAEzf6l93rtKhfBEAj8EicDRyZty1E8UTCku
	 0bBZjarPvqlDBkUt1WXWJ4tS75RBxZFec1yr/2srfBj1F+tTvQtiMkqYDpFtFefQtU
	 vaaGaQEj33UqaE9W4Cxljo14i6eNFiwJy42kw7Mdz75/mgxoA06HBV5znUeyDAypcT
	 Xxei4j8hPEf7NLCraFeWXxpzwKnnH7kTI939bDqzySEAYt3VTQGSDGVMoz2RWNCgi2
	 W+ahk2BZ05EI2g5VXtIjeuhjqLwATv8dSKiH8ZlHBCgkYLY3U9liAzW1qdXVE85gv4
	 X6Y+uNg1rk0Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A8CC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823635364.28203.13571755211148576135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6e164f9b0cb1689e690cb32077e0885fbc595eb5ab7fd10947c5b181fb27d6
Date: Thu, 30 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738236353

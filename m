Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F00392823
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791625234; cv=none; b=G9flt2hn0sSb69VZCjj1jSgSBF3L+sU6AbB0ceBdFEEvEdk3dcKRgzpQvLX1DPv2aqaJhh93jUqAXc4XeKo4eikvxOTUxuE9Gvgyss+OQuebOt6n5OTgPiGg803b5Zr5DSKOUysJO3oyWRkgfDSUfBw8lgPkO/akFvLzFouIE3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791625234; c=relaxed/simple;
	bh=YqlI82M2kgfITNRwAOh7zCRIOusXK+Pe15zT4/2M3/U=;
	h=To:Subject:From:Message-Id:Date; b=EMtOQFqvMEll+y2G4ZgZAGFJ7F2UiepH63k1DMDTKZvqX7NUR6v9tYXJH9OWgATUhZiNONghNxyQo92bGWcStHWgwCBZIO7lYlVavU+6FJvZOZN645m4ByWmNwmwec/7apeZOwx+WtCRlsYQGbL3KyMfG23XZG0NZibpM7RI/qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpoC2Xzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpoC2Xzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE515C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791625233;
	bh=YqlI82M2kgfITNRwAOh7zCRIOusXK+Pe15zT4/2M3/U=;
	h=To:Subject:From:Date:From;
	b=WpoC2XzxWNQHTyW1osadZG6wXOVe42ix8EDb/7NU+GDzBjCCDxpZkWT+pRXeOfF0A
	 E7r8PQlCdiMQlbQaQU1eQCxPdLSa9nM4oibEG3cNgD7h+ekwHuV0wcJ1vPlAOoXlZn
	 11C3M04XbgdxQnMM6LPBh62Bx2XRrk/U97fvbta2pY1pF9UbJwJ0Hp3wBQNXd87zdf
	 nnXNq0e5whmpJ05Q1kYi5sfatFX42pCUHjl4xi9qKM/ciqeBdu4aa/LeZ95RQTF/Em
	 GXpnCvKh1CUwDztc/2mIqJTIgxja7pgstpoohM1JeRgcvBIh5m36RZxcd3UhYbkwPv
	 Q3rT0Yy/IzBLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B3CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162523368.8778.15541399697162749196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d61815e694ad405c6346d034902dc1f58504f395f6d5a8daa5f8a874642bd8
Date: Sat, 10 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791625233

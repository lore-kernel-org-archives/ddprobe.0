Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0986528751B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774330494; cv=none; b=AZNHwwoaXN1j7M3D97dgezMmBcj//h8oNdm5BPXqLFilQD2KqPDKJFmMlzcqtgCw/cVzzJqhqPdfTOys14LjUZjl7ff7iKPq3S66LqdGf5Uap4oRw4NLN/MGyHNjoCFxDbFyjLb4fktLqVk5ltx2JvpTR0RFUSiEkpSq9a6WtnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774330494; c=relaxed/simple;
	bh=fIm7j0/FrwxNX7IRqlofMbkepYHTzCxfNjtkQ9aMeT0=;
	h=To:Subject:From:Message-Id:Date; b=pJK3+GzFDMOsLwHSeeuz+sts/exdH7CbMedherRHlfSTOobdQJsBLAXmU9YwtAcjOfbR4boBdYppWx4Ij3jyfpkujygP5HkyczDQidVJpp76fu6zvCjGRkgae3GvqjDNTrBzx2ionPrG7dB5xpUFqfe6C3TEKNr3QkmzTq6VrO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvP05NLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvP05NLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F33C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774330493;
	bh=fIm7j0/FrwxNX7IRqlofMbkepYHTzCxfNjtkQ9aMeT0=;
	h=To:Subject:From:Date:From;
	b=NvP05NLQN/9O+x73e6FuqKa/ddTJD2/f9GwjcrVIIdHbtb7zLwhoz46XAhxWbCJdc
	 owv6QqH9tpAaFFVWT4LNyGA3tmVg3BTfrmYrBR7DjcSjwjPsu7bRk/vB3m3y9HxlMn
	 auP6ZHt1bD6EXO3sVDRrmg2IAgxP9gXccBWatN9lMDuiTE23XRhnW2SbruTS+et4st
	 R4EfzPccC3LWscqkkPaqzicr4mt2S80p4hN77fj222QzmF/a6d4OFUisyoqCz/7iyw
	 9LpCDkmXEUiUX1fKeWEOO8vxiMOFJ58cJiCZ9FtaDeWUShDpu6mT1MjRKHNbiDuIB8
	 Qzqm9/7yKyLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED1F532D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433049358.3900.5518122639278638184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56acde1d9c3f04d8ee74871f3ba0f169c7a258d3182241805e4ef2bf83cf29a3
Date: Tue, 24 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774330493

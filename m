Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511A9393DCD
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785754834; cv=none; b=UpcROIs5yvQlzwTz+E4Dfz2pkbrrjnHsWzp2ZGb80rhf4YwNT+eTPJfKXeWnkFBd55LH2/un+dPKKxl5GBnP2LL//9GoPwhwDlkegMcyxME+5l7aoPMFk9V84o13xY+k4/Zwo1TicE+PQb5JBJp+sTZNq5V9qsYQcQgocWFOX1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785754834; c=relaxed/simple;
	bh=M1i8empYRKAmeSyvwQMmbKIq6b4Uunb+b3TYpP9D5uY=;
	h=To:Subject:From:Message-Id:Date; b=XT1vmtINw5Y8i+js2Yt0k7w4DXRHQKut9+lMQjCuT56UilJwGBGLUdDhgefz9pbPbqFuOGGJOUVWGMfqvPM93mpWXJD/CfNB0ECWXHfCh8U+zb/qlEjAaHnouyNx9fQv3WUvn7yiO/nQpf+2PuWJKj+gNM9sZAn46/orY2Aaey8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhBN0pLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhBN0pLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B52C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785754833;
	bh=M1i8empYRKAmeSyvwQMmbKIq6b4Uunb+b3TYpP9D5uY=;
	h=To:Subject:From:Date:From;
	b=dhBN0pLjs+Pm0DDEPBXSqxGo20L5+NMzey9Bws928agUhdiE2FcT0nxnkYX4Iow7L
	 802a7uYjh8Lch5ZfNsDoO1lEdQHjbWM0w4dDWH5EfU9Akgf7Sis0mYP+Aqtk4za6FM
	 Y8wnbe2s06D1RgeUW5adVKSCt8H//65var8mswAfy0YtkgqDNBct2VVyPJT60VG97z
	 VHDTxv7PY9phuKtuSSZFwqhPWFPJGKER9McQifQcJrwicr8pSYd+Sm6iDEMWX3WIgz
	 PMSvTy4abRd2OymtK2vgS8F2j2vJKzcuMpwF+Xccl+ZekCICImaG0IeTRWg1bYTG8b
	 ++NI4wV5/+dvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E4CC55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575483369.31451.8129886722515317179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f06e33fbd01e4241845f54bcef107b5cd89d1e6d3f0f569e393c91f44459bad
Date: Mon, 03 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785754833

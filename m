Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A691448E0
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748723994; cv=none; b=gQ3pm12h1d0/IXhfg/OmD3QFs78WJNPrn4xqY2axzmPZTIvc6plF54Ivu2/xGfcKblKi1xTNU+GGFZnTkvJti9ikrs5Z9T4/T546EytESXB0tKyrl7Thta60m9eE3S1eZ4Ql/eaq578GrWv0ESZ3Ibgu2I4zOM7RlWbsXzDaj3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748723994; c=relaxed/simple;
	bh=cR6z6PGA/z7ZS9YQ1E/6WHKc2lzp4lTGOMx9maBJapw=;
	h=To:Subject:From:Message-Id:Date; b=jU4Wnih9AGBIX+oVi4L7y+R8yBZ3N71ilX23FKhyRb8fDCC9VnCqh3YvxqmkQIRDCloKlcNdRooS/fb9nnO65tRzjs8QyBwZQI8Ruk5QMaKTpU/JEGyN0yGjw3Wjb7xB7VmeKYlzazwOi77ixE1cWEX5AgQJzdsUZEwXmhdvjgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1jCsi0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1jCsi0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4070C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748723993;
	bh=cR6z6PGA/z7ZS9YQ1E/6WHKc2lzp4lTGOMx9maBJapw=;
	h=To:Subject:From:Date:From;
	b=C1jCsi0sNopqb5pRLkgaW0vkpTE4XyysbGZvrCUpDnvMWeZuSRkDGlPUVvn4dSUyi
	 yGqj87Edcek22MSGChc12Gv1MJxwEY4Q80t6Yau8s/yFSfzqkZTsLdc9/cn1h6Wlay
	 SFQvN1ZNh/gTfd9Fo3sKNYI2kjSU3tiYQRJ3rdqZjeOAKNfLzuAmkkd1BIRtM2xIqY
	 ZmT3S084vS23UuyCF25DxIH5txcCpgUqpjbd77LnQOXTfY6XXzIxuO/99D1BmfarOP
	 SRukBBi0sw/7egUx/onkOD2Iu5H60TAcqZszQ1D68GNOKarVXZXFpSK8yCYrixlX1j
	 3mOsJCXsDDjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9569CC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872399357.20790.12155694801544166443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54c9c8651f75bfca91bce23ab8d28c5a20631668c29757659ace9fe061e9d7c
Date: Sat, 31 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748723993

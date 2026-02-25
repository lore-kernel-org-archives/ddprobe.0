Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FF23AE70B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772037894; cv=none; b=IoGZ7MQUmfI0eflq/emftmGMDhhH5dcQ+71dm5EUuNs37UI2nRYP7L/uPnJZK5bWFZhO2Jg63pNVx4C4SapQdBgtjsp79htaUHTuUsD+nZZPr57kJn4TdRv6ycUqMoNi1Bxb/cRxJehk4RTxJiDK9enaoF9+nOzaVLnjk7E3FIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772037894; c=relaxed/simple;
	bh=3DWOltqD9ittioGFBEujot0fDIIFfCxMnLtJKyba+qc=;
	h=To:Subject:From:Message-Id:Date; b=T0aolYZsKRKPoc1kht2ykx6mFJPqO1seMJOxtrVQjaEWZBTSzqUGXB+SrEtz/PjaQJ8TwWJO06LrG2nxp38BK++TCUWXNtVXvrbY+lPAabcVYgjdnKShZW38keyPKGYYyVljEVaip7A6uQADV2/SRUVP2WMF9SeTACr58qqr+ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw6Z7oGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw6Z7oGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772037893;
	bh=3DWOltqD9ittioGFBEujot0fDIIFfCxMnLtJKyba+qc=;
	h=To:Subject:From:Date:From;
	b=Rw6Z7oGwERriTyuYRrVP43GkvPfEiRPDxoTA5V3gXJhxgMFWn9h4YzDw1ulmHvdBd
	 LND9+40wfjdUxwDX9FB/+348yZdFWWBZdSN+Y/uhBob1nKSVxGb6tzz5bN62FKu2R1
	 P6v+k07IjevV+UHu6ZOD8nzHn9MXfXe9vj09p4+sT+9NMZ3QAdB8P/uQu2OQl/qa1m
	 Uwvc1/WGrpc+BJZyFszuXhDSDDaIT8RONEeFlSEXEZr2IoMOgBbDS/XG73ESVGPQ0J
	 YH4EyAS77ILfMaJaomhZ3o2lnVfm1JD4TswwfzUbaynwKHPC/LZhULNkzb2F+FD2N/
	 7YGPgibEbduUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9811AFD376A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203789361.20033.11593938365695109432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301ce7997d5d5854f7572a0b51144fe7c418cb5bbd1e6b7c9b49792b5996e246
Date: Wed, 25 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772037893

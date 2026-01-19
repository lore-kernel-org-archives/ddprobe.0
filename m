Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1452030FC09
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824834; cv=none; b=uUPCGjeKvXTqrJGqqAUnVXVO3zRjvLBO1n5Z15/hDImLzwpblNFZl0VLAOV2ed9k01Lt2m9f/i8KI+CmSdrVNbUDlVRemxwm8HQd4oFZBtwXNvgi60gi3chz9MyufA3j9UADVP6byeUY5Z8hUY7s1WraqyaBhgL5MUbBJNcsG9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824834; c=relaxed/simple;
	bh=tPR4+8ceaoPuEtrZqpw+1lvoNV4W3Avsl7UERzEGw3I=;
	h=To:Subject:From:Message-Id:Date; b=EVQC2gMOn6NpabBuDzOaeoH4dyhFQwmM3LPvYH4gOWlgOLJnj1J9r8jSSzODiD7FOv7q+LIuPG9o6b/qOpW2Zk9aZehmH6ClWAUgiTdHKaHa/m99BV3iHV/8oSx777jMGkdAM7H9MuMqKPZ20zMRLGWP3KcC/YhapUDrRxsMWAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgjR3VqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgjR3VqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768824833;
	bh=tPR4+8ceaoPuEtrZqpw+1lvoNV4W3Avsl7UERzEGw3I=;
	h=To:Subject:From:Date:From;
	b=RgjR3VqUp0ANCCuULi68IE9nVfuJhK3xvQiFkeiIqX44BatpOrI71TzyqD76A7kA7
	 EW03+eeKsH8xI/afT6ME+LPd9eWN4GWkDgLWzoh1WzW2bxYsWL8heF/jl3KwBpIrVA
	 GBH8GtKxaYaTTJPvE2q8fz0DQL3HZQwx2B/ovhQqY4paQ4lSWDaUt91Z6UzbjyNOZy
	 C34xG5TyybEkgeWMTrs9eEKzDe2wMAD0n3XILL06+F8OSyAPE9sRBBQSHdMjNP9r6t
	 /yTWvo20kmTO6VsWJq1njFyA2recY1vVcfA8Puwq3QqCfKJmgTiu9KqoF/B6Djdj14
	 Rsjorlu6QiPeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F48CCF2EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882483358.28815.199601750611992115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bf4375cc83e9723e38ec6d1457bc3a7aeec9b9b5e762ba3202033da69c2b31
Date: Mon, 19 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768824833

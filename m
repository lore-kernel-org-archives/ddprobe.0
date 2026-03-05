Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81B93A7831
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772721293; cv=none; b=KAVaNgynsC3rZI/j8BaU4B+JLvuUCN/1bx/RToV0mGG7nRMyTszpcpOREjeGQvQPt9PBXEKcMbsXaGca6wVbsV0/tnxkMvryrht0v1HTe+QwqYpSLiLHCIRKosIIWF0LiWBN4KOhpIY9vlnHLrLyD1Bp+Oe914b9B87yxmZWLvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772721293; c=relaxed/simple;
	bh=tePXuiWydiUMKJ4llYIkl1e/QnNvE+8ucfaS3iapw9k=;
	h=To:Subject:From:Message-Id:Date; b=YrCiXj5GsVryFKs5zjdEdcZ9s+dHf+wMy3QcMWDlv6MeCy/TYKA6DMZwuiUw/dMxHSd4nXVBcReXxoYIlbKNuUilzn2zYdcPSUH9VSZV4nP3/fuKePDjUNa3DJ45ScFrG9sozfFTCs2hYLodPcF9ii83qXhOnAZ9/NMc2mV4Y6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVoMhMyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVoMhMyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3177C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772721293;
	bh=tePXuiWydiUMKJ4llYIkl1e/QnNvE+8ucfaS3iapw9k=;
	h=To:Subject:From:Date:From;
	b=kVoMhMyoEdz5hfnv9MLogW7bfY1sfN/IMVSwQRrKdxicbWlGS+2I/mU9XGs9fjVvy
	 tMQLgth0ZGR6Voybxt4wSOMbLh7ZO+e/oTT+P7ZM+a82m4jUlEja+1l4daWV6/fRv/
	 Ih4fH20DNP3kPGl8Zw++5eO1XTHYCMV5iIazD95W5W7qUv7fAuUmvFHroLQHrBwPC7
	 83RF6D1j5B4fn7DDZSc4W4JngN3Ayx+dux75iZ8DZORyaf4bXRpBDsEIhtUMAJrBgM
	 4VRqN2i4DCCAzOTHBshTVuykHYFN7hxE74sbJOvc6vZ4Kwxup8j2dzaOjuOwGT6y/M
	 Mx4IJ3gbhTwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92258F33A74
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272129358.15207.16367813379514964694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa74b02e5fcf9557dba3fe281f69f56e7447c821f5af0f3f01933b6c857016b
Date: Thu, 05 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772721293

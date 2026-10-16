Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCA23B6C13
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792192834; cv=none; b=DOfsFVoYezRuPgnAqrBD4X9XpXDS3iZq/QYYtcGNtpE/VMhKeIT2uF3rkcTH4LnM55IGgf6g7rM/hwms0Z9YhjMt6XNQHfx4bILTRKcLd+r7P7EpJFtI0MOwBw4w2PdMk0WSN2lCm5/xEvGW0BfTqTksDAIcq4frRAIje0aOj+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792192834; c=relaxed/simple;
	bh=DGk8EAWeqXk+c8ci7Rnv4M6ZWbyQ2RBvahCWRipoQg8=;
	h=To:Subject:From:Message-Id:Date; b=MgPrAfDl3SNECobwYlKzozUebZQApB24PKqJaGAUc5etN+9/3JKNsCzj+xXFs4QULWilx+Upl/UTaWi+7voi1VpLZqTho8FpyUJiS84IPingEr55el9VgTcQOptu/PES0+GTWi5uqUNkSH3ET7iaegEGXevjdrWMHKYPBwJSn3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrsKRXy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrsKRXy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52CFC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792192833;
	bh=DGk8EAWeqXk+c8ci7Rnv4M6ZWbyQ2RBvahCWRipoQg8=;
	h=To:Subject:From:Date:From;
	b=VrsKRXy5ynp7wLRWkL09ekRdEV5rzrBl0RKf8U1HkuMFX0owu1wzsbI/p3Zwnq8W0
	 FAM23KifBXM/DevohHKP4ihPFOeP1NHB3hzwGeLqG81vFL+xkQCeiN6uSStUr4Fsyh
	 BtOSxP0Mc1aAZP1NcFsI9cIlkVxkJ9YoiiKqJFd0sV8c4Pfy0B/bEtk9gluhGBldIE
	 xZrKLgjY0c09AQIjJ4847iV4V/74soPSIzw7zMVXianwZSgynN/5RVfB4pkqz5rUGV
	 ZPHIppIVQZj6Y7UuUdsKBqk4ujCSEX+T+09oPp9FgZ4rvha3C06v1SAJs9aXRa/2Nr
	 qF0q/Pmy2ByJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA09CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219283369.19311.7779711934076889200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5108f3d11aae18d2d5c29d2e52480e085b1d4d13066c112ddf5707f1880d0d04
Date: Fri, 16 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792192833

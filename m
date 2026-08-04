Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5584037F01A
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785803434; cv=none; b=Vqf3vGGfgSEmZuolfmQ4BTtansMXHmOAz9LWr0/xsPuledvRT0E0djiTnsVSnllzJL2qyDa10g1FzJn62RZiWDnDGZqEsIo8s01FkCb6Y2dZS0uPAxhfBxTDKE+1vfIWHYgE0uzRgu87ZmddoTE5JeuOeOQXStBClrIhZc8mwGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785803434; c=relaxed/simple;
	bh=W7z6F+OfminDwNp25/rKWAG1rA3neYLeqBde0ttdbwo=;
	h=To:Subject:From:Message-Id:Date; b=sPSzbqJNAx4+qnu86Vhb8C2XIILRHMhmFlD4HmDBvJ7kt13DIytv7f2PFnKL6P6X9h9edVWxCq1l+ZixVn3ZSq5eK2/+j2h7H2v69PvXTmRDG5ghqaXW0zDv6NHWEaC+5nrTLlLTa3zZadityO3bfEad/WT6s92kF2byvPJK+Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7hyU4Tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7hyU4Tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22C0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785803433;
	bh=W7z6F+OfminDwNp25/rKWAG1rA3neYLeqBde0ttdbwo=;
	h=To:Subject:From:Date:From;
	b=n7hyU4TkfYwi3DgwW/YeiYLj/1Hyzriqr1lZHZ8cMNDqnali6l0Erq5sn7vxSVI5N
	 dFaVKdAlsBCmmToVU9fo084O5+OXR5+iQsgIK2LB6poxDTvhcrceiGNqOUx9R1qWsS
	 PzlXPSXnFnkyJwKSU6qp2UN+GM3Yl04dqleiKEPrznpA9alKxOKofXMX7DDgyA1cUF
	 iZ2y2m86lDDubNBSdwNo7vMtff55qxzzt7gZRg3esWoTWSNjHH0PxxwfxTQrj88Szh
	 KpL9gqTPglvTRkby/YAp1CPTHUQ3ffGh+BCrUiOOYSlOQ97remcrtJA1lCxRrTLWJ1
	 xYPdjD1otOiEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC89BC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580343369.25412.12991841507974317565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf56431b3842adc1a968df24c4f3f0b837b7abe4489c4d142e9979c12d9dbe1
Date: Tue, 04 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785803433

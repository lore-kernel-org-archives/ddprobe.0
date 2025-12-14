Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243C4DF6C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765680174; cv=none; b=qOa/qi7Ji1g3Fgo/bOZMdwnatMZPBso4JYQuhQK1tnAnCzWoILb8P9TD07sINzb7QxxWkaSoIyWSBPIaKEre7yItSpa/KuMuMcJyCoR5IXX5eJo3JtaytVYoRO/rnbCINewwz0XjM+jexMQCgpnV8P1iP6H1qDBN5caMEvTeP5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765680174; c=relaxed/simple;
	bh=1qcDy8XL6nh8ese0FAjecyvUP6pPfSXxgicfcAutqeo=;
	h=To:Subject:From:Message-Id:Date; b=F7ei+5ZTpJvQ9E60SZTwGu2xKJu9SdM3O+QiVBTL8mR21DvWCfy/cKfsUp8AX0Ur+bDp1MeBxeaFI0ViOdICbKKDnppvsgyfa0QlhjLZ0lrinHreQDZj/RpqE5bLPJEF89DmeKRrrlEEFwdqeq0xOl3BSfy0nYwEVTYnlairjuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfQYLhE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfQYLhE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7183C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765680173;
	bh=1qcDy8XL6nh8ese0FAjecyvUP6pPfSXxgicfcAutqeo=;
	h=To:Subject:From:Date:From;
	b=XfQYLhE8ODvOpjWUuL/l4moXjvliU2SV9Hijdrvq9gbgU/rkIRBOCTyIU/blB7wtQ
	 Oc9FG/rli4S20+MZSHYULvVUzWAtV+1qQsbdKqXMC0PN/KQDgnRnf7+hwOuO93R9hZ
	 BWgT8W9WoMnSHBpTtnoyVv16593QZdpfUMxl/bZXCBOw01Jd13ZndQUXSDd2AtGUVf
	 BUsjiuQwge/dbeKvE0DFQSVDw7X/IW4l1gX1IDxgeImuuaN1lJ/S4vGU9iwd99TQcm
	 u436AqtrL1gZkyDbdW8inyIdKoZ4blC2EQq3ooGWIwBLN6FTguL6v0jnnEDfYDsnML
	 PhjJclaeYguGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93220D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568017358.9560.16142358300440049531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787ee4220d1f02ed576d31a7a5579a137305926036bbdc9d694e16e578a58cb6
Date: Sun, 14 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765680173

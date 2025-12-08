Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B231DA60D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765203774; cv=none; b=OrWMIZu3Gii+r9YXjIfE63TyB7W02hTYMfZ4kqA0I5eRuKMJ+jt3RKke7j8Xp9VpL8vlXst7pCXiKanHm7AN1670VhFPVkw7g+fGrty8HBzaqJVsJU7cJoPxrM92YPQTxlTiIFBzhSzjU+YIeiyK+8lJERb4kaHeaz2OdFsCxL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765203774; c=relaxed/simple;
	bh=izrYalP4LV++Uo6993arCITmlIcdo74S51f5F8rC39o=;
	h=To:Subject:From:Message-Id:Date; b=jYyJWJALsTQWIbIAyfU/OdYuiMzxtFvlIqefB4Ogw7/GDktq86AkCUSAZQ63seN5aQlIF5guRcrHf+TsiDBDj+rJxtY8DyreeN8kkfat/ZetQgfq9zhmNx4FlVZVFULbeNG67eiv4BGzIOh1oD0DJU3TKuaFtK9X66vAiFULhfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umnClrR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umnClrR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765203773;
	bh=izrYalP4LV++Uo6993arCITmlIcdo74S51f5F8rC39o=;
	h=To:Subject:From:Date:From;
	b=umnClrR72CaJ83xzoOKBwYI9X/hc88QQezBqZmxaJuwmMtm4Du3bI21+wW5MHONiV
	 EG61qX4GIdzqsdprqE//6GQrDfxsVIL7hyVF5iS4hz+xBGAbbFt6rkQcmvHuPVMuTK
	 8TM84Y+8QftPMxU0y4dYAW3cHC6Xm8YMN9OABXuQK1Huunuc0jFlO6E1FtvMqwsL7Z
	 qBTaAeSgc5fukHtyw8IiOlISvG27prL4DXYbrFXYDx19hxaNcpPTddJpEPr7c2CnfN
	 GcrzdGx8UIdwG5y8xZzjBrwY0jYMtJXYZ9WhxIABeF1pyZagKgE7LOOwcZSvQiLxQ5
	 17f9+2hr51kjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028AD3B7F3
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520377358.27163.56554646528470874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6cd4253ad37fac972da8ef6ae0a3d2ef9a0319c22d387202d824da136bd4649
Date: Mon, 08 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765203773

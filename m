Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948F31D61B7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754023194; cv=none; b=bgkZ72N65kW/74zFyjZtsfb9/YkccKfRahlxwNRASq01N1JbQKiaveAMPBgmACd76AibBsyjGzmtMVnIh58lnvogu/K64rDsGkQKrrtrSy5S+wbrb0tg9jfjSfJb0Ts4sNoC/LuaiSRk/me73trqtCl3t/W52UmEiX9xoOqBxsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754023194; c=relaxed/simple;
	bh=0hN41Bs5MPJexjYbFZKwZ75vWqd0vh+JibX3AejTG/k=;
	h=To:Subject:From:Message-Id:Date; b=sfYbqdvhSk/HcY3FsRPp9rE75hMaVeDT2bDvMXgsILCCkBNU4hOubfZ30A0maiTo7nKaEueBOVxS8IwqYbxMD4uO2lDInx+6E7041fFeMt/2/srCAMYKjaHoy4a1FftrCz5HbsqSkOL6eo18SgJtj4n8ANLFU+sz8V5ttD1K7k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWNC+EVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWNC+EVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F55C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754023193;
	bh=0hN41Bs5MPJexjYbFZKwZ75vWqd0vh+JibX3AejTG/k=;
	h=To:Subject:From:Date:From;
	b=VWNC+EVtGyA7L5SGKlgChaAapUMncSJrlzDPDZs/r67IDS/1uxquOAm8C3OrHO27b
	 CC4LEeH7EsfbZ8F+I/shGmT0f/ToxRa6piPNJPTE/3UOvX1cisq2XLtHc5gbVCrwm8
	 3T8jNDO44tXqCpFsB5VLGUNAXRwaW7yrqDTSdpBvhArw0sc3adW3ZYmlj3T2asuRK/
	 Ja2ueGFZBVS4d9jUCzHBndg8V1bGr++ECy5syZZhvZjHXlBvMZeQF/Gsm1P9ii/LSI
	 oZ6N6wBSGK8VN2fgaJI5qMo4/Z5AfEDoGXLjdMQOq5Ze/xfk38QCfbvgrYhArIkihR
	 Q403Y+JiJG6Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130DC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402319357.29115.9633682901108263624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0686f83314bef2aa582f3f9c652541be3bfcf7befb773e8fe561c7e39f8afd9
Date: Fri, 01 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754023193

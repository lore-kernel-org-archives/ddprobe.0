Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC2B2DAFC1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764604374; cv=none; b=SIbymcrY2R4oigbT3+4nk9AkF67JeX8RTbGlZ/rKSDNkESQ9cIjv4dDy9bJk1L2QzVAKzfNDVArG1wGeyaB9PkW60oLI4OqD8Wt4x+lvlibDHZqQRohFVIe5oJQkL5bh5iXK09jXL5AvDkrf6yPlt93p3rVPhbNQK5egRxV6g24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764604374; c=relaxed/simple;
	bh=hZLSzfjlSc7XtKenXgy+avRaYd1ookIVzKsseaGPFsA=;
	h=To:Subject:From:Message-Id:Date; b=S0TpB0SNMP6z4+wPRccOzPGNCpQtBnJUEfVKC4iyFKhli6KtCOlChjy3np5A9OGXNRWaS/RNk2NJUPrcBNtIElsoH/KJ6ieNE3tk8l4fq2NdOUSc0tKVqdLo6LkJoEMMek93i69zWfsfmUb7bjHr6C6icvJCnbyv+C7uIh1z/Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmaDvpUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmaDvpUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764604373;
	bh=hZLSzfjlSc7XtKenXgy+avRaYd1ookIVzKsseaGPFsA=;
	h=To:Subject:From:Date:From;
	b=QmaDvpUmD2kecL8e/FeX1GSVJurj4Ibjl34nLN+MrJT6xQJ21R0v90eu3qCwxcj8o
	 xSBX0xsP+7yohL2yTuudMkcqXJO3LnzmDKEGLcdOSVHKqkrIxbIEivPQbset99p2k9
	 wiAGl74BbHczpZ4hsB52ejqygmwzMAHF+YySxqY5aK3HRDxDJHzbRu5hCXAOo1WD6t
	 eKPViyF3b4V57xVw74IwOoxHjN/ku9aC2vsCag6VenmYEVTQ5p+MO5qh7MgfkHwGj0
	 0ipgpN4C71P7AVcib2Qom3rERllbImbOmVzxJk/hsr1/pOLdI0XVR4cqFADmQ4H7lX
	 XEKz5KvEJHLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B0D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460437358.31871.8077095007801367022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55bec8664ab24703986918b5543859dd22838d9aa52b35c80cbf1bdbbd9b3dcc
Date: Mon, 01 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764604373

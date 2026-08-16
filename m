Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D05822A4E9
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786889434; cv=none; b=lVtnWx6+5eGCsp1ZwEJTSfVNBnMyxghR1VkmixH7JSQAuiLJBCkR4v9IEV1pEovZHbSSZXUzJv4vnECT20/iDUnYG2o6msahdivKwTyEVCqDN4zqqCKMUYx41TDbAIFzBMJVEfUPlfVdF7GwZ8Q9K8Bm0TAYwpXP9GmWsXEF/wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786889434; c=relaxed/simple;
	bh=Si8JF55OkKmdy3EoTzWOt1NEg3C1BS4Owtqtjf5SH5s=;
	h=To:Subject:From:Message-Id:Date; b=bbATvJ40WroCbr2/Nxy/jhtLCvIBLDpG63xSKR2MpOlFbDuIG/FBhKwkJP4vNbqOBf6dDbPXbyD/2RUOS2lzjU3ydf1v3kc1UX5Y+NR1T9xRgbd0qGerdeEED0KaMLa1ghvyNnct1qrizsD8+S2FMJXHrVRh0lUGoz/uARiaJqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l01XfYvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l01XfYvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7962C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786889433;
	bh=Si8JF55OkKmdy3EoTzWOt1NEg3C1BS4Owtqtjf5SH5s=;
	h=To:Subject:From:Date:From;
	b=l01XfYvcTJfWJGWxyA1zi3J9qFCM1G2grTfGHeHSsA4xQSDQ1jytkJs4Stt9Yapvo
	 tORWYQ/I/sg3wdBc35qIEFVhYlAGdjPVx2S5rDiJ4HGt1lmtDn1kCKJTLYZc94S3l7
	 DwNOwyBV2q/1Ntd18dQEJk91Rzja1HlsGioZdkEp8VcjCcZSLQrsSKCFpaFDJJGxnK
	 ecsY9sSJ14qOguRACBa2bE2qh+503r4BkFranHYFw0e4IO/F4gNYM+D6p+a9FUyOMD
	 TTZrSEJ5Ot31EPThybehyalF3pP81yQZENMGOavxmzDhkADeVhqxcWZGorW9SJiYMP
	 B10jhDOI7WGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2992C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688943369.21403.10509699412798337798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55578f90b934f160c9445004097dea715b721933d285e19b198adfc5198a43a9
Date: Sun, 16 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786889433

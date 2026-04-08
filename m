Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237FE3A1698
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775636734; cv=none; b=PGzA7si05eynOWlJ1QwTgJ8uO61sKyHK0BWlL/kwr5/l01flhgb6WVqnufuEs8YK/cUlJBIaNaMyxlD1I8mNigv4QkqrJAY+kc+ZKFAGRwG0a8ljdpHb0Pm9SORX7ADUJKdfdF/6955bvUMrIEN5kiW9+NiCllwXzEZVi0Zdriw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775636734; c=relaxed/simple;
	bh=3+xd9xHwbJ1NH3L/OB40oimwmMhV+Q/NCjbcHx4+mE0=;
	h=To:Subject:From:Message-Id:Date; b=B3WrFGv7KA/ah2LOJV2iZP1gUdg/PNgc+CrsvPVV6FAZBwU3YmbTwVEMgU+AYPsxWupZEu/O+qOxCPY12N9zs3B32NJyrr1PUcGCxgJ5DtisDCUa8N3WbFuLqPTmG8S1fp/EMiNK29c+E1nsNCI3vVEp4oZlzOVynlUk6gAMsJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwOb4CtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwOb4CtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB88C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775636733;
	bh=3+xd9xHwbJ1NH3L/OB40oimwmMhV+Q/NCjbcHx4+mE0=;
	h=To:Subject:From:Date:From;
	b=lwOb4CtAtDPDfjtxDOR3MBjK9iHZS50q4AMoNJaxXkAb3EJRlABgEDoTl3AIaFuo9
	 4k0kRWBU45mW/YO+qbctJP9DDV/li460KYmrROz0n7simNGUAV3S6GXENxKagKsFZf
	 gNq1+GEKZ3gTtybSXM31rx/LFPukc8Cx0zgEwKtNNpwhcYZoianERvH1ppT8M+Fx/z
	 vuS9uiETqO2S8upOn4QLSTWkru+W6PCBp2NL2dWmaKzwAiYwkrnf2KWOL3GafGxsQn
	 XajYfTEtygbyYXQULl2M6XIG9mL15uaTtwtxRskubI8CTLcrNuxIeIASCYysGMR5Ka
	 /CgcOcKAsY5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1A0FD5F92
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563673370.2958.930561513136883076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee1d169d09433da33f32c92079ec1a9127d4bcc6d378af26c96932b6152fb8a
Date: Wed, 08 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775636733

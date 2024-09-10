Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC3B179953
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725951354; cv=none; b=Phmbja2PaLC66TdNZMALCNZ1XrDUbxV5OCGkKdV/N+FThEEPpdaCy2hUa0LxtvdPtm4LbSERsZa216szSLwQAzlgfwqtfQxvw1/kaMQG7JIkhQGXHdJt/9cLde9YGM7V9jMOwRW5UJs92ni8xi/sUtAkGyNJZQHbKb3IvYsMfCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725951354; c=relaxed/simple;
	bh=KVssbXjNoQ6Of8RyTWbV145glyZVSFIFe0pDlQRua8k=;
	h=To:Subject:From:Message-Id:Date; b=WDPR9vy9yOrC8G2dUQqEJsddxMIdOxf5oMvWj79Zcfpe8M3fmsxLB1XcTwq7ev+Q+8alFDXMFwd1ViqaUP6kjb3HcUySweS4F16Dcdi5Fnfcc7IK/n5/n7ZcHSNAebD6EJpqsV/7Drw8dMBTgdO74EY1yTYQr0tcDAq/Qkpu96I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHECsr8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHECsr8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DFDC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725951353;
	bh=KVssbXjNoQ6Of8RyTWbV145glyZVSFIFe0pDlQRua8k=;
	h=To:Subject:From:Date:From;
	b=mHECsr8L57WGUMNZPsJVFaovxgLx8Ax7QokCuwnb9sWVP8PijGnoDe4nylIh0t2Sf
	 Cuc0xfMuBtqUWGAg1sXYDSEUemym2058lJMVVG+Z0F3VqEy4N5oswoaTFw2eYxBONW
	 NXPucE56+Lggq6uZPOsOl8Gmq+Bx78/DifhxSiee69S4XyDpbP6iKYDaZfq0usfl6n
	 iPff7q8QsD0seUOTBeZVQ4UQJkN9/GKEjpqak/b4c7wmxxpPOyBFGQO/S2tHrSHMly
	 u5vsQ1NwUBT1xD5ppRDD2M1F80mX/oNZAhVIXnkgdNUKl7HUaalcWTScxhgDBcKG6/
	 GlvPADH9AC7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9C0ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595135361.4804.16060735397759775045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89cf1813a26098eb3bf8d1525ddbf5636e7f7dc277d4a97af0928a0960ccd6e6
Date: Tue, 10 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725951353

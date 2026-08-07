Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF92347BA9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786066236; cv=none; b=L6iiL3NnisA/OoUO4ooxtmNWV2jox08SJtbKs28WmJoKykJRbY8srDkTi16GDnTMRH3S+vyLYD+0WanEvJg1ediQ8VS7iAUakOJoHQN1g5Aj/09g4i4NBStkFzzFW9k+ibD9stDrUeBat/gE4IKTJ/D9/Iy/dbeAPwR+Sid+5zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786066236; c=relaxed/simple;
	bh=COMYcgouOGASqOJSqBL5oZ4N7sW6vXaUTtIW65TSudU=;
	h=To:Subject:From:Message-Id:Date; b=C7K9rGxq+d/OpRmmOuDeJTmSNKtFl7sFTy8vWS3LOI0XP/MypoPUdMwq2vLR1gUqF22fCTDACBN+X1Vq1hdpzj21XRTXkmZ66E+hPLrWreomSftIP3srzgAiRQrODAwqsRdppzsqrJJV6ElJrEKCQ5CCuwSTilfDLdUb2slKDTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrzBJ3pN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrzBJ3pN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72A4C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786066233;
	bh=COMYcgouOGASqOJSqBL5oZ4N7sW6vXaUTtIW65TSudU=;
	h=To:Subject:From:Date:From;
	b=NrzBJ3pNyiCu+5avjjimpf0EBtVr4WAKxgtQL75+lvFP3CIFTrLzkP9pP62XHTQPs
	 GhhoDvkc/gDjsiBGtFeg3o2xIt/cVruWboIZ+W9Zz1QBCb6qjvEEi9o7w/7uadebJs
	 Qw7R+RXm7qesBwJK1n7F3Z1dwg23Wi3BTnFb0n2rco3zcn3+FE3Lf2T8UX9FWqLAhb
	 9BnEoUPIuZG/Dqhp0MQZQHHk7i7UyS5R0YYfMT2CcmQ4pTkik66bnZthaUKUARySMw
	 /gFBIr58aF3iim6Yq3C6GlVPylQMF3bV1ch6j+gReA/uSBloKSdURvvJfyJBArKYNU
	 HZ7tDShFl7JjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32FFC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606623369.14921.16188479061615110398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70893342064531f23524a30a3d51bd267d67209e11f8b740a56c995e7b87c04
Date: Fri, 07 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786066233

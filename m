Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5442FFDFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786421434; cv=none; b=d/mRGbKxHx+vCH1XH0gRoG6445ha1jWEG/q+2CPdqSU8JxUmobQoHVrCR97fx7Lkh52cbOUjNBicEefJfCjc0Mcpve4hkssgeTOplvcQu/pmEfEX8H+EF/UohXz3OsZ1h9JQbgqvGLsuek0r1uLeUUhCWHFpL84/RWVyYhi+Rlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786421434; c=relaxed/simple;
	bh=JzgmnZoWCi+vMdjsFjGQ3aSuJzgY+4TH2XI7ijONEq4=;
	h=To:Subject:From:Message-Id:Date; b=eu/4jU+wri/p8lOGSr6KaZ1NF0Km2HUzf0VEm1jTEheEzzvqhuGCoIEJm6vTEVUPdmxDxqteO7P6RuviPq0iStYJOLPReE8PsaXkeCEQEHreLq7yHlbY7BTRMt73KtqLBspFvvYFae+TfutWYOwZSZK/+mulZx84d0Xb+XSNJNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcyDrkqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcyDrkqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA187C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786421433;
	bh=JzgmnZoWCi+vMdjsFjGQ3aSuJzgY+4TH2XI7ijONEq4=;
	h=To:Subject:From:Date:From;
	b=tcyDrkqXFo+ta8nQRPsrzYtk20UQGKaYhna+YNQRluePaSD8EZYc8wxYVLPKb6kPQ
	 buYJ3TO01LZTWwPjbDYSNkuGaJF68wXsl4QeYAN+T4Tp+auS5HUTSIOKfl9aHkqC2z
	 qBGDMR1vDwmJgPmc05+VMf7S/hKWyIfP7fddC93qxJRDgMd1lm66q6phU+2mwKiTje
	 knNLsA929LhV4YISqvGxBoF58HLnrzVPrnUgGkUTziUCMPr89MEAbf57oLTeiOA2U2
	 fmIPkexDOJxuF7lRK3MY8vUnhJ+3FIfwHL2CdiZuxvpP2331Xpbuyj75D/1hEpfJPP
	 0GvgGjgj2L4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DBDC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642143368.19107.7117193740070828891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b373969bef28ab6fe68cf771f3875cc139de2d5071911ad33d147388c777e2db
Date: Tue, 11 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786421433

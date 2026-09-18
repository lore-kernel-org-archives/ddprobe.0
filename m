Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE93D4121
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789760434; cv=none; b=arl+UFwGlr5o8ygB1rmpto8OmwwU+7m/w5E5yRON11TcHpO/gSLpmDETY1xFuH8EQ5Keos+sGGypTXDQo3tcErirFGEPy2j5IVFynIdUX3KzK9Ncx5Turo18SvGv3T21VwS4rbNCpW/fJDSIctgnUSzcT1pJeTsDW4FEifqXnO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789760434; c=relaxed/simple;
	bh=HGaRwFW7l8sZbU8ribeZNi3MIP/Uhljfiw26bGTytoY=;
	h=To:Subject:From:Message-Id:Date; b=Q5OSMqAEHTQFXccOTpZn6WBlSCg+3ZTNjdVCTN1RaW9FTlyzJ5nWaUMtngUdYSRabF4hK4ftvQGmFy2IeqmMyAp2ZQGi8GekjV95PS7M6YGLmt+EvwnW42qLOzFJgiwkcX3knh197yTp0b89yfaac+x9TcN5veFR3VScXBSq78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8lPmzyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8lPmzyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A8CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789760433;
	bh=HGaRwFW7l8sZbU8ribeZNi3MIP/Uhljfiw26bGTytoY=;
	h=To:Subject:From:Date:From;
	b=c8lPmzyWcem8dHH71IaGu54nTXPIoOn6MXgE4twiPfkQ+Hu0QbmmlIzHUe5z6msNx
	 tg9VWFUcLciEUdz0397dkTXpS/W3wqIDWLQyjXKfZQ0g3C+zgOZR/Lc0xo9UB0XpJK
	 O2z1YExGvJtDy7htQkqUI7QvP7ESBsjRfvSkQU3eprbe1IL1fElhjwRps2VL9SH47U
	 kTdyRjfs2whQJ2VN5+UaODexKAsHkSvYE+1AyNsCj+QFLSMkw4Ig7bHSCrCcVTRTY1
	 xUyhGFX3Q/I6A1l6or5M2/egDHKsCAoY7iIRHxxj3maCkaBxd/+lyU0e8axLkTQoxa
	 yY6F165FUcSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB329C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976043369.19176.13196579280050967534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a2a3ad636cf893a805df59659a45e196bc905733468c57f32bd6c9d332acaf
Date: Fri, 18 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789760433

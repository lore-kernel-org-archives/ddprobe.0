Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4382137419B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788853234; cv=none; b=I9jjZ+xQPR+R4cbAwOu9pI2zetHtA2qDKL0SdsQKsLcOwd+HZp7Sq5T39dh+gHpwXfAp2c1lmvFkTdXp8P1jmdZDVQmvLM/DzXPTJg2p8XtLqNBmEysSyoqpGGHR23VVdnXki/2zzUloavV6XYnrbJLbGBeT38W4d2vdSDsYh8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788853234; c=relaxed/simple;
	bh=N/yrJ+4veYOqXgeFTB3iFZbTVRAHOnevZAIuQrDks60=;
	h=To:Subject:From:Message-Id:Date; b=BEXpLcJSXyTtH4RhizC8fBDR1Hf292kLf++ERc4x3vAme6cMJABoKefyBNj9NUrnnBgKWBJi5zT8LYxYz6VPN84UASqxF5jB2PSgfD/88HWNZN4skvzWlzs32wpLI/KlucQN08CpJiAYWXu6fgnaFYO4bIRkjHo17nYEC1/f9sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4cCvuaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4cCvuaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8ECCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788853233;
	bh=N/yrJ+4veYOqXgeFTB3iFZbTVRAHOnevZAIuQrDks60=;
	h=To:Subject:From:Date:From;
	b=R4cCvuaQu5X/dErKWnByLbtARqeyyK1ruOuaqDf7iUAmNx2xbJWJa63Ger2/19GCu
	 497R6y/39cds10AIU1PGKn9WPRLcopoM/7v8hxstU+mqplOxVCGE0HQqys231f7FDd
	 t2avT2SQNn/+r1w0/cQFjQhb9KCF3Pdvm2+QOBLHltJU1c/0brf6uuNl+VW3XGoBZH
	 ei9NFul1u4Vyq/3qlawlkVWbQobOAA9DszBf1g2oghuoXb4/I9HZAgWfFB9SoZZ3ZW
	 lw7ErRbB/Op7NNRDMGCUO36iEgJ+9Yp6kEtv+C5/izqCQt6k0akhKlii1NfcXG9mDk
	 osItpeEXhJPEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B71C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885323374.8782.11863437639654871289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db333f4f4fc937abdb7c220a88beda904edf1738494cdf80902e2efc7bafd6d
Date: Tue, 08 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788853233

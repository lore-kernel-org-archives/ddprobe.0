Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2434A1BC41
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750383594; cv=none; b=YApaNQDD92c1SCUEwFCxcTEKqTMX1D4Gwyg2KtxHAx2P5kxU58JWk1Gd93yrqSOlCWoCvDYJUZiUn7diSyVSMEekfdw0jO8UList9T5NVluskKOBhwcs56jM7ZwSIuPXcu2PnjZn8bhVqx5Qw4XV/rnsymRjr0mExl9c7Zf8wQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750383594; c=relaxed/simple;
	bh=CKstwQHdDCZTrF8eUTtvDD+8+7oR0kweDoflWTo6Aao=;
	h=To:Subject:From:Message-Id:Date; b=inC9FkClzueT8iAlhumk7tDBIUiEIcYIQZVWb+1yv7bvKzvDSuBfArmhUQd9NXLIPzvRHuqwKoXzuU4ksXRiXc9Csf1IklAaq8iPcUiX2gs3ZMQmgaJtSfV4X1EoCTDQtESgzmgpr0My15KiNOt/CLqKcikGvy/8ouw+I4FMcMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xbeufytw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xbeufytw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD297C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750383593;
	bh=CKstwQHdDCZTrF8eUTtvDD+8+7oR0kweDoflWTo6Aao=;
	h=To:Subject:From:Date:From;
	b=XbeufytwutBrffH/pBkHLxX8Mg9gcKxGUdLERwbN3Jy++prKCIjN5Af1p2BnoJknH
	 ScWUCoau9SzCRyCMsAUGnQcMHu+6KfUVUooPDLypiEDjA8ZBV38QkzamT/ybJkW+j+
	 CQzxLCyTLek6C5sP2zy7IUGTKiUcgbeMlWF1Em7sWcm4v9hVmZYaVDcBz4YH81JeJ/
	 UcPgBBRnDowf2J1xW8A9j+OJ6VPB1UryV4U9LOHAwybZpk13HCYeDrSkRzqoNs/z5g
	 TOydXNAdthlO/3ltzp05qZcSR8S94qp814Z2W1I0VJaOL4ewScn0r4B46BmrH9UboO
	 JVazRRK3hwj5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8FC7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038359357.18052.13627145474204210745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca471935836a0fadeac949485f18543781d16c8229f10bbf0ac6b5905dbaa6be
Date: Fri, 20 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750383593

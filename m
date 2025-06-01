Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341762DCBF9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748737794; cv=none; b=V3durW2b1A6WQGOG15FctV7Y7DfPHvsGAvZm/DwQ02Mrj625M3lAMF+3VgkHvCdtm6j2G4hTs5D6xQZnt4DNeL/1zPtpRTz+lpVxPaakGHaTAOk0NxFE7iH8kzmn9+tdG6L6ekZJnOPDISXbnswSM71Ep3yLgcnANAEUVzSbDi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748737794; c=relaxed/simple;
	bh=akpb5KANO7kitWFkq66i1/QIR50RMvyw6E3AevbOJug=;
	h=To:Subject:From:Message-Id:Date; b=BJE/MflQ546JqlA7u1vSO8FCFcPGYgaQmoCSVsTEOs12FTAF30vWFTDfqa9zSxMgtpkmth/TPCsc4Smk98Dhl9DHuwHMrb9HhxyoP1Ysoy/5HwLm4l7vy86xZl3eY3kfiBCzoCRxdd7l1T7gWKpvs/GJXGb6rMe6PNqsiJ/YEHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVLwcbKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVLwcbKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A0EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748737793;
	bh=akpb5KANO7kitWFkq66i1/QIR50RMvyw6E3AevbOJug=;
	h=To:Subject:From:Date:From;
	b=DVLwcbKFV/z5zoQmh8hlGNTqZLmu4Bc4GdFJZxsRkRHijzyLMQQlFbzxHaV/79Eh0
	 gsravhghF6b5gHmCemgPninGtIPmErywN/fPEKqrAefPk7L/bSaMSe3c1r5w1GryBQ
	 HekUlOeF8NTYce5lCI9frC7A9ma0vPC4jOmBFmpMcg8xhY1f2It4/Kaamctb+Z2Zqf
	 D2ceBQcUmVgTn09qQRhN4ij2zQU5U6FCWeGbrBQvqsV5uJVnQLDBtiw57nRvcXiXZh
	 tXnm5MMb6TGgmDoBx/UOFlXbvPVKuCFIbehMsJnWQauZMZTaBfaLTJuH3EBbs88OAd
	 UFE8Qi58XL3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944ACC5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873779357.30681.8135867236677771937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60d4bcbd68a94afc4dcf521025687689cb6211856df1526748c44992d1049ff
Date: Sun, 01 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748737793

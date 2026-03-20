Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB103112C1
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774043094; cv=none; b=Mi5NmluPFXDYTmNqSvfwxbm+sLWiNcEG3zf/oRPvgYjB2mPBCVvpfQiI7Ps1aAdcMnQanzdmNi0waFd5Fv4HTNvtCwZGYEcQO6v4LHxh7CwK4+lK4sbjaCOqAHsWJ3vwTR99mT0qRjCbefpeCPPjZXKjSc3P3NK55IeBWfaEPrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774043094; c=relaxed/simple;
	bh=0u0t0BAoijawKuAiV/3PJIn0OTkQX5rhnyuNMxOD4Vg=;
	h=To:Subject:From:Message-Id:Date; b=IBZLoYszjN5ltD94Dj+Hxn61xanqxqWD2BdWtysGOD85/Ku0WhbaIMFabr7aQbmU0d/J9RnrPA1t0RiD6hdQm2RhO6ss9LrsKCuyw8JRqkvnOCvNMfNom2salmtTHRpNEt4hN6VCcSE0FOhoH9WlIPFHr1iH5WEd7q255LO+8vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0RoNA38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0RoNA38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774043093;
	bh=0u0t0BAoijawKuAiV/3PJIn0OTkQX5rhnyuNMxOD4Vg=;
	h=To:Subject:From:Date:From;
	b=H0RoNA383dRbioRQSlPLQK4yFSgO35x8zzQsTadTMRA9q+3vUhjBh2vybd66thiMN
	 iaXpax7aQMgzCPvuWNEIrqSSWmaMn2SCfEhSbAWgmQfpStOPYTOwlbXrpfLrdLJdUU
	 YQCTbjkXcycXc1XsMgws+D6OBuBHof4CYKWYozu9DZQL+3i+j0XD6YvscbOJmGX6DF
	 ttkW3YYkQSt7cUJubGxOfnc91XsoH2RZs3sPI8oq2tSS5LzmwCAUnnCIeiChBk5CDo
	 OueB5HZxUa3DBRY/Vwx/WQmGIcwGjkHP3YyKV3TmCF/zx3HuHzhwDGRT1v7keGNj3k
	 dXQ3tt1jZsBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928881099B30
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404309357.16065.2072249325479844015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1596168fe83a3d1ce397f45173c8e786d0935a275e58d63713bbc286c462a6e2
Date: Fri, 20 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774043093

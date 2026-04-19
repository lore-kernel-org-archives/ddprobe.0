Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7FA319847
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776570454; cv=none; b=kAkcAeSv21ljg8NmIEQLfW1uvfndbdkS//FGC8hagkAjJj5/jhwIGIYGwxwnXok/i6CxXfUT+8mlvAR3L2tXomoRcDoLo8sNfK3foF1p+89/TWuJfsE/89l82u53iWfsnKXldkgmDf1chzvjOrkRIldDspAD/BUOTJwiguGcDVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776570454; c=relaxed/simple;
	bh=Jc33/vvpz+yKR7jwqTYOHFZPsti6xBm2qJ9c42AYltg=;
	h=To:Subject:From:Message-Id:Date; b=LHmRZami6YelKJ/bBFCTSBwH/NQ42FFPlmCh5fzFGF45ug8QlNUwvJzSF7cFsl+cEp7GSjf5ZUBFxDrtiC1GvL2ZS73oCNx63gZUEzpytjKdwYwVJCQU1Th5Lc7aiz6u0Y4oXAGaRcJCOsqbAS2BufxkTeomK3KrEa0tfVCTpjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjrI6DQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjrI6DQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDD7C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776570453;
	bh=Jc33/vvpz+yKR7jwqTYOHFZPsti6xBm2qJ9c42AYltg=;
	h=To:Subject:From:Date:From;
	b=gjrI6DQqyceeib3mgaIWrAQUHb/chozruhIablMkTsnzvoZlYzGgav/LKuFXf0WjI
	 cwpAvSexDEHTlFAn/Gw4B2uBpIBe/CIyxWBFZFJRO4xPo2e531QJSW8VocRRsU6729
	 Ab8FLFO6/J1ke1/wv5Ag65VDjGYEGKs+sYmxiq8nU/13tBB15ptBk6UwIP6aPUhmtj
	 Nyj0ULEv+uMczgmFCrXcFQnc29JCKbo2r5xlzXPKr1TXDSm2MaTutLOxtRf3V38cM/
	 cGU0kEMc1SfcTX0XfCs+D177of96xmjgktbafCfdrQMPihz6imndd1uoRHz4+MFkFE
	 OFN3Psrm8SglA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC33EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657045368.28601.639820039297989507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf589e1dc35f04b04c98ee37f8e693004e2146825cba76e4c933e5cf8698293d
Date: Sun, 19 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776570453

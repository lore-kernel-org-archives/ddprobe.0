Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4E7C8EB
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783916314; cv=none; b=fXv+Lg6HtdarN1h86eVb4vHP70gB/z/zmdaHgfyefFC3ZfnJ/U+cQ5vqzldzY5LoySHTQz/rhsTs9n/2lLsan8xH0fSXfRmWr0CguyzGKo89eOWBC7vrmrN0BlNRd5kVsy4vRlMd4LRnxk9qO3XQQ3OT0B4NDUc7xXuUAopqg1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783916314; c=relaxed/simple;
	bh=Qh1Gka9hcBvXlp2gG+6pvXqrHCziDwVF8/RFyM1MIFY=;
	h=To:Subject:From:Message-Id:Date; b=Nx710G2J9yfud2VP8AxjPvRm2V/O+lmcbSUw6vyg77/mfgz/rpwCtadnsvhmoJ3yO1ldgkNmBQrDK1b9KC3fmaVaX+g9ZdRT2wMh5A4TJ2Y1yHbkKxPFSF/YuLdgIxRNEUo2iNAVQAOKPw8zgdNgZxKGDCkuJpsDHTaDNd37jBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNEqdf7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNEqdf7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75D0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783916313;
	bh=Qh1Gka9hcBvXlp2gG+6pvXqrHCziDwVF8/RFyM1MIFY=;
	h=To:Subject:From:Date:From;
	b=kNEqdf7QOl2F0U57hhPR+yw207nSjyZ6YX8d9wrvptMBdGASHRObVitZtYlbAyhQN
	 JavhjNJheGpGNv29lF7eCs94Ou9uVj6ag2WFUK7X7RBhC9oEBn5MMBr5kKy+RSHsnF
	 M++NmJxqWIk5q4IwCOLoCjdx9sc61+uRwPocqCYVW7F7B2EvMMhZlAZ0qSI+frhGkq
	 8Xnc8AKIozM9FGFwsoLHTRRD4J/T0Mw8U+3r62iPS+U9KyeytTPRhwbG4SIgFGWrzS
	 3K3trs7LzZqUWwcHMvCnvzNfj5AkpFXpEZ47jYt2SDloQmUs5SAkPWc9XJnkRBPvjm
	 syfTgoUoDk/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F90C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391631369.29067.10927898345193297071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff7d199ea0dcdefb0712aa169de2c095ed24ab2ad4a53a2e9048612a8767721
Date: Mon, 13 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783916313

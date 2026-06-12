Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0AA2147E6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781271994; cv=none; b=pusMvqa3o2dLmR9o9T5I08w4lPsfdmoNvlND2s+o0QtMT8mnN+mtVb33uQc5Ar7UgU2QBZMZ3q0QrKJQCyJzYGkdfj4HBELfudgyy2/kLtaoXTstbVkZR7TFZ+7zeTpIBPIF1R7cYYypHeOObcQAQvxk20LnEBlz0n1V8yVSrik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781271994; c=relaxed/simple;
	bh=E2rtUPzt+QbUoZlVMJcTrVvznhnJImDfzaLo7HmX9ww=;
	h=To:Subject:From:Message-Id:Date; b=KwdWm/YMxyMy7R+OewT4c5wenNpdG/mM0FHzM//OM2IPVwwHzikM4QRgr+szad9WM281pZvsfpgxFj+XgzM7h+xJzyXlf6RTguqDN03jtUbpbY/a+fF/0NghOBGpJ6pU3XfEC80Jqc0v7XHk7Nazda2f5TM67pYoQ7GuEq2CF5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIbUFp0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIbUFp0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C734BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781271993;
	bh=E2rtUPzt+QbUoZlVMJcTrVvznhnJImDfzaLo7HmX9ww=;
	h=To:Subject:From:Date:From;
	b=EIbUFp0WUUA3UO4IAeqYFnNMM6H46riAHD8352/HiWKmAyk9BudgDvOTY5mpFFiBE
	 JgpFKx7iEW6Tc582zByUbt8sCio96gTDoN0FGwBuZvgb6jmqH8CCFyI0MqTLYwtFmx
	 4RCuTeXA/QhTFsuoNiDyTuLkBkaP848osrLGhr13uJGD5Ffe+JGRs49B5PMSewfroR
	 QWuOr0XYVqhHsTbuXfiA4Ie0HKL+m+0j2DoYfcA5afzMi7XAMQudBG1vvj1ndU/Nm1
	 zyGwsYAkybg9WtLl0BNabjeiRJDapSiNL/YmTSIjzIgZUGUszG+KaUe1Mzi6fstzKu
	 Ki1rfnLFoua0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C16CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127199368.11987.14253803834179175378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c2dcefe1318d16ab7b4bc3e1df17691e7976a2b64d0ec8cc56377cc31f86e4
Date: Fri, 12 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781271993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A76241691
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760729994; cv=none; b=fAP9h6fWRxYHQNhCylkUgY/Gzx9eFTg/yYl4BKumU6fFWyPc+z+Qs3DI3PyYHWa20VMrqsKPd3ki5cPIWAauk64g2dmCUoVQPe1Gs+PLmKib7UnRgCNzV9B/JYJVAR/jesZ1OWsr3fxvQtnUCsZkBFHSgLv05WfZ58bTYL/UUhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760729994; c=relaxed/simple;
	bh=cyb4QX04usMn6hj2/pAeyptSU9UA2ZDr6Glp925Ahoc=;
	h=To:Subject:From:Message-Id:Date; b=rCQRlhZxtU8SPvrsb/AkBYaRlsPnBb2LyT9tWJ0j/etwSeN0esboQ09fxW1ni5ycbG13OfLoyzQ6uQRBBY5+D9MP5hmUTnRAYib6+vS+jAOEgM+ww6+VjbsV3oM+TYzWDTLngo+RIjzL52f+60Ff30SzagzuF2tuMgU7oKMjpMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWWIQhEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWWIQhEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D37C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760729993;
	bh=cyb4QX04usMn6hj2/pAeyptSU9UA2ZDr6Glp925Ahoc=;
	h=To:Subject:From:Date:From;
	b=FWWIQhEqLvyAkuz4RezLlPzLZ1/DaYtBFjR+8FSk7cpKWH/0oTqv5ff3P2yJ9VuRY
	 gxnjnCC5x+b7vWq2k/p5wB2Pi6ARYAsVZfxVi5dMuxPvSRUqhX0PA6V/kriH8wm2o1
	 RMM+nj8hBKXlvNBpRC6S5IOwO0+fxrp+V0exuyCHpnWdC4wDpNWqB1l2cue2n+oohW
	 pdq5lq6YPEuLq8iaBG+0wAXI3pb8buoHJMj2ep+077qy3nx5/3POL6XGsj9B/cgMBF
	 UZGtD1TtiiOuH3yaEpAOfn2i5zHeq9DOkfTLbfD2fk4R3sasE35Wl3MESSgB++sabM
	 kGCJ5/ozmiyjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97345CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072999358.14185.12598356718158114961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62a7b7dd7d7ef07e6490786d54efbbeef74337290f9ca77198d3bc4743ade08
Date: Fri, 17 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760729993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111392E6CC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781666194; cv=none; b=e7xtiShsJ6FEMjx50s0pn6dJ3UiA5BUQT5YhXgvrPPdWvkpGFK5uwpeAjKFwh7QA3PsSXOx0FLj3b7zWfSMDvAwJgac6QLjBQ/AmwnPk8HmOgsP5FTyZNGDKbJuFkW38jZ5IHX5c1+HqitG7Wuby0davIViplke979UOiO3c2lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781666194; c=relaxed/simple;
	bh=mOIUNgr8WHMNqbVWXsQKz6l4duYd2p+pmN1GHz9dUT4=;
	h=To:Subject:From:Message-Id:Date; b=PMFLAB6lWvUyrD617fIrziIzxYpS3dbgD6h+cXy6I3u8D5qNB+sy31GRyP8UiPowMysQIfGTqgqNMLAJNca9xRxpl9yUgsJXc1HwHFnUfPahS9n+V5VYslglrL5UWf43YbYmv6rgfFuMx8k0vQiMETcjkuWxshYIZ8WsT3B3U5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIAeEm7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIAeEm7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D98C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781666193;
	bh=mOIUNgr8WHMNqbVWXsQKz6l4duYd2p+pmN1GHz9dUT4=;
	h=To:Subject:From:Date:From;
	b=nIAeEm7TyDgVOem8ZMXbVLodIW8oNzWAhZZPMKXYmVkNKbTnLyql+0lUKcC6I3Zjb
	 7EfQrlVdgl3ByS501HrwBd4DMuy57wnz7oLAFRzDfVBk6VRyzE5J7k+YLvjVLzqxi1
	 R/ZCHDqEjfdwWba91gkSJVmTX39RrFDESDS80RoeG1loHUronq1gcMfeX+vV7eCBgJ
	 LGPt1u2wrn2OSQwxjwzbhheeQQtASsTk9XwChe17lrOtT/ezD5b1obDs6XP1oGGWiT
	 1ohKfFjIRFsiWvM4ognE6czoahRy0X6jumPXiqOopoIl03WW1eCweeZZNGIuyyKPdL
	 s5O7MT8KuFiNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6012CD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166619373.23995.14052657808371729124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a92ce97caf499ab93ae04c186512a5dc9464db24ce34568e248386b2926f4d
Date: Wed, 17 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781666193

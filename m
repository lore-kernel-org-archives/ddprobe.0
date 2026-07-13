Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0B36897C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783930714; cv=none; b=E/mSiVfXzcQM/xoA23UvRJ6zn4scpApj/lLHpRt5BT3bhc4LuTU1Vhx/qvMlqXEEANOMQeYcUDu5hrWPr2l58aDDU9ii3h+Mu0jsdQB6Mw5KvZg5Zl7mhyiWOl4AzqXU2r+tPH5+YA9mkYmqMyUxz82xH7ZiWd+QXUomjUGHPgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783930714; c=relaxed/simple;
	bh=fz1p33W/doBtMXswdmU2O7PCd6AovXtJtnsNWIM7PDI=;
	h=To:Subject:From:Message-Id:Date; b=I++xS0XpJRluchxbfKVjz21kym/bDpDUtLhY1XgPy+7f6ZZDA96Bsf/Vru7gpqMtKfU7o14/sLcihEE0v1rN01iJp9g4tOqfECpMFOPQpkAM0IRsKFboZaiIGZMiOXRIUH3bzHVvnG/vYF/Mpj1cJbAQaMQcT2a/1HSWN2ujIBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzPF6jlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzPF6jlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783930713;
	bh=fz1p33W/doBtMXswdmU2O7PCd6AovXtJtnsNWIM7PDI=;
	h=To:Subject:From:Date:From;
	b=uzPF6jlx4SVbnddnYy8ZFh6tTjmbUmZTHsDUKJlZzHlcoX6b4BMFS3Y4kZ6+xYR2j
	 Z2vfsLEjTblOOTz8axXSxBEVJDOi2YMYc3dYBhi4ISdHDyPfZWaCz03pys+Z7S2Kbs
	 50B5fX7jGeCntpBXkX8Qvie+Lz0EGSNzNd6TCc3HZhEkycaivppEAZeadxF01oSPzM
	 25yzXSjD/3RcC7/dbGDxrmYp3PlktmI4D1H2p/V4T6Nvcvm8VVOFK5DW73gS72tfg/
	 L5LBA3MoNrGcqsvMdu2SK5+G5Jyh7n1qFhfOUu2ifJAlWBGJASCA+55mGFBZC0YAv/
	 MXxNz/8h2nqeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94EDC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393071368.12951.5265510591113598413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dee22b6a48487f022b5b7af8702f032ec974bb32fc7e82d5ecce8f84c04b5f
Date: Mon, 13 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783930713

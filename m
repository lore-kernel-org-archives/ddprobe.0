Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2439D3002C8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782337054; cv=none; b=McQ0Aw8O9SavA4z/5Q3ilu/zErErZDCNgwb4Ky83xIVYxa89y5vvr15SkbMTUjS6A64CwkieBkIHonJHFlz+CVyNa/VyUUfxwTG8WM3MQ2uRTrUk/A+HRHEGKKChLc2qFwgmgGKLt1fHNGvs0sk8gwy2xQx6K5G1Gca3igc4v2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782337054; c=relaxed/simple;
	bh=A62z61++WXlyEKKfam0JYpmz2jqR8SyKZ3r/Fyw4ocs=;
	h=To:Subject:From:Message-Id:Date; b=Zxmx/e/+JBxzRR01cedKvpN4gkX6qWcIDd2zq25h7/MgoZZ8NC4St9tvkX3NM0KIZpXcL/RQVaIvcT0QQB9ydqhIq8TuPiqpj8SgPf4QzGwPo/oQn3yftAXuJ5DE38rvyhuP+reHf/VtBlH/hUhPBYwq/zhXOUNJ1O6Rqu2mzTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVmscDuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVmscDuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6453C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782337053;
	bh=A62z61++WXlyEKKfam0JYpmz2jqR8SyKZ3r/Fyw4ocs=;
	h=To:Subject:From:Date:From;
	b=pVmscDuyQgrV5QLPP/34NwECc3yTF9tjfSvRiKXMH7Pm69setHe4OQBSoDqID1dwc
	 03+qg7HT9fo2aSw3Lxk82fjCrStLEvE5YYo6KBLkDVbwqmpgWeI4fJByi8wDP/EzEy
	 xXziOzMElG8SJSFU9dfo/anyG3gn/vYpi6jjEgpctTWHxVdeywvwOgWtESrsmc52HZ
	 zkmGksQ2va5RVMQ48vcg9rlE6UuUouNUmD5IVgcBKs9ooQQC4/Zk/Wtpu2vLwYMm4S
	 o1x7HtewgVq+i/sUx9A/B8PsTJmuQMHztaACnaD/rIB4CL6kLUdbQ5KExbzNm4p6Sq
	 36/gHRV8Uo/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2978CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233705372.1754.12228512027582615913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eac63770e72cfa3f8257d5bcb6838de013c8842096e3a14b8a35248f77a6f3a
Date: Wed, 24 Jun 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782337053

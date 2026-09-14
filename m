Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5716F415B7B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789425634; cv=none; b=MMsi66zJ4P9F5Z7/yd4MZ698xXpMVBeHrw+eLQ4JT2i4J7VzzF8hm8ACnVqJiHGCpvbwRK/gG7azDvx/8rFtrVHffSMjjUdv3oszknexUImwCf4M/NZG41sgmoeMppVLDwXR26/YVjICFod1fgAAS+zz8M+coFyAcMcebBlAZ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789425634; c=relaxed/simple;
	bh=defHwvtdPJaqiUi1q6v5gdyeY9v1UAYq/D2NfEArSAs=;
	h=To:Subject:From:Message-Id:Date; b=hbgi4jR8Sn8qEzi4Mudm2L89AOzqHv4bqZGS7Y9a3KCdIaa2HipXaOQxkzDYjTRSKc17XW3agXqgRXCDqLrgZ49eW9ZsgI9sFJE78yEmDy0SDBzGeplgbtQpX706GnfAALXG8CfzWx3d14mtG+jvCZdvJzNfJezqDI7i2NQrXkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifcsZHSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifcsZHSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDACC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789425633;
	bh=defHwvtdPJaqiUi1q6v5gdyeY9v1UAYq/D2NfEArSAs=;
	h=To:Subject:From:Date:From;
	b=ifcsZHSjx5Xi5H2fJBM9MHJMDqbKgYS/lQ/TEj8JMPtmk/qBZtNH5kGLPFhZvZtvy
	 t0DDxKPLrnd5HTeDSoj8CRHuURd7lExJKjfvAPo3ZaUk/GDjgL2IC6sLX7qruETSpd
	 vrw/BOo6q8NR2v3z77vI9NcR88UC8rm8iNUR5tBZDS2xwJBPD0KaUC1uc40OXXJOFo
	 23SAQ00rphHW9sbCfPwYIaB/VYHph6GQ4K49RseiHj/Wke/Puh7p3eXa1fcn6YvBqD
	 PFRF5LJi2DFJmHpQ8O7VqkDmEbkKqg9CyMHGX5iJvR32271c2UDm0Dt2OZL+4nzlUy
	 iDs8rY+cVQ5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89F2C88E75
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942563370.899.646694992871638347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2645014cedeb971984d862d69db639726833aed1d993babf84d59f8dc1bce6a1
Date: Mon, 14 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789425633

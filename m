Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F7D13B797
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718311103; cv=none; b=r2YFwA5eE26wn40dnKTtM3aqgyS9sd2meDCKKPJh275ygAjlgV7OcF4FHBRn3lbKHXlBo/moXqbHkb3F3Z9JzA2C2wZwzSYXWQjZTMLVYmAI2zKuBy5erLxphGW71h7zfVYb6FrvDiiTMq3gLqVTtXIbAC/UBr0z4RKsPVE6et0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718311103; c=relaxed/simple;
	bh=AO9R6qtDL4ECkuSS9jSTZdavQmBQ3hzYEco2pMkAEi0=;
	h=To:Subject:From:Message-Id:Date; b=My5X4A7FuX8FM7yaji3HE/DCuYEdCjSqc/TtDDRS06tSl1LVo3ZGLX1Lnj6j4joE6RY/6PXausAcxphx3nWOBlie9xXvBI6ty8ULynx5qYRnYElrhthV/Dde+JVEgxMQDD/06Mv/wfbY3ZIViPR9ls/C1uRDWjzS+CamY1vNSp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX9aULgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX9aULgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1072C32789
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718311103;
	bh=AO9R6qtDL4ECkuSS9jSTZdavQmBQ3hzYEco2pMkAEi0=;
	h=To:Subject:From:Date:From;
	b=JX9aULgEPiZAhLtsGaGRFxs6bNSp9kDeZC9PP5qrSReJZKo9lop50/vj0IoVX0Ac3
	 E07vj8+3a1P8yaduk85pZOOCgVC9HsgGEQ+RpeivClSd7cjR1YrueoRPXmx8NICgWo
	 u4VDXnLSHyNQ/C3LiIdQxbL1OT+5e1Q1x6yEnJuc192DrYZ8otdH3L6golc0ttd59y
	 jEXeEWHi/xRMuNSQWM+mf2uY9jeZyowZDEqOIU8BfYEqDkDZltUXEzrsCfTZ7we+Cz
	 mAUpIppF+dp5YSacHNV/C6FS7Hx28gVyEqKMwZmBaHxBdYyPxNuiTFg9LoGaABrSzN
	 YSTbQllloLZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD91C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831110281.10758.1995687084535731026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3d74895265cd4120bb616f9e0e650712e8e16e9c9eebcce91a04e7e17de45a
Date: Thu, 13 Jun 2024 20:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718311102

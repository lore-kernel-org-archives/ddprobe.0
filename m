Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2891B22F388
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778111254; cv=none; b=VZS6wdhPDeV9GZU2tKFXfDbtOAG3HRYP6HwK+O7m5koIFKUXYu5tGaz5dgywi9vpYgC1yBhCuOd5SzCD+ThilreDygkxBXjZZ+N2ABaZy5lWkmf9salrt0xMlJKbh4MwlesSxIGblfiMy91tb5vpqb4s80iOwaGILXRZOeaargM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778111254; c=relaxed/simple;
	bh=Ivi9zXsFL7BrmgjQg3zVsaziwFKpaXlAfITL5BdMkmw=;
	h=To:Subject:From:Message-Id:Date; b=nHXtMH3tzjh3tOrb4EFY6UzsbZF/gAypltHo9tO1GKS6v8nweWTIC3uvZpdERvSCNjSe3aJlK/oI1H6jCQStk7EtTP/yO2b9QGgHD2Bji1TAFRMW/bL64tBH+VjhWvG4SMcWxkmlgwJZvJNwZX191Frb7vsqE0Qrqw82HWAl/wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8V37cZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8V37cZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D7BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778111253;
	bh=Ivi9zXsFL7BrmgjQg3zVsaziwFKpaXlAfITL5BdMkmw=;
	h=To:Subject:From:Date:From;
	b=t8V37cZbilrsXm6BmJTBc3w3DSZ7JOm1gF8iQ6+lCgsIlAROFdhokoVp+MrdcQARF
	 TRy/tqYh8i5cqKxOPimqdpAAtSMxnI5OdmgSJLkBRWPCoF58keYCmJVtZePbEoFey6
	 /q1Ke7LtPbNsT2M9/MZe7PN52gxzaimO9FkBFfpwoTVU0HG9HD6x6NfVuoMYsKbCLJ
	 h4usgRm3SX8Gq/orHZsx9wFRO/YOF/3eqLGOtqOOgHFTkmS2qXViU24LiiFndY/134
	 Gk8AFqoPz5esCXolsweBU8PO8np0BJ+fR3Pja5LrkKoXBFJ/uLGCIziMUcH5mlh8qt
	 j71rUUJ14pF9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EF1CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811125368.25316.8264567098307129750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbf40697777c0db86cf2969280e6723567ec001ce7eb668666fe3be916f59ac
Date: Wed, 06 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778111253

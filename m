Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FB73B7AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717335323; cv=none; b=Ue7ELFvwKIcekepBlqc+3XOz/iAEcHbFGHyNew/isx/DfYfqTBqDDvNHZToEG3eCxerYjULidxLAEmky70KAQySEPn6BvpZzKWKwqWHBdHrPbR5SMGsCD1avx/0E0muPKjFlsaxwYZkhd65c49ole4KrkCumv2UnUCOe2z2nZIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717335323; c=relaxed/simple;
	bh=KPcCMjvNzL9XYNZLKLLJ+lPX5daifoAf0fKWdKfELzc=;
	h=To:Subject:From:Message-Id:Date; b=lMZEvp/QcrWt65FZ+YMf9K4RDSkkdRbkpf2eheV4Idd9p42SaQO+85VPyhE7ahRdYMp9xYx8hZ8sivMnlHEILMMrAykH1VMg9F7jvr1d1uyv7MI3HkY225W//pBktHB3asSMv60zVifD9pR2G+/WmPVcfslTR0OwKm1dnkVTaCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlU1tAkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlU1tAkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2A0C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717335322;
	bh=KPcCMjvNzL9XYNZLKLLJ+lPX5daifoAf0fKWdKfELzc=;
	h=To:Subject:From:Date:From;
	b=jlU1tAkRkMK+yye8p4+rAwlWbTYsyiC8huPo8thfg1CtFQkA3pcNY9wpy/yJZ6cHe
	 n5NDE0FkfG0r/5iPEiMmCD6BaD9tIDSjMiP72E9d6BXYeScPosDXrnHT9qFnmNvi35
	 QzegCE+OEEcpjU3Jg5fIvrr7ZzCpymbLP8uCrai4sgooINaJPVwLaXd8E1l2qolZCP
	 Q6NKCPDp1PpMuQ6RWkzrCg5kl58bf+kIxpX/Gy/GllRHXTE0NnV53y/oPzGQmAYTAI
	 JPNN3klo8C3cTej2RzCOglPgUrrJZVvi0R0K6RdKCJmsCfRUxlBVzr/MsF4i8TlDHm
	 MTS1jNSargWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95D6C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733532279.25969.12159098367625152047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d533ab202049e4c558ef2600580c8221fb88ce9813c328a32d4a4dc97e19637
Date: Sun, 02 Jun 2024 13:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717335322

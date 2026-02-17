Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208BA84A35
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771310094; cv=none; b=egJ6/t1dmy2VZV3LPHpolfkg+k1OPNps6i1FwEpcP3dv96TB16wIFSrUfvLfMq5pimPOxBnj4I/VqZqHsEQ+fKn8vzPSo3tKoUtWeJ7AhWJXmbOvkOhiEjaWd6cYExTBRfjgtjGi5361DgYJfv3nUBM4rySia5Otdqho+r3chkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771310094; c=relaxed/simple;
	bh=IcTgSWss+9LBysXuwf0nxjdnM3p7nx+8n3/vtG1rHHk=;
	h=To:Subject:From:Message-Id:Date; b=btmgjwJaXBEAGhF/JnlR26szUxCOaZhrhQ2W/wSSy3ycoXtRsyi1G/PXXVpDSF2Af2AL2ZPKPKO+pvGwbQe2TBRSpZX4S/USamUfA0uD298SoA7Rm8mIbRzqmxofaMyXknvL4uRxiOdb7sBOVOexX/cD3HB4jki8evqXp7uVo4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE4hxakt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE4hxakt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6004C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771310093;
	bh=IcTgSWss+9LBysXuwf0nxjdnM3p7nx+8n3/vtG1rHHk=;
	h=To:Subject:From:Date:From;
	b=UE4hxaktfM2ZCCajUaPNGCHPpprk4tZl+w83L4Thb2hw/+xoHumrDtKgQB5RM9WWP
	 RU5j/rI1wqB1r2+Fao4jmXQlpt9gcmJguFMrs4lT2jOzIBe8Sg9RphSfCR7Q1RFX/U
	 BefBx3NjppaFezYkbS6CrRsRVEQN40sQJZ/Dkc2mYjQwstHTU2w02/LHC4gLtSqav9
	 lx/pqOHdAWdcb87njTcWwn0ipxHxAFujyL8naMo4kqUkTuyWws/jaT2uWvvW91sfiU
	 81u2G/D4jJrsoS6Le2CY6/9ztNFVpZKGb4INmi4qmB3kimw9PKmDXwnKYvN29OqB/w
	 IJDAemonltCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D10E83856
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131009363.18803.1013310382515890845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cd31da2d3e4a9a4202507901f54241e5140a38dd23da1853c76c353de95800
Date: Tue, 17 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771310093

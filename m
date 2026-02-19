Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F05333374F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771511094; cv=none; b=HRYPK7xDNzrBAjROLax8Vs38u6INJn6Czgie9IK7evmjetkz8/cXHwtdMmZO96fg6IjubiA8TmIZ0Afp2ejwJYZ9zqeR93hyJVmnB4X4onDH3+emWifXuEqwG/HPjS6LNrHwD58qB5bNXudwsjyzxEinPv2ZntaeXwBmtQEn790=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771511094; c=relaxed/simple;
	bh=tER1tom04COMdBsjEpzWSI4x8GhxbsVrZcon/O3zDp4=;
	h=To:Subject:From:Message-Id:Date; b=LKYybz87FnN/m2QO+OOdqCqgsJOgxhQqFs/dbd98majdlfbANn0n10X9G/6ythP2k1Si6aVSWmPy5Z1yQOgb6ATxcNMteoK2SGFQHGxq4OPOltbyT5tViPV0Uumzb92J1SX6OgW2wvkHSKJMLlacs32nX4ADWrUpAKcFV5Y+TvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWonr6VM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWonr6VM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA5BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771511093;
	bh=tER1tom04COMdBsjEpzWSI4x8GhxbsVrZcon/O3zDp4=;
	h=To:Subject:From:Date:From;
	b=CWonr6VMbBnDSmnNqlKp3tpu2mZA8eQRkt94ddlT0yW/SL/3GNTcioje9DJGBmsS5
	 zHwzsO7J+jsM4+hgPgubSj9YhcdLmm/AxAmHXjaxdcfxOaV2nLsxfb7ZwTtoPeL2PS
	 IYTWtk2VMWmkKskJROXTT/jlir81AFO9X8gsqpMGfnk5cN4fmf2zdU8o/0L9e/iIhh
	 wMR9+i46E/9l+FDxIdcS0lzRLhd0CAOZwjoXuj2FKw6+DpsFpv41JctDaS9a6IHvU0
	 9/su238NiCCp37CAjlbCUDLCM3hf9v+eFFdgUngKZcvuLSabIDzpGisPc+Yitr/VTZ
	 dCmq2AJZKF1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988B6E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151109358.4837.3674806784890345619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc7295521e9a51830fe3ec25b1b1d01bf3a96e632278383b6c0fa8cc1b5c554
Date: Thu, 19 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771511093

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E634EBACD
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792413634; cv=none; b=BCSHaSBsIOSvy9cBZn9kILhGyB8cDvfvAFMMka9g1+Jdxg/kt2yKZvy68ulfW32AzewTnxl33B8HF7Sd/B4CSzQHHYXgqdHSrnGpuL8TZq5Mn2DzTiP5+kesPae3IyyXELIjYUmU81FxDRzhzU7mNLW5yJPTTc9S4G77X1AeGM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792413634; c=relaxed/simple;
	bh=PqUYodAMQOdCpFom4XqX1C/zq1PrfjUvJVNc8/MBfNg=;
	h=To:Subject:From:Message-Id:Date; b=XN+p8uUHD+UPtCxOIrKs699BtUDQ1+yGgKzRjEMo0mf6LU11Wu9Q1Cy6HwJgrWoFFqr11iRrg/rXeggxDhUV08c9lWvlAxHyZ3YHyAcUAkwaVQpwSO/oN/NoJEplaQ1iSQKXWnkd2Vle88vYz6YL9f0Yz33S9aXPFWb1PXQ/ZcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4pZMGRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4pZMGRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43EBC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792413633;
	bh=PqUYodAMQOdCpFom4XqX1C/zq1PrfjUvJVNc8/MBfNg=;
	h=To:Subject:From:Date:From;
	b=E4pZMGRTgufaB2Eztd3HvcrQghyQOlcHh75SeQApkOL5PENvo4vFmr6adsvOuulXp
	 GPxGmHONQMTQUkpSKA/lRO2G1qdHeK277TM+Am0uUiJ8kzIFDBmeB2JamAzts25H+4
	 X2DJ4KKQgBWzir6vqBo2VM3BTdo+UNojEXPzfuIMMbI9idNGgX+LQWgnBTCckM+7yn
	 M4uVsdXmpmnZ3qI7ij2T4GpCtZLzpa9abEwz6noVES8SvwIABUutHTprgj1SXGEwhY
	 D8B5jhilLGhD+MzelnwDHWtxLy2GRB9WtC65HFrmofZ8JK5meFcLUBouMYKIrie62S
	 HHcRdpz015Skw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA18DCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241363374.24054.17933325583392713010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911673571fdd5e7e38b42b618f32bc521a505e65031b08d8e1479cc303991d46
Date: Mon, 19 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792413633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C532B2C028F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773803693; cv=none; b=hSTY7ti/rqj5pRMWAOT3/18Bk0RVGML41y3YEdqAeQdtHoaRiKbR/Xkrv9lQRMEAtFr+8EB0m6fdBGHtm3o8qs7nacjgqa3oYg9xHM3jvZIWwBEcx3/839NHNOtDm2WpeYt9TkbpUyW6zqOz5eveA8ZHAJJJK0yZdT9QJOL0oj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773803693; c=relaxed/simple;
	bh=C+QmZWOCLX3Wz+F4X35lltrXPa3Eyphan1tmqFys3Lw=;
	h=To:Subject:From:Message-Id:Date; b=BLPO7PIIs9t5jfFKzMEhaJ5rw7y35DG0vz1UhDNDstAcPr3CTU9U0slUXYOrFy3TLsv4u0Mo6uun5BlUP01avL0vaIUk9v7gLORiLdnNefBDnhVe/UcLX+sJDwpPxdaCRRwG8Ahn+yJ2ICqQDn5varTMHEuXLgw6/8gyAVGngUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVVfM2PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVVfM2PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773803693;
	bh=C+QmZWOCLX3Wz+F4X35lltrXPa3Eyphan1tmqFys3Lw=;
	h=To:Subject:From:Date:From;
	b=tVVfM2PO9BVmcyBvebDlSiJyt5zILrQx5R8D7RSa5nOLSp+2gq5RGGD3s0S/LY3AE
	 FU4z0ObQYzw3rbeR64CIeF0OVh63SFwG+fMt+zGnc1RKrL1d3VYnIUDSRD6DNAxAAj
	 v3pe3V1KZs6dEJBVPtR9hfjYPyJ8IqkE6JKTNWsluL5YEJLgaXsPyndmyfXQWK2ILm
	 Db6AubhaApj+uabiKJL4qPvNuyBAkq5Y4jWNKRanOFYVSFayjScrvP8BEKCBPULnr0
	 pDORdolZ/IaiAHYnc2xpNBDn2Mn/fywk6Qg5ExJEIb3554plgQWO5MVbm0nG1JhZO9
	 U38bKw74l9evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6F10854D1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380369357.23693.5662556999082296454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325159c868a95964b38ed1bb6f8137beee96196a11665ba083d1ef68e8ad8ce4
Date: Wed, 18 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773803693

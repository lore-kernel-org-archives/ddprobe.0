Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2189B8480
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718664503; cv=none; b=pgLtTICBXHh1bR/8VcdWZaK50rYXVzC1PVUhewsgxqMtMeiLojjuuygW6vxy0Prx0DKn8sXipXb/AuYj/8zaEi4faDINvOeCeTKOM6i24kuMEzLcSefrHJ7sBnu+jhuk83e76dwob9NB/zRTXPoqG72Y8cse1aFg7AgGGJDDj7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718664503; c=relaxed/simple;
	bh=bN5ItCn5MkCDruYbBH6fJTvcExaVMXlQV7ZnonXdB+w=;
	h=To:Subject:From:Message-Id:Date; b=fcQieXsHwfi1ilw/X/Q8k3v08W62bR3hDl71LdWdsaKktBT0mNPm6M+p1lZNNfyJ1qUf5pR+GB0Jb/Vp1A9x2VcQlh++2HcMAsUHbkNI3NdjPxapp8VyDwYLvA901E74DYfZjODVM3xhIkhkf9m7dMSK98tektP+Ids5Deph0XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qs98V5+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qs98V5+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E496CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718664502;
	bh=bN5ItCn5MkCDruYbBH6fJTvcExaVMXlQV7ZnonXdB+w=;
	h=To:Subject:From:Date:From;
	b=Qs98V5+naCSxqlbL9uUpwOwLwAYQ0LbIHyuef7WFMBS9P+4x9FHqp3jQb55W/vJC4
	 OKhUrcdGDbDkTYkFp43chg/J2pps1heqJWX+16EV3AvxCAwGSZMfKPZiIXqRisH20h
	 2dwILgzfFCfKtqcSwwW8a6nYCr+b530JVnf/Pb/Oa0bqJGPE4Hc9VNaPWBtbERhVCm
	 kqTC7aukZrXQ+7O4jQUt17WIpInEGEXm6xrQAfV3SRjc/EZGvAfBMMNmInjpDUA+AR
	 ZdTtNaWda3bSL97pG6dAHUXCl5L1SATlm+ZAJzftuSsDJL6/M99FWjOSsf3cL58ldG
	 1FhcOEjMPcWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF065C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866450283.4740.10238972009529575543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775ce0c995d48559aacb05766c23849de71519b4fe0b58c7bd1947f99cd2a78e
Date: Mon, 17 Jun 2024 22:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718664502

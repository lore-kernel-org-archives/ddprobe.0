Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6408215D5C5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717775243; cv=none; b=ZpriA/L0Hg1kv7Jww3beoQmoJB99dFKd+k8sHmOGs06yI4nIVRuq9x0S7sOj4zzkwklEz1lxiGrsJHh1kTbCTEO93zf94MR/y1PXCRSq3XwzUIj4CsNPSKaCx/5dMU559NRdcwfBtu1BTsyB2YJKkQ+I3pnaFTwiMpL011DOa3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717775243; c=relaxed/simple;
	bh=X7/CGwy+PV3HJUBBVm+5BJ/ncjY9PJjFl2Tpxx159Us=;
	h=To:Subject:From:Message-Id:Date; b=j1yh7EC7WEpGkvs/Qkd2D4Of0spv1/GUrg6gsJA+pfB1DTJxZ0K99pAHAP6/NVnPwCLZ/4XVj9BohoAz82Dpk3VTdQxJp9XhMYI2POtS7IKJiX8WjviEm/yytryv3kKwvM/IL1DOu36bjP27cbrXkNxt1QHxJ5XJwY1iI07jNoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxElrKc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxElrKc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC268C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717775243;
	bh=X7/CGwy+PV3HJUBBVm+5BJ/ncjY9PJjFl2Tpxx159Us=;
	h=To:Subject:From:Date:From;
	b=lxElrKc7O3s+3uYYRsLFZYYJLiOoYbyroEzYTThpdM4MxJVSPilRalDcGCM8Pedgw
	 No4d/EndSQEC3Fa4I67SzQy5FWuehhZtSAoG5+WNv/7t+SVMwW3PztrlJqb9nT5Dld
	 ca6fCGr16maJ5inP6BXq/NxvRfRhuMrtEDw6N/Q/cpU2MwJ2M5H/5U0ZMtQj9OOrdq
	 ljQt3RnySTOvUSB/eakG2xopGDkTAzgJ4vIWcZWlQNyAot6hBOGtwcfq7E4AKkxpN2
	 ZF8XAF6bPFDZqffPSwehnNSpQ+hbVfg1rcpjLiSEy1lW/FG5w/pmiALuNiOYMve525
	 jl42m8ZIpcPDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2240C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777524285.25134.7265621026201250511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee0485befa08e562fb07505739c6a0d218de145d2cdf22ff76ec6d2401a16aa
Date: Fri, 07 Jun 2024 15:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717775242

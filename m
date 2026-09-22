Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC9A37B40E
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790116236; cv=none; b=G0D9W2UDVMUjLhNaiIdmljI96a3PSeA4OHJeA2ubbRb0SRfwq8CYlbsCjh+nwQacxz9nWUNtO0aeQWneRLUSornWu7r5eGE3ENxN2oIOId7HDo0A83g3CX88YFNJ25pfCDIISlyE2ByU1Ckbl87/Mfoic33s2PvT8um8DwC8Lyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790116236; c=relaxed/simple;
	bh=+9y6zyXeUvOfy7hgeS+yGruVyz5VEyVscb/TwEscxYE=;
	h=To:Subject:From:Message-Id:Date; b=WTvJI18m/r3tZi4sk4wER1mfAoan+E1Ows+mbPfDMRa4SLzPwF7biRrzakNb3kRWouDWRktZ1WCNQ1HHVcQ6ILuVXjC2mCWREL7IB6+oVxyNEZLz3/0wF6SDEsTiRcod/kFGBGVNOy6AxLE2DLPVVQxA+S1X5T0Uwv1yxCKJqOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCJvgLfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCJvgLfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC14EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790116233;
	bh=+9y6zyXeUvOfy7hgeS+yGruVyz5VEyVscb/TwEscxYE=;
	h=To:Subject:From:Date:From;
	b=aCJvgLfCPcZNQBoHWKalRItOzhBNU7cI97c7rRz+EDA6ugDKEQp0b0LAcMrDTvpv3
	 GADBH4QB0yW+X6KoWmaZ8B9gzoIWwVEi8j9hnm0MOolhjujMZu1ZsrQ2O5t9aYleze
	 OUAREPG2HD9YZGj+tgLzt2A7FVdoa40+hWUGBpbOvvntSTQ2OzXL9Zm2GRoOStn3Px
	 nVTDVp1GsFnvksDiviHPXmuh0Z+u8pdgF9oDZvwMmorm0SgJJeFfXPOniV9s+WxWOz
	 hBVt51WNQrXU2bgk6EFsTWbU2kTXAebyYQn22XJDmB2/PosZC2nS2rX4wwpgGracVA
	 sVM+vKB/T1GUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0441C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011623371.26588.13763019170254289818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d33531192a3304d0d86ef2604565f700f828182c0da53fd5a06d150a15e5b43
Date: Tue, 22 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790116233

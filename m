Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CBA3845AC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785484834; cv=none; b=QdL2uwGYyxwucm67ezfn21APyeR8JAYTH0N5qNSSCr3AT+WpO0L1LL04chl3ZgDY84nM9Jk8aMPw3VyepQemHZsu258bk144r2a82cL3t8KbeOvaZyZCC2Ew3/syz3t+aYi92ocF40m7BifrOMHjahMkyXQMvAj9cBMk4WQudw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785484834; c=relaxed/simple;
	bh=JTX7NPc7wc+cJy1gO03Mwzno/IhVBsVhhet/Zvoi7mI=;
	h=To:Subject:From:Message-Id:Date; b=SshnjFjZlZQvR5TV+vKvHQtORdbcj1I23ScVahmakty4pH1Z88da/NQ2kJ3/kNVR5zjLbHneFCpuDwZiL8TvU2a5ViHzuAN1asOSUEX/F7qwVi3wMZA+bArYnzrzG8K3REls62KJED/l2scoX//kMCPZ/CtlARGHOL7iiLfy4Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ4EFPIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ4EFPIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB909C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785484833;
	bh=JTX7NPc7wc+cJy1gO03Mwzno/IhVBsVhhet/Zvoi7mI=;
	h=To:Subject:From:Date:From;
	b=JQ4EFPIKozhBPubsv54uyi5mO+HIJxtyp25dogAXIllU6/UzBiP77rlGA9kdG7Rkz
	 pp9y/jdguV8Pqlt/Lw7Iuzv1tyF7hmW3T/peJqemoB+zMAG4hxO06ruIcrMh+o2sJ8
	 zSIBxpw1H6VKX7IcaLnRXzPWugCLWFfem7vJ8552Qk+UWpg37atPVtQvwV+EPna6Jg
	 2+dN8rb8+0MTzJpimsa1R0uuqq6GRBfy74SPPnFbVLwjML5rh+lRAUPyVACR4Aj2Vi
	 kay0MhmchBZCOL2TGaB27ZSM1ZJmOhPCfQtyRaDK4XKyU9p7KK3eZRlqmMQRmY4rMX
	 HOJAtHYmb2MSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D1AC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548483374.10881.3572472923563225340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8582188187b1c2a4fca78cc233b1cf004e448e538aa5d34625880c2b2ff67c7c
Date: Fri, 31 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785484833

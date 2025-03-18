Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63E744C77
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742269793; cv=none; b=pYu57llZD2F3kXrX0Cs+XveitfbhDvwL6uwAGf7aU6Qe/GYviXwSheL9tkdYnyk4Vl+Z81GNIvvPLV2IqhSrDAMV/xyfUQTO5iJD7PBeeSFfz5RCvK/M+femjZtAceY0c1b3vkJ1GPDsJHyxrbvS49Y7+QUDOrjfzs/9ntpj+5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742269793; c=relaxed/simple;
	bh=mB4uR4aAQNEvUbgbtehfWiAmLPEZ66f52kAEkZzlr0Y=;
	h=To:Subject:From:Message-Id:Date; b=Wh7OTVMksX/1L4WgOg7tCOLFXmjpepLYP8j6DG84kytS6FqJuSK1FzKWj87J/wD1fWeVCkRwxYjsXOp0ZrtF176bkbh/FC3LhZ3bQ2pDVE6TOJm76qwodLwJtD5zXGTmc5+TIo3If3e7cmEq3tnQByNixXgEuaFWEiMP7P12BGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZitTG/Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZitTG/Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C37C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742269793;
	bh=mB4uR4aAQNEvUbgbtehfWiAmLPEZ66f52kAEkZzlr0Y=;
	h=To:Subject:From:Date:From;
	b=ZitTG/OwkTnsJvatb5a1RvrYDgOAMlQ5A3uOBe5sefb3LrCMg8ilSmmMZJC0C9l5C
	 kjqnFoTbu3qqILrUdKVwPFO7UTgFwureFzCkUXSM8enBLlS6C4R9pIU1YXiEMmFCHt
	 F5y33xktcgW+GRP4457jMh+7WooPqerWwEKYXZLAg0UHGvemcGN7v4zMWSm6Y5HSsR
	 TS4TRdJrdrcELkfwkG1+3g2BItG9trnLMpxLtezNcAjEJoJEYraabDEaLjJh/yzQ9Q
	 M4IgFjw7EvwzJBLdGuEHuJ/GdYOMr9ph80kCSpgCa0cJ6PiBJVXngf2bYG4kct+zih
	 FPH99htPychlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92020C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174226979358.1268.10061575794223391160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7124741cfa77bbecfb5a60161b885e024e5de381535db76dc66c14cce3bb5d
Date: Tue, 18 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742269793

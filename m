Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2F35AC1B
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779393754; cv=none; b=a3QKBoG5AO8WD2EF2e4SE/WNK0Rck7RsVGICrB39GqwPH7rG8uPKHxIo6w7RLUKR90PFwZ5G5xNFV1P6Le75k1h46VF1r8QZY/yXEUN4hMeldrl04uQY4I0A9xDnMPFJTMjI+s/MYAfDWIrxTbTm/epd+keR8X1QtZluTM5xEBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779393754; c=relaxed/simple;
	bh=I27v4FJZjzTAcDL8CyzkfhhxOPs7+qBvw9DTHWaGA8A=;
	h=To:Subject:From:Message-Id:Date; b=mINCq3wwkspGXhfhOyLvgBbOJC8oRuJ5DI5N7DYZGz5i3bHMY/y+gT4Cef6n+t9q/ad2nSY4JI660y6L3P4sFxB0qFJHEy2tjDM86ArrXRBYR/5j/OKT9fA1eE5YL6pXW09CVM+wE0dRynvRTEoENCeM+yXzUEGR1kzcUD9k/4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i74ken8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i74ken8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42A0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779393753;
	bh=I27v4FJZjzTAcDL8CyzkfhhxOPs7+qBvw9DTHWaGA8A=;
	h=To:Subject:From:Date:From;
	b=i74ken8ffusCfhUE/IJQPWzTdzV6Etv2MJodG4DwsiMFGsInprQGpUVE+54rbwy3O
	 uPdNX3h2rOiyO9+RF3DLtHEY/gPVWxFxkd6HHaZ9q1hhzrdyQkMv0Wx5qs1WXcyKHf
	 wzzG7RK9LV25MQLMamK5GFH7xeSQZO01QDe0KPvoivw88xAtJ7iOPI3WsNg/kSAhK4
	 kRW+/gmiqbtrYyb7WR+BWNKee/tpRAbKWaTYqkDvueLa8vxipIWY/l/rftSXHPsCD2
	 LbRi0kERJg/y3MHxIJdhOt9VpDPgToS4rrgjEb4by6T8T5GaSuF0+QvxVJgBEBTFR8
	 NBNJ3Q/rfg7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE546CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939375368.8074.13766021570567615412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6fcf55634ee7f26e9ab6d8d57e98a91a24a066fb6f439e2346ae61102fde40b
Date: Thu, 21 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779393753

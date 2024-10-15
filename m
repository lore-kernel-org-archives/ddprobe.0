Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E4A15699D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729023354; cv=none; b=s25RR5m6/CHPrd7KPawo0Ucg27DDq/+geIwqtq9E76WNAGfdm3bOmuuWTMp4U3960nUcb6ykPoIewomGni+yLhUIJdeWz3uiPvDD7JJLONyh767fdM4VzDQF2+gD35dqlf/TAPDl/+0v24LxsLe89GgijgMRFXynonVL6ONCWQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729023354; c=relaxed/simple;
	bh=tug0eR46J+SRW5tvcPIeRxGfSGCm7mbawzl3elPS3Vo=;
	h=To:Subject:From:Message-Id:Date; b=OK0pk1S9vmwtxE24faaQZhY8G65B7qwy58DS33TXoEsPBGU/DD7IlHzcJvG8am6yOgC+gy67XVUncZxJF5Id7KTfPshF2Phi5SaeZz0fggq97qw/eu0EV3SxpmoXMrNyzadtRqnl3Oau3BBmtb2se+iCjdM/8TS+BY3q/Q9hJEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n33xTwoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n33xTwoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458FC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729023353;
	bh=tug0eR46J+SRW5tvcPIeRxGfSGCm7mbawzl3elPS3Vo=;
	h=To:Subject:From:Date:From;
	b=n33xTwoQdukugR/Nfxl3rZaaJG0VDKtTcZ1sdGFzWLf1VTZAmBM/EdjUtxem52rY2
	 yt0hdCirpC/cM650ZwoPFRzdwvRh6IqXiI4z2dNzRIZLB6XOKLiLm4DjCTzQR6r2Jt
	 aqgLrxPUqoIbfNoXgm6QbgLP/kqjFKmFz9RlqbYe4tkdC2MxZvcTZ1a3//2sukZTca
	 JskNGa961Kd9ac7YnhbDZpCyyE3q7tGKIarXYi4J26flquNga+2QQPG8+2oNUeg5CO
	 /EJDAdWquBWDUbJeeuyA08AN4+AypYFAEBFIBjfUlW8lroefTS9I/fl9IGaELTSdqA
	 E+JD/v956K8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE1D1F9C6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902335358.18331.4373434471308434837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4cca644dbf19749c54db4e833b277c0ed8b7ea7b6b9ddfca356e57472a3b78
Date: Tue, 15 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729023353

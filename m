Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF6723B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758823195; cv=none; b=AH9WkNsIZeAP+1Es5ueGPwCxsURWQ2ttKBIDSUQ6M+7tRROri4Y1KF1eacttu3O/pYBvzQFs9JxQZPh07l4FBzDA0Ncpvmz9K4h/DBWtp3FHtMxcmqrz0acFWCKrjiEmVKn+IvdkPdtpCPcF2R5Ki2jflkM7HuMJ6E9tawWmbO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758823195; c=relaxed/simple;
	bh=VoexPEM0LZoIrFBe9FrIoQSL0tISAFDNhKI7U/ojNoY=;
	h=To:Subject:From:Message-Id:Date; b=fama4QrY4ArtJxrHR98RGiJ9nfDFYwq3KXGMhJIqPF8inEDQC83PlCrQvRk0HGBSdLJa5ItWLfBIifO+vsW1u+58oDPAZ77PvWcYGmn30y01Ddz5k+Y1r7XadoELfPdG4HBaCMaM44hQgfZu6hlQU2g9bof54Fld9mB1CN+5LL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR58t8Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR58t8Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8A4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758823193;
	bh=VoexPEM0LZoIrFBe9FrIoQSL0tISAFDNhKI7U/ojNoY=;
	h=To:Subject:From:Date:From;
	b=bR58t8RgZLWck4xQk5Kqq1CWFBiik7He2DitVnFBG+Vva0G4nB85z0CB6Yie9sFYJ
	 8h39veo9vOaajFvUrrkbLldorB1ymTRdV8/W7DsYsq5FTTUwAf6LZCu6iIAw1SDfSW
	 4xCwB8ToeTdXZMkl6D+nhO+Abe+bbZu5JwOBaIvqKNK7RfYWQapkS/GyeDRWOQV92x
	 7Rg4rXYqEuqFP7JhhCLs9bsWWOLMq7vapQN/GFJ4ZUCdeXu8I9lyNKKaKWp18bomTX
	 dSpCkd8F3TlwMlyxvr4WhSRUm0ykLCHRURUcKcnI8vhggasTgMNwH7YAdTSyWfNYWA
	 qrK5sdR6UadKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B193CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882319362.6683.12916009563194375347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ddb1b748bb43cc5ff21918979cc7971cfd9477e029c757422e8be7368c401e
Date: Thu, 25 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758823193

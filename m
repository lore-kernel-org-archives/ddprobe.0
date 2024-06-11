Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425E618E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718064503; cv=none; b=QIeXLAaU1R3f6KK4ywv6KEfyezVy80MeHP3SCRI1tPHz9A5UcujPCL5C07KG/NT3VZHqnJmhfRrTrNU34qNm2tZZQGpMdVdIF1AzUFlWNv03VxuCevLdUufo9N3lCzJotOco0EIc/JjymMBobCcPkTtUObZVGQ91ZItBq6qtIm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718064503; c=relaxed/simple;
	bh=y+PFs7932G46Yl+Qba44u6qdA37GnDtiEH/HecMS/0s=;
	h=To:Subject:From:Message-Id:Date; b=p/lyNPAOYImkjSMpQQhH2gFhHQ+Sgte7eCRgb4hcpOb01Wb8hShgQq6XaUQrfD/xsR0E+k1pEMUv0SyMKX69v8Ptn96g7kENvxpqvQmFio61ee8vYbtFDq/xYjLm9KZ63DfpjT66RPsuoXJsZMLCeQoPElNzT1dBHxRS4kJsZRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV0xbALF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV0xbALF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D279BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718064502;
	bh=y+PFs7932G46Yl+Qba44u6qdA37GnDtiEH/HecMS/0s=;
	h=To:Subject:From:Date:From;
	b=NV0xbALFDJGTglIdfCSrtFiBKkzIs4krkeeIeRNRGolcetl9mj6VFn9ZX6OsQAnqZ
	 KA5zt6bZJ+J6zquGi6k4ZPnHvm4hLe1E+IDyr32dYhFo8h8dGITeAK4hKraEmvl9le
	 qxeezMI+DaFykgJIueLOktepn3ewRdV31IuUSKUrhlNS5PAS+vBGdn+K9wp8m75Bvu
	 47PLdHUd0kERE2A7OqnOK20CPNG+BrMBdKh/p+ZLn/CYEdYE/ay3uaFdypbdmJeOfB
	 MhtFOyXQQD1K6So0p8Gs19X1y1ja189zdi40V+a3bOyKWFWh8pu8k+x7qk8g97i3uF
	 UI2JW0deekFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7BEC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806450277.14800.7016748798260452483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f238b664702af34e6bd7b0eebd658a62d1a0625572ccd4bd8bef6b434f30252c
Date: Tue, 11 Jun 2024 00:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718064502

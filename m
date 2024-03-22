Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D538514A93
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711094296; cv=none; b=pGIxpkzaA/1kkKTE+KUKbX/eTlOulJmBSDkzTTiQ+/1c/UyjYEkNjQ78mvFDgeWgFjWJy+5pndGox9ero83gxcrH0xfkKg+ixJoRVkZrSBduOqsxzikP/Rk0KUl31aIUmYG7IDd+w19QXHpUfGII3Vd5bAhlfu6BZii1zRccdgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711094296; c=relaxed/simple;
	bh=lE1jCi8nw0tTkcmPKlgH3fmaXiQbN7RGae9o0NrPiYE=;
	h=To:Subject:From:Message-Id:Date; b=F5bWjPID7jAQWXaEDkDe++Zh/5fDRyCcUcS+2gC/cBlSnuG7EeKxJeMtee8ooWm9V+ecAx2pADAMZpcVDJ4nl6vxmF6q5P+XrQw8FCQNc9NvWO6CauSI3d8Msqij+iAI7QIqQqWxOKt+2OwdGi8J1GSjrze8DEqefc2M9DGS890=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEf2fE27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEf2fE27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77129C433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711094296;
	bh=lE1jCi8nw0tTkcmPKlgH3fmaXiQbN7RGae9o0NrPiYE=;
	h=To:Subject:From:Date:From;
	b=UEf2fE273NQuSUmbZIRtfgBNUPDNgL2fDdfoGadm60FrkaR3dFOf2b5hC2jaU1lM7
	 eF8YyESaU/kNissHLDGKYS/Xa3n1NiiBgCgANBDafoYR9zCb70aP+xoDCXxnYTJrcy
	 Ucg0eRbbYeX89r1Dw764JvgNNNFO1UasiLbzOpmWPHzJZOK/s+jk9wLoE2GezWpBIb
	 zhr64S3zxYruvQUlZJ1NOpBQ9D4OJHUTzkCnqaCKssPwePkZAKjNcE7B04B5UWUZtg
	 UgF51+DlDC8eFG1XkpFMG/1Q6tnOYH2xnr/U9rlCJLSRimVwjDlYQoVA/PA5KeQoi0
	 vf14+c2fEVrpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65336C54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171109429640.17415.10379095843897392980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c2abcce74ad30f9a8d5ee3e99a9efe95ff2a0c9cb55422d78d8d5757de009f
Date: Fri, 22 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711094296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325C83A1685
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775644534; cv=none; b=UFyFRsGBfxY0Tfb08GqR7pjK72cV7sM8PGThX8tD3z6w3yGb/PXi0dw6LASZQG3zFNu12JoJeHXrwQggSf9E8iAeh1N6WUDSIwkPVAh88MZibdfQv/UpnCoCmFwUNDp5dzkvTR8JKO1bOoVKHVJkLt/CQyxG+J2bqqK0GauK0D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775644534; c=relaxed/simple;
	bh=GyqLk+w3rgaLBKVlgiEJ99Xxet4QB8dZUKviTNM/sNM=;
	h=To:Subject:From:Message-Id:Date; b=Ojcq+2rtglj8cNy1bBDGmyNjTBNMyGTKcaXEqmx0Al0eSLtWz0qnKllBtqC1cryDILR6FQAtXK7105ZCAEiWREaGxsL40M0BBnC90aMVmixpJVVjQIgT9F6tyHwEchyFP183EcmaI5et9xr0H6i5AxA/YqIZHmLHy836kXEs828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0xRYwe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0xRYwe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF75CC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775644533;
	bh=GyqLk+w3rgaLBKVlgiEJ99Xxet4QB8dZUKviTNM/sNM=;
	h=To:Subject:From:Date:From;
	b=r0xRYwe7yDoQrovt+Vz/eQgeXHH1mtoMtjy1FpH/F+wJ0DmZID7r8TqJnRd6CxfUp
	 5jMJNwfxeXJ4Rfv23Bg85h7eoeJ5sfGFphKnKUJxGK6OCG3wEPxrzLGxwkymnBq9A3
	 UEnfq+kjiQYdK2M+/FecYHSCaOGiQvhN416iAao+FX/TqGH+U8nN4NBDdp1JATZOvE
	 oCa5AjioJUfUGNeVapivv4K3kL1hlDM5T00GY5XqWfBHJcoJYj8kzEZvNUgSpELuaK
	 9PC7gsRVWQ9lnlvo8QdkKZp7iM0PhWR90urgQHvIjjcFqoGICo8uhK9C09JO2g+74M
	 k+TefwupFxRyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB176FD5F79
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564453369.20421.10146632656713467226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1aa08bca2f498742055d14ad0b4bbb8bf10cde65c15a7bd51483c7c13a401f
Date: Wed, 08 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775644533

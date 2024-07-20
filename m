Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429E912B83
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721510754; cv=none; b=CQK2ScmbIXUVmc8uZMv7FazxS/OfVyXNxCxmAmxC6REofmsRr9jFVZ8pYh4NLblSqqKM4QzF7HpBG6n3oYdb2HxyiRVvs+5W2yE2PHYj6iQTchAmI4m/u87nIbRVH+nKkgug/jyMhfIcYa87juOiKENvfe6NZdM9kliGgx8BSKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721510754; c=relaxed/simple;
	bh=2Ow//TIKED21S8GyHu2d8XGS+Efa/kIFYZljMxkXKAY=;
	h=To:Subject:From:Message-Id:Date; b=AKvaA3DB8sLkDa9B0Uar79H7Sb6HxRuxpnM/msjA1IFkW3iF+TmsyAy0Wztt1x7n8hjFDCmmZV8F5V2kAwEiGQhEaFkBhMRgPSo32njKMoN1oGB2MQt8TtXoNkoRPY4lKQi5ElsSQXpiWDnfKGSjYcc8FGpK+TgDOkITfyBqvGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uj69Y5IW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uj69Y5IW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C286DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721510753;
	bh=2Ow//TIKED21S8GyHu2d8XGS+Efa/kIFYZljMxkXKAY=;
	h=To:Subject:From:Date:From;
	b=Uj69Y5IWCVyd0nH2/OKsah+4FSIy0jqkmnKpo3nZADuNZz6Bd6kMA0KjLcm0Pwrgb
	 vOGquiyLbuZ2uYQ8htPzG2Uaq3A/1tJI5UHb+HBJP6P2VHh9vred6wBcnjbh6pcOhA
	 hYgr2BzLG8lnol+jhXVmJZVpDKLZo6G9zXFl1c3vV6DtUQuUcxKjfseqPTO9q2PJJp
	 aXacQvik7Kn5K0cnEUW+y/ycAVfFKS1zGW5HtDQGKaGMJaKruDrNWiYJESDWEdvEaS
	 Tc+U7GRgmHten1BGOEW32MuGNhcIIld8aoKgPq81CPEGmrr7aXOsYjKh6xo7rGnPcu
	 i6rkl/tyyeWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58FBC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151075361.2066.17331563296307267548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18bbc696e9e54c8ca4767de912e8eb15310cfa312771eefb3d9b3b53033aca7
Date: Sat, 20 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721510753

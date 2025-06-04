Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B33A242D80
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749026394; cv=none; b=gCqkuxLLqBoJhnYSjuIdFl/reNo0iEh9fIuRvgY6u53lU2qY8e++/iagPLlNy/2CtruqOrWDcIoSG8E1sivQ/PXMRV5EgADXomDw/7jsAvtDAluprz26MYsl8Kf4neGHAWM29jROFqQfdwvVEk6/SWohqC53cHYyjzi4CYcgLNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749026394; c=relaxed/simple;
	bh=MVUfGQgsVZuVyfqDYA87gM+PKnpn1GSFnVoo1HCVbe8=;
	h=To:Subject:From:Message-Id:Date; b=fff2d8PveBhjMDDMwueP/VqTuVjWpG6ilHNEPEVv0wEGhI4FDRC0VZTS1M7TLyhY5S1PNPsGV4IekhkGgIZpKclbiyPfLDrY3m0OX0hrDNfU5j9dtV6/z6q0u8YmBEZ9cI0HeW0p9elpBH8PGVCu1ni8+WrgFT0jTx0Cwjt/q7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFWtLehw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFWtLehw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A459EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749026393;
	bh=MVUfGQgsVZuVyfqDYA87gM+PKnpn1GSFnVoo1HCVbe8=;
	h=To:Subject:From:Date:From;
	b=bFWtLehwurlCd5sCg63xO4vhIAq6/gighwFJIZBhcaTibmNgRG4S0kCVbCMEn+EGl
	 WDrxBPUYmEYqpm8aTiKTY0E2HBRfFdfoGnFmuopjRIdmkPuU3MnhC2HZ+wxceImKGW
	 kZr9W+RHSKD9CfSL8fQQrS4xsFcNhFeH4sIqYxq8clRaT5H5sNlae9Q3YwTbkMC6ls
	 jeB5NW7Ss8hv0urNauV6pXUNNbigkvpKzEjJJwIJYVclB7WP0RchnevPoUY11ocPVR
	 PE3/EiRhtwWqwvIYVi2lPkPTbR/AQrekMj1CkO0p/QJJwEcHZT4KCvS1+dQD76AfMU
	 id8nfVF2Ha5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94711C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902639359.24612.18154316354336622541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec032ef99e8b64f4e6daba03e8ea8bcf0542754ce5fdb0a3d7ed8e5c510f513d
Date: Wed, 04 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749026393

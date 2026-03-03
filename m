Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57648AE3A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550894; cv=none; b=jVAxHfgyzarH2mfTb+m0Ex2nhu8aZdZiEdyaCV4QIdk9T/nqzBZy6ohOO2rhdpce330uTaAd2OonBgV/6VHXO479v+pMi1OX8cgXio2EtAJN6xdl7JdyHEFXjTZ0f7pmN56Y6kpQgLfWmfctVtv9rzEYJ2ugWBirCI0m0C3asIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550894; c=relaxed/simple;
	bh=2Dj3hdiUeaboYADVrGT0miclhd95PRMDrEj+JF/2omc=;
	h=To:Subject:From:Message-Id:Date; b=os2qsj/iQAfiRCW1duonleEGRdup4/KIF7xnkK0UyjQRUGmlz16MTm3blBux2qiuukuz/ImN/yHjxAYcL/+nYL0YL/ef7xSIml2PyH03dZZezwHqVKU6TWNTzAL7B1Xr10d8LBfWOwJfez8ZMtxkh3Hamw/eZMmBJjgengaZNII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKCO5s3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKCO5s3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25A0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772550893;
	bh=2Dj3hdiUeaboYADVrGT0miclhd95PRMDrEj+JF/2omc=;
	h=To:Subject:From:Date:From;
	b=vKCO5s3cRHFHKwyswm6SZz0ziOiUUuPG3G4TclBBEYzfAwXxRS9yBBDQq5dvQjADk
	 +KNq+7w3jB93OBG3hkJ6WSJ3UR+IJn0f6Q9XAK6Zixh8S33GrefOfPtIIhJv7x1rH5
	 hCDK06c5VvBlv7DScA13FjTndCHZm2I6QDqWDAtjLJrAq1GtIJO2BufzL9anfM4jGU
	 T7NYxwZUsdllw64G5KNKxHcYBbPxlpk92vFE6LuWsahArMKagz/0MrhA7lkWMZSHA3
	 po6oJvhBQH9Ta6pQHqquTznqEgV3YjzAfCtgkmKolJZfNTbYHxOEkzNcgUdJT/N5pg
	 EbRC5IOzFVMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BF3EDA686
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255089365.27760.2633031066394888474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781d3900cc9d4aee906fa1f28b45c075be430f297371e2160a990c988f63fa7a
Date: Tue, 03 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772550893

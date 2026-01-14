Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB85BB67E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768352033; cv=none; b=i/jjISM1WZdqINznSfrjMJo/Hz6wQl9kR2Idck+froWAkb+oMbwQcnLPmfGWEsdNKdVx3ma29qU8wR5eJTHzzuWcc0x3mDMuF6GP3TDjti0LYiK0XCHuvoN3Ju6KR0d+Qvhy3hgaTIeh6GAITivp5+VoxQlfqJxqvfipcYYKP4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768352033; c=relaxed/simple;
	bh=aWw2CIHbxD6RA9m8txgIiXehDWCt+3zRloNoEi85xnw=;
	h=To:Subject:From:Message-Id:Date; b=mdpC6dZxQv3eOMQrUnSKBuzmpb3p69C7WBOmQ7PCfQbS2500uNr/6Cv6uctbKY+32MRdsH+6u833v0u71w86AJ+Hxfq7K8GPvkG3qKyebOJT0Q4qFLvVuP9DYTaDJV/2C10OhBJw5aFjUrnhGGqy4jXKoSwVbeNquDQiCj9fXFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2alsp0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2alsp0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C5C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768352033;
	bh=aWw2CIHbxD6RA9m8txgIiXehDWCt+3zRloNoEi85xnw=;
	h=To:Subject:From:Date:From;
	b=m2alsp0CdzMGWlADLYLM2N0mCxlyy6kmmfsiiuaJqLCXPkkobwkkWVulRPHd0qTQ2
	 JqWgC4PZknrA+Gqv3zvSNw5vQuphf2tpGpX793sEOHW4w5DxNDjrtv4YUCtffE76yL
	 1CmnMkyFb3lwnHVOPyNftLDQvvDUe01Sxf1psCVY5hscuJu836iynRvQ//Tij/0vd8
	 oW0uqhlfW3ZI0nQ1BY3ejolhNXJnB8bCMrmYqPuWsoHgVciF4IQrEg78eHUlgQTc5P
	 Qrd01z0MC+urz+H01uIglaDbGva1YUW/5D977sjaiWMdgZm4D/kbN6/BnoXcW88nk4
	 vh4CSeXb6TsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9655DD30CDB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835203358.18699.6705410445505627170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6822221142539a87ca32d5dfa0825fe4b9b21e7446cc17cbbd9d6778a6a530
Date: Wed, 14 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768352033

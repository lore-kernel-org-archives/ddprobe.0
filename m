Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100495383
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752324594; cv=none; b=aWlbDjyr/t0SElgrwDYMOswZXPaEvR6d+kV/PUMFuGSDra7ZiwbzG1c54/Kk5PGQikqwNHeyAFhVLawu8B8VWRLhy6sxTvfPGmv2M5LuFm1J3OTDYt6XeeZycb7ZVgDHv3O4Rx2Khif7UtfmEX241/9XkuR86+OWc4Iu96RtDgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752324594; c=relaxed/simple;
	bh=UkNlvv6l1INSUcApjgHXsD74T8QclGX70yafiZOZWQQ=;
	h=To:Subject:From:Message-Id:Date; b=jvt1ZatnZrq3Y386E2ixshNn3J2e74XuYK6PwtDLtCoDVYa8mpaI59p8mMIny9w+m99VfaSEWtJAzC4zr1NlDklh2A4zVuGwi75pbLsDXtgKcypngWYL737htahORQIz89WD8HK+9je4jiWOYNkYFMtpM+6PrnqpGkqrYSvQrqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtLT80Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtLT80Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F613C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752324593;
	bh=UkNlvv6l1INSUcApjgHXsD74T8QclGX70yafiZOZWQQ=;
	h=To:Subject:From:Date:From;
	b=CtLT80Z1GkVXSNHCFjUjxz6r/PfqDZnlvYxmxNVJmddETEO/jtUb8Ba0LoVEiX/X2
	 PPU3oLmx2/+xGAR0Q2Huimn0DnRfJ4fFGRIJxsKk0wU9pjVXSJnLHRnrZ14d76ESwy
	 /gz1+cwWYuKJI5kN51m+E3KPmzKOlET6T/SA0i4eFVAxE/yxSMIpI1ovI2YtArocYJ
	 drRuzTPfrstxd7nePGk2SGfowD2v/iatp/Uz+kvBDn9N8SmfkfQEph8mp/jvz2vuxu
	 x01fyXRr/+Ki4rkAwscreQjK5kArgO6q0w5gltFge41CICcEStj5Xbr6lUffDaS6HZ
	 e5p5jydzbDUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB7C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232459357.32560.17665492517869813677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1803ba46f2a444045c07b23e262e14e27f36ef17feec83a4342da062ec03990
Date: Sat, 12 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752324593

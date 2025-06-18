Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE752522F
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750226394; cv=none; b=JnofBedSzNiL4EDTrFnV6gT/PLnSMiUm09UbggcLOetKfQZvBR2vTyb8lM5KLOQ+YxACAMUot0zCYU0FXb8v1tn8XE3jHF5U73iKnqEh6e9iN/TnSHjE48r+v6PXAuXTCIJleMKG0p6RSpH/i0TpLaurixbdTsDsHOdCG1mKwZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750226394; c=relaxed/simple;
	bh=FABoy0j8B4rRZRdUCL3rnwXG4VGpbQ/t10Shq3cmO/E=;
	h=To:Subject:From:Message-Id:Date; b=k76Zqa/ZonIdN9e/r/Z/ZpPIU03kiym+Xuc/h+YVWru+x+R7g4rioy7UfFeac0bQ3TCjjZ/0mhcFB8YzU7QaZ5Q3AuT/JrZB5q2UDqqYvpfw3dyVSmiJOefBhH1PBzAqTS0UW9SP60eX+HHepKOgNez2zCxWK23n9XceHuDnPjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq2ORQTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq2ORQTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC3CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750226393;
	bh=FABoy0j8B4rRZRdUCL3rnwXG4VGpbQ/t10Shq3cmO/E=;
	h=To:Subject:From:Date:From;
	b=nq2ORQTzcV0G4qtthYiufCF8tQIlCMr0+wY87Tl+6qyr5JRXlww2eILj3ZmPVp5+P
	 5QlTNzjXXQYTot+HoHBrf2fFlSr0IYIv7iYs2Tonv6dSrFZ56MODNlvGuUEQer5dzY
	 iYxmC1BiQ3lmz5ZtLE3J1PKjp5gTi0Pm6HqpyG8xB4Sb3809SH6jnCKPoVOLo4YfsU
	 9usBO187+EdN4RqHyW8EzUsp1bq3GXPiU2Es/7aq8kMzBRIpAtCjmYyNKKK/H7kSaL
	 GrivoSq9b2qMwZuXk/4ZcY8GAtPLrvwPzuHjV22gTEEQ01KxUSe/LoqRGuJT1sJ7GM
	 ODPii2aeaMLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99014C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022639361.15219.11349345571441159381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c72cb6c53293ea10fe353bbc5e46fac76ed2fe3c98d3698d53b337a9ddea72
Date: Wed, 18 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750226393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2A028F3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715428943; cv=none; b=YmDDQUoo/Zb1fKNxJJtLAUDexW6QzDCB2Fv6uOs/LJfqzl9Ow1o5OFnEiM8TnmXweKNHXV/3pBKEb3lWRwyaMUUtSwaySdalyem2dE1MsL3JSZ0Ijl6hsW4eX1grPX1QrcL0yVZhd1TNhNvDVxP58US80H3HZtu+wUpKu94stgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715428943; c=relaxed/simple;
	bh=A0FB5vA7IOccAWFagbaXKEvw4YnM0NHCbFDhdcQ0e+Y=;
	h=To:Subject:From:Message-Id:Date; b=ga2pdM3TFoTyAC3v3f2xqUaBOSK0791+nbJ8WRO1jlPj4S8MtDfO9riZaEAsqcsGQVE2ytb2TRL4o5Bft2bgHCIVKx7xbNZ37fEgPPF+m21i3ss+VLU/3+bbHMoKVrz/l2wpPPPcrTt+c45F6r6YS9P9DWK4PzmHBdKE4FF5/u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahnQ2qnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahnQ2qnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A20C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715428942;
	bh=A0FB5vA7IOccAWFagbaXKEvw4YnM0NHCbFDhdcQ0e+Y=;
	h=To:Subject:From:Date:From;
	b=ahnQ2qnh17RwV2A0rcbDJ3XZe6auePsXkQ+66hN1aW2DSzWlpxQVfCjo2MoXlUAqG
	 yh7gAMBzzlzlYai4aZMRXp8/g9O2eidzXpgEnEIZYztELp0mEzKRti12cBPzwMmnCs
	 ViM3xrgqlFzRQuxzEI2R0pxmbT8kxUqvU4Ishg1ZNIomdfY02kXE13gvfUk4CzZatp
	 D07FPog7f7VHV8UKjwzPHa368+mcn61EWcMX2OxiqeTVp25fYajJPY8LmZbZrKGjxk
	 Vg5ANOjJo5A6zqZPSgwvi/yaRQ/QvqbNAQhrE+LYq8mGAQHUFXLceaxdCGN83Sj0r8
	 GE2ZmLF0qYwCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE36C25B75
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542894279.30313.3672180218969979227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3293828efe0abf458f32514e10ff5b0b08f0f7fd26f879d304d64ad8b8f154d
Date: Sat, 11 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715428942

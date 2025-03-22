Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D89BA53
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742635194; cv=none; b=lOIm/0s/E+ew4tqX+hZA7SUtXc0dkwdcZwT8W7PktwPUMfNhAw7X7yaXXZXjknC6O/ME+aLUAfQMxwHTeBwFumBKPuB+b9C/g8zg1ZIDKx/SvIov84q/S0wgE6Fk00cXfQT6PNqLOFl1OJhwU3ynblF9MCTg9ITnuhB2LSIfzu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742635194; c=relaxed/simple;
	bh=y7odM3c5L58syhzGX5rLCYPzE6GCUU1I2DUG69dlX34=;
	h=To:Subject:From:Message-Id:Date; b=bO38g6uhN0IHo6sRetjJ2SC/PjxN4vzuaUw+P2mwpU3aGu8s/2J5QjJPeJ5yCANDzycrR+BN3BdoDha6one+dR00OckVVrY8yN0k66+Zc8KwjSBeSGsZwMK+FgSuipAF4/DOKupBuWjwm4uCY2fTTSv9uBMP6omoUJTTKBLI/fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6FiyzPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6FiyzPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B330FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742635193;
	bh=y7odM3c5L58syhzGX5rLCYPzE6GCUU1I2DUG69dlX34=;
	h=To:Subject:From:Date:From;
	b=n6FiyzPzW0B2cCO/3bNsjEe4A05ex4/ekLbt7O6mNjyz+smLg065Q+6cvFkvmdEw3
	 n8MP+ttKywO8ZFy1x8GoQxbdQ56tvdUW7Dmxw++8zsgE2UCkNmpVA7V/4yavjJagYK
	 otOAVR2GEeolll7kSUxNZPKyoM74ZU0RQ5KqGcrWfyGEb7mSJydgnMk1T6zmXdW2EO
	 E1deO9VTd4T10errBv7PIJ2qJtoWJmnIh7r9B8XY2Co58DA/J3US3SALuFrpg6mbPc
	 3jv0zQJ1EO8Ztfgml0PJQwC7dOszuOomrF/IQ0am2fDLODDXqv8fTb1RfGAkMFiGMS
	 UbE8Bo0lMKnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFADC36002
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263519363.4534.12064028708521119669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860b2b125e84f5685fba604e921462de2c0e53cbef1e61fd5a08f95eee293126
Date: Sat, 22 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742635193

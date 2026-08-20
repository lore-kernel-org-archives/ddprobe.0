Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C206A389473
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787201434; cv=none; b=YdQd8eYu3ROUQ/N79msdpbuxsgfYqq3tSq+Bj4vQoSiE7ThhoONDOJzKCMPv7PZ549JYx67b+Qf+b2pcISfmwaSHvv7etWdM8oC+OE94iTNsSlcnsJrTPuFFZI6+bcTzMYQ3tQVxIaSI3qeqmWJHNh2adoV+sUjFOeNCOrSn3LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787201434; c=relaxed/simple;
	bh=NVWd6tO6ja+VTIPaSynoJPs4eSTypuKEMk2/63on95Y=;
	h=To:Subject:From:Message-Id:Date; b=QY68JNoA3UEasTUql9HHpQicYWMVOm/0jrtug/76bmCg0SGnvzXsSgT/H/0L21LgMS8ywDZDoTUMoEyP/kGHbDLSJVEUfOUtXXmCe5v+9xUBbvXZYpvK+6YfHYMvfRgYQA1RnPE+XxmJsYg4ZQfsptpdec3f7zFTWKDXd5NOI3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUNvaseU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUNvaseU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8F2C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787201433;
	bh=NVWd6tO6ja+VTIPaSynoJPs4eSTypuKEMk2/63on95Y=;
	h=To:Subject:From:Date:From;
	b=GUNvaseUsNGoBfqxdx8DiWPE/BEfW0KBbcJ45CmiZcTPOJ4/2z0LExv6XaJRSQTgl
	 gqBni+/xEsaLdciW+bGCohc9pTlOEG3VUjmAHDT9HFX4mgI2Pzi5lSFKerYJG9Natr
	 T6VXCdAixM2HLBE4P0tKm8eGTp/7j0i7RrLCHDF1HcQv+oXJ3Ur85ogbGEb2p2rph2
	 ikVHD5d/YQYl1rGVOoGmLsBDozxH/h7HvHGbIR7XKfLTsetZvwuIGNJMzP8XSNfx08
	 e13BZMArqFMTEg1ZfnajlPoPvsD499O5/PjMPZKV8j2JR8ag9AnodWktZyRJFkfRdW
	 R+zZ2Iq2JLPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD57C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720143368.30634.12316915159979456234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652c2a31dc2e3ceaeb5740ef934a6970f05290181ddc92f088e5b46d285f48b9
Date: Thu, 20 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787201433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142A31C5D77
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763928714; cv=none; b=mYSRCSnf0FDXlJDcEdD11MOTPkE1r1CthYlCd06BGrqib78frH688WirMCd4oWuWvRSSbfkny1OV+IGgW1hUdrfPK1IJFb7f8r9Uu2iHRyWQXUbDc7Y0tgdhEsCUaoEA9Ww7Hfh/hh+bU+RYE9Kr8GY+cv36v5FGBU5NFpUsKUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763928714; c=relaxed/simple;
	bh=rkxns0XDG5iTuEVUHlWFyWT+RfGYh0ifeio6K77HWhw=;
	h=To:Subject:From:Message-Id:Date; b=IjbFpQ9xIrnMvD4mAnYN3iS5YOnJwyHdckvouK+zi5bU8DHWEp5E4AhmT5n31ZDVhN87eesy+nvQ1pukGOOz3G4vVA8Lxz1eO4m15AlppSpiQfGBcVsRVQTbOZ7Aca2wJhGzUirxhdW1TFkwJYjQMnFvIyvKnaIMIKfdwJSNqOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8bmUgcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8bmUgcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5764C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763928713;
	bh=rkxns0XDG5iTuEVUHlWFyWT+RfGYh0ifeio6K77HWhw=;
	h=To:Subject:From:Date:From;
	b=d8bmUgcxYAR/Geu7Yu2GIR8GQ7HdzY11U5V7fCLVk9sHO5utg0z+e7FYT0jQtJnWV
	 8DzANg0YphueRYoshg18PRVGx/VRdqZ9RLGQ8oC0ixNWLfiVLodkQqq1isogezHfQ7
	 1bWDgR4f0xmD/lAQ1qJ7Mrs6kaXIHpZ/QxZjoxSCEZC/BJl3uBQxpylxtMljeL2U1M
	 NG3A+/g2m0z69E/ZNaOxYe29XA2/NoL81UYOMVivne8YtcZEWxa9jtQsvbL1ilf0UK
	 wYOAqE/p3exnNUjXPfRiu4FzZAXc0wspuk9H8tba4qnLNcQ6EW/px5fsBEHXZ0lXnM
	 vaTbvRMZwHTIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC4CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392871359.23974.1706580780925005863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea35f4e75b6cf370eb6d160c5438fffe99b1fca820950384a9cf1dccdc6a323
Date: Sun, 23 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763928713

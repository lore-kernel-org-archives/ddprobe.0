Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937B22E3F0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789840234; cv=none; b=ZVBNb2MKz66I9SPzCIER17nE2dCpr6UsrZwnlUylNuUPz9bSkUW7qAQdslG5ZL+VDzIEANfkSifKa6xBYE0C511of5XJ/x7tV2f3Jm4u7T4z9SLKG8YUiJuV5tl3P1hNZrR9ELmvL4ukYDPZUswQ9hHfBxjkiA/Yc0yEiQEolK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789840234; c=relaxed/simple;
	bh=IJ5BZT69LbmMjmJu6DhxovknTCo5dHgbmXUeiF2csQM=;
	h=To:Subject:From:Message-Id:Date; b=jgRj3/fm70Fda6mjPRpgVIDFod2R4mGjSa9T4H4j3yoKuD2D2en+TX0t3PL0n6DNyfB1FGzjZeBHZDLR5nfByq/RqAwhgFkY1biLSTooTFRGankP4dxrU/w93lyLmShGO0lWhPHwvcBw+hScjbskh8Th9AvdGotJcEeoea853Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSDvLC0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSDvLC0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE397C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789840233;
	bh=IJ5BZT69LbmMjmJu6DhxovknTCo5dHgbmXUeiF2csQM=;
	h=To:Subject:From:Date:From;
	b=FSDvLC0y8UrbNNotEiqwnOHQlNRbRrJ9+zkVEQ+Cr0jpDVEkvozgW6sIL6tgxao5/
	 225MqJXez061x27qEdiORZngVRKIW69Ml3VAq+5EBIV2amRLWpX/IEYT8mkmKa4b1/
	 pZF0/gGemVAvdqNgF3nV/Tru4xeppT3vFNxNPGgrd0rQQjoBq0ujcjINnoszw9zy49
	 4PcM8x4AfQhMgAsG8rJB3oWLqPL/eiINdWIVYOXC5zkNP1e5oAlRtKwg2K0MiNZlnS
	 TTyh0Lckzx+GS8VSJY2y2rtQdkslEj0EU3oFlGvMBUk3SZ/NUziEhckceqyxx/lvVz
	 1+K6RnNezvGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B66C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984023368.328.16797800386617514495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5983d118256f94bf9b7c87813da705e30ca996658ff196b51c537cf243977869
Date: Sat, 19 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789840233

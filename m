Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A93013A865
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717446923; cv=none; b=OAsVvDBeNq+1AxGWEgTlUtm4KeiKjqBMeJB5usHOGg1MvJ3yu/To3wPxPWrbKME6lWAAGfO9AVwdRYUdyyWNCe/4L0CWJahJve6FX4mitiKNbOBmeaQOh1uxETPZGgHzExgI1JiPmxMoqOIXDS7+eUDB2tcF2TB2Jo/8c0Mp0c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717446923; c=relaxed/simple;
	bh=u8W5WZUUU2vL2iDMHCIjWwerhQ6/9q+ALbccmoSLoM4=;
	h=To:Subject:From:Message-Id:Date; b=DuPT7ilctMKoMDo+/jKje86t6eiapRPX6d3tUXPRj4QO1N3WQUffAi1fYQPt/9275M2GsJDHX/RveK7jxn0jJIPx5pHVRF5GawaqxAYnRrVoyaHkmj6opX4Cug4oIzAAzMb+gnVOV8KY8muYXa/pAMQvukbybtzHeWPbsabkvT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqZ+dDrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqZ+dDrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB28C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717446922;
	bh=u8W5WZUUU2vL2iDMHCIjWwerhQ6/9q+ALbccmoSLoM4=;
	h=To:Subject:From:Date:From;
	b=cqZ+dDrqMcxGK6+3dYfSZj0qxv2ltPBWqHAx7tmcHhK6w4vL9jn6hl9rmsDfQzdxS
	 b0C54ke91SBP78Te672/IMGUdkX7Xtj4iER500Y+AU49ZLdBI2OQ4W0miP29NP6tFA
	 RNA6N9eLqJCa92AJujyptFAUWhRhksSby8NP5u4tz8N0QarDhSzH7bB2YduRvFqz9Y
	 wN7UxmDXYfsmmr/cv3LkMvmkF+JnjjMVhBlbqNTsX/Kz4L8lCCeEf7KdrOzXL4jMpi
	 XXSwLTXOUh0dqmvIZjFUjcSuQbG3pWd6/WV7P7/vv3jx1uU19eq+/9u7vdHGr2hn3S
	 KNA6EjWwAZxsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2081C25B78
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744692278.18723.14974510048451581488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61554efaca2a3808bfe976040848a1863b0139b78f3a1e9f86459d84e07e1a9e
Date: Mon, 03 Jun 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717446922

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383E7322A
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791249034; cv=none; b=WTSn2RQKPKcEf4hZPzZOSAEBzLHn5AnQ4IHb/46pUafcRhlNCKUBfee08OM7UCBtbgzxD5iAlfUuUppvayucEL3SBrds3FBCPARFLx3n+7IGe/9Mpmm4mw84zA9gKub52x1y/rR0dJppGeI1kk/y9MzPx3LQDz4F8IEihvf0DbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791249034; c=relaxed/simple;
	bh=lIPS4JntITUezR0/EYqHpAB6jWj+Te71QHvWdgIG4R0=;
	h=To:Subject:From:Message-Id:Date; b=YaML95p8J1Zp94l6p/HBirK7/rKW47to1Q5zodrbhKqQaVk40tEdNjwgyKlQ1Pk8FUtX2p9jOOROr1F5mbz6wzQE6de1BFAXC6F9C3HEZVuh4q+MuWb+WMBe7ND3TFJxou0+UB8plm6jd8hwOR902xd7ZYfp0AyZX4h8kJftuIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUzeSupL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUzeSupL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EA7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791249033;
	bh=lIPS4JntITUezR0/EYqHpAB6jWj+Te71QHvWdgIG4R0=;
	h=To:Subject:From:Date:From;
	b=DUzeSupLL5cIMvrPVoqEZfuLo7xMoCvJjpNUg/RnJRwc0QQ+Y7Qxv+caP1RhZT7sV
	 C3naaJaiTaTYfhJ5VoySESDwP5vtW6Ur1bPMcxVSvHJOFjQyIL22vyhncwQO2m8nle
	 9CD/RUEs1yVLAsz+jg4Bot6foo5HIuNHy+rf5GIyLHECoR6N+uNT/2PI7dJ5DZ87wX
	 PKU8axIdd5znYvJfFCEO5t3YKgZiw79IbAiW1w3lie4NP9BWTn5IkGI15DgExyx1Z+
	 6Dj93zEilTpPlHdikQzoqaEazr0NZclu2STmJ4lImiLsvQewids16NDE4SKyNOrvSi
	 Sdg+/EN6jJkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008BCA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124903368.20035.6149122917846358868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7906ed15e153eb26d9008f9e7dacbeefc4309ac93bde6b7a5322402b6cbf6a94
Date: Tue, 06 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791249033

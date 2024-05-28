Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C69DF49
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716862463; cv=none; b=iimlhSQfx1czqgevTVTzhWFpoB8e9bS3YhXINpAXqzMrjHU3n4UNOtEaEV6Zk/bfhwXYsDp06wXVvtBFt74Pd+uuz4R2QuuGGqnaAXHVYDo2rFImbfWayX5F+at44EdzXaZPMdAGEZvuObmQumTUn+7XnIZu67UDmNH4tt4yPFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716862463; c=relaxed/simple;
	bh=4KDKwKUZGBIL23ft9r/dVLWrBXgx9jBAN9C9npcin6Y=;
	h=To:Subject:From:Message-Id:Date; b=X/15DVA0PBAyILbzdWQg8ol6DkSNALJ5RMi1kEHUGF0AEoV0LKZPCBdFEvTdXah+AamxI/S+gujzeSeEi3MKx+caH4N7LGWhrqwuTQMaO8dbYoqNGERV6geKov1elkaPooW+Af7FYwUzLYcB5u6W0whlncFimqXfzXPq/vyv960=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzXKP1+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzXKP1+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC53C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716862462;
	bh=4KDKwKUZGBIL23ft9r/dVLWrBXgx9jBAN9C9npcin6Y=;
	h=To:Subject:From:Date:From;
	b=UzXKP1+wzU7g+uFOYO2/DGrRzwKjwLmeo62UnxrwOX84JntR80IZvvhLQ259+PiX3
	 UP8/aHrHyUvnWwFebff1/phlRknGGFZciqEj4vhZ/Rw/7Gf4FOG4LdP0X3Zc49qg0B
	 1DxW7NbzvwYRRzOtYtVHnm6uX7js9bw5mLcRZcKEbNAIcsoIiGZL3TCk9I93LgD1TQ
	 Z8L/69sC8d95mD+6d0gglAlK0cGB5nVjUKebqCkz7qBkElSvXzJPsTOhDY1lWIHNpQ
	 /51JTAT/0bGHIIK7PDA1+xPiVgynYILVIS7xunZRPspGol0ryhGp+pymTsFDGSY3aw
	 WU2xcFxhcoo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8416C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686246277.19992.10409814291921659054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26bd776d054b23cc8c547970e3d96dde4ff9f76e0ebb3790e26b8a3853953d3
Date: Tue, 28 May 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716862462

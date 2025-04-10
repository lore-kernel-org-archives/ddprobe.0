Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4165A27468
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744255194; cv=none; b=VuVj9l42Y9DCCT+ZvjMfLIFT1YguvC7Mt39Wo+tYkrhdHBrZzDiDNdt98XR3ddgnOjWuW+iVxUwnT4wrGlRV6q0MO/IZ7Xkk/XeNODa0rctU6jZ7Bz0e8RKCOzOpPlAaLXRU5a2nTGrkDWcO+r2CSXcHtnG7QBERDpFrwzJBFUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744255194; c=relaxed/simple;
	bh=znbGUWQSYz+26M0v4or4LZP2gK0tIyTFYQF7yjG4zGQ=;
	h=To:Subject:From:Message-Id:Date; b=jn1gGcZayXCLetOTDKsalpVkYFq2aMzpk7dSjKhTmz26tE61uorZOOBUtmtbgVwhGSsFVH+v6AFvxlaAv6dRm6JQhAxQ2k5D0CNjyfvLuC/rVcy67Mu6rNJZ94M+nlbfF12XQQy1lcFWz8b6XMnWTFv5hQtWXak4t/LgRAVKDr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcFSNNei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcFSNNei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744255193;
	bh=znbGUWQSYz+26M0v4or4LZP2gK0tIyTFYQF7yjG4zGQ=;
	h=To:Subject:From:Date:From;
	b=NcFSNNeimZiRz7T5xJosNQZSuMIN27Dr9ROwh6HmC4COal8+L8Aa0LQCY/R8+vYzY
	 2CCYmgRb4T12gesirg7okYt8HzVMMCQaxgyCNuoLqGKYKc0WVbxUaB6P1anLen848P
	 Po0HPdPjZhGCSWnLmxYgLDUnRIUA34evGAGIvr8Khnj2fWorz6/KOEYZVa26jM04xj
	 SxGrD/ZZ8huq4dhRRJ5h+1kOItIOZub8NDic8kjVx/o4KApFkV+agk2mKiZfC+ndK6
	 USyZryQOcLmO4B2LEG4jK3cLlp63SKeSDebFVXvwlI1I1GE5qlAymy4XPNXkOkxrWr
	 8hXcrat2/khZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98447C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425519361.2129.12813106609201312729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64ab6d71e905ac71a70f12f953d7ab4367f7f00d0c2d431d61ff41e5851e272
Date: Thu, 10 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744255193

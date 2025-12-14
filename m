Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB2A249E5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765683774; cv=none; b=XbFOJ0ZmJerk6b7AXOPHBWrJ9eiiHmN4iqRuVb8exYOoLymdfhJlIKv/dYx6g2UG2aDNaFml3E24Jpu3IeTcrvULZqJJFtfUu4eXBexUlQqHQBS7zqENlXecw3MSk/5i7s8rSlI/0GNJXO7pok+lfDm0y2QdJICgL7LKEAS4LJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765683774; c=relaxed/simple;
	bh=m9vb4jD11lLeRtebzBQCBocvifarTzqZc1ZRseU8rb4=;
	h=To:Subject:From:Message-Id:Date; b=EmBbFtfXLsoAvZaIMC+l9JWV9BdSupXFmOrT4ib2HYWS67nupGy9IlhkOLO3mJ+S38e7FSZtK6TkOYCkxHJ9XLU0xej/t+vAM78lQ0L6S001SPllkRDiIL7NNahmtWrPUU3gCloQOTlNmIaSB5f5qkKLU8Oo3X6N4aIAf8F6Azk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz34R+Gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz34R+Gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC94C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765683773;
	bh=m9vb4jD11lLeRtebzBQCBocvifarTzqZc1ZRseU8rb4=;
	h=To:Subject:From:Date:From;
	b=Uz34R+Gjr1GXQUzrohfnodzf1knsBXMF/BYp63tyuSNoTUuvszl7I2ZdSzxo8j1RT
	 k1uVdzjtjrVkthZMqkfVopXkTvrxy13ApP9b91cRCrAb8Z+OuC25JwvJh0rMlcF5F2
	 snNYmLC+Dcr7jQB1YaAtAlCDkl5HdBaJgZeAqWEMWWWo2IZKdN6x/XsfEB8MfGEPQh
	 vZzb6mGHltj/4OJu3lIXfq94Ej7F9KIMypG84aXQ2LkpGvkr9ZqagjEAnT0mTb2sEi
	 940AfUhi0GF2BqOWd9cSWPNMW482OA5D5zcekLQf0a/xK/K+0s2KJUnJYe5lyv2hZT
	 X6tOCckoCO9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9787CCFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568377358.12997.13068894665790859472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed9c3ad58a4f53c78c621d058251b1dfd4edd3f837cce5a5847eeeeaa10d3f7
Date: Sun, 14 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765683773

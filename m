Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BC924BBF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757482194; cv=none; b=MANSBt7xMDujNj4AMIsQJWKaSZiMSpTA8Qdcd87hVdUo6f0vM2hS08MUK3NlcHdqkEMX4ttE01c9tp4dMY7WlqQLdy5B+Gz5XKCaDenS9Htf36qsoDy4UcCvV2MLPf4qI7uwMH6ldzrvcNim30rddi9oC/Fs9zXWJhajinN2o34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757482194; c=relaxed/simple;
	bh=NaJRibI/sKq9NGMGMPAHSDtHWT6FIOKI1H4UivNEUJc=;
	h=To:Subject:From:Message-Id:Date; b=X1GeUEHWBHfVVJrDrNFAUF6cS5z1VaBa2jHop/zKIOQdWrrSdSI06xUhbfXnmuDUZkcETbBWxd8p4EGyZ8l3zpX7XGG6BXRnheMziDiEIsDnlTBOwPvKR1mfVSfkO/dO4TWxRmIZdgLmrttW/dzv4IJzk1WmOUPPYDEFNeqOZqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZrinPB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZrinPB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3062C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757482193;
	bh=NaJRibI/sKq9NGMGMPAHSDtHWT6FIOKI1H4UivNEUJc=;
	h=To:Subject:From:Date:From;
	b=ZZrinPB9Gxb8nLD68iKC/TQyU0t0iAbvG6HjmrcGKQAayXi0NzhvsAusEWvGT1DVA
	 YjcKy5mp4CNXQIF9wNAEdzqs+wKyuZK0o2HgkaHAjUe8nuHdlvrLNmXkNytr2XrUen
	 Cjnid7Sy0WDCDnHZlsZlsBSmalZnHYHhPGVV//QiH2WoUQ8lHXOyDNDJXZkUjDVvp8
	 AjGoTmTyDqkYgZBANratnp5iSMMg7PWmg3fXXlmPBX995wbOOz0SkgOmEKmS8UMkd9
	 PqRP3SwRBeE2A2QaovCB+jf4IU5OzVpNeLXf4KnC/1zEo8y9VF6nAGi41LU+gOn/2u
	 tJGA3sXyGcmpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF81CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748219357.2484.334785419529755272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac489f8edde7112f48537d6dba4160ed32ce6ce964a3fa3e91ea0fece8920a6d
Date: Wed, 10 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757482193

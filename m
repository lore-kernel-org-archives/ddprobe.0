Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F235DA68
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786414834; cv=none; b=MmcTbxZ8ks8lNyEoPF47D0RwPqB/HJPZRKWfS2+tPiKxe1kbGywWXJlKLsIXadE8qgT0lGkvH9zTOp7x5IOA9iSvA6onHocP1kB97NVV15uJHwmNkOgvljvK0LQeFIqBoy/kyyHmDWvkM0hiiPs4gl05N9lETrgNvjwM38STlrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786414834; c=relaxed/simple;
	bh=1rYMHf3l53CHNqTGQoW1KP1j09wdHZpUijWyLDoj2FQ=;
	h=To:Subject:From:Message-Id:Date; b=bQT0+A0wkBGQEpfscuk144114tJ8bY3TJy2YV1DeSgBcdNj+k51DYfPfVabKC5WCUnqug4mcqB8yohhOHpdYrnlhioADSmwlMSdCG6PRQ7Im94dpw78BJOpnshq9j1t6CabEhx82RL2MUMoIInAOZzinHOblVYMEiWxIXCZgdIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyNiBrJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyNiBrJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDDCC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786414833;
	bh=1rYMHf3l53CHNqTGQoW1KP1j09wdHZpUijWyLDoj2FQ=;
	h=To:Subject:From:Date:From;
	b=IyNiBrJnvm6v/+PDKZK/xXBgt29BHLJ96uPLQtdkhjIYjNHgyTz2ahdKhjMHHLolv
	 psdyB5nI4WkT0q5/iWgFvZ85Z+W2+Q4qtERkz6zieNzcEaqlqeK2Ylxy+Jwew/QmSm
	 3ZWc6o94EYewFHgE9/m78D/vVUGNSx1Ft92rsIRsuV2bXWRX0EgOuPmjbISwlc+AVX
	 AZgaGGbcArxP39AoUvMGkI6eqLyLE/uRY+6h3LA4PeW+R+c93CXegCrKG+niKJkNre
	 LfC/5gXK5k2HN8LSYG/qt7maB2C2DyipA8UfGH5RLdXh0eWdYRrrKMNUd88C6mtikj
	 Yait4pk2Es24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFE2C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641483368.15139.3952092040788604991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6613db4b0e44d1ec0efd5f9c00dceef72661a687542bc3767ccf6fb5d7dbb31c
Date: Tue, 11 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786414833

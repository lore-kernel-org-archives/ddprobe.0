Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F34013D51C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717457723; cv=none; b=NT0hKGHTa7nVzMF6VaOPL/j4JJ3divs6z/J3yaANT5yT84WsldzQzk6OV+/MeUKH2zuQdn0q5ABHNw8lmc835kXo+fcF/HVBcBizQVM4kNOmB50rMt7jrjLAnKu4VC84blWcHpUMoJLclMLLIeLTejRbWOmS4ieJ2h2unnDnkrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717457723; c=relaxed/simple;
	bh=7sNTFpRwtKGFgjmwKTGh2zKODhiX370UhLUwC8+Ttvg=;
	h=To:Subject:From:Message-Id:Date; b=NObkgIf6sTv5E5a8L472l+Zqa2XMbmxvAr7L/yEisYSsdwPihTc9f1s4pkNW0s5ZjuefwE9QUfKo1GTMc24fnZW/Gdj6yrhCWJOMLI6iEQGnFg8VzuRTcrwAM9fDWKEwg9jgs13Pha+Tjj4cXeFAiVrzLO1ghu7GnBePbu4WHI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsjqvJKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsjqvJKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D39C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717457722;
	bh=7sNTFpRwtKGFgjmwKTGh2zKODhiX370UhLUwC8+Ttvg=;
	h=To:Subject:From:Date:From;
	b=IsjqvJKPCUScNtW4DHsJncNhrHgkNSDj1eff0g0pZQj2q/RUCsb707syL6+m6cdhE
	 Tc2Ww5/4Si3dp+l/OJj0zKsLZXcSMeIVw7OdvcELIqndYahkSHku7qnwgsZvGMnz1L
	 BDZRbxuyJoPjDZ8eOIu4qNFrVzjkGolxH7eZbZSSh05wLvjEbsxqgAnjZSAGgeC8GI
	 Fk6oCCHq8+7ZHaH2NngoOAuj3SPmL1NaW2TP6cy/dA5kAZBQcIegElzzGySLduxEW1
	 QwsEiEHNEj4O8IbwGJwoKPgKNHXfXX2zhkRmBQG+RefdqV7f8u6hemzs/otUYc6AUE
	 2JAa6FtRoImgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00A8C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745772280.7026.2462836371607007411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa5dabc87e5afedaacfe8ee30fc2a38246e04d427d1ee2ca2c33c75c333744d
Date: Mon, 03 Jun 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717457722

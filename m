Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709B261588
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747853394; cv=none; b=AKl8qw5ACmQq+wvRZueaqCspteop2Dz7jwnGIJ94wiv9CLX8QcDL0xrb2jGM0jhqcDf4FRwMQD4fUR5pN4SRofxQWjNc1o3jgnNsYjrzYsTzHO1mMrCLXmH/hbiqVrkS5NFL+0KzOez1Dyfo57Y36wnjNXen0DWaUICNON3i7As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747853394; c=relaxed/simple;
	bh=3I0xgXWJ1x1XmKqnIL9Bzi56sj5g0pnWTUgXldFYbEg=;
	h=To:Subject:From:Message-Id:Date; b=uQZyVfEc2+VY/gZJqeAX7y1Sc6S5ZgPuYLvL2jTF0IfUu+8Ir03hu6iPTGTC1pLx4FSpZmYRnjqauZif9VzQ467bo+9f7gaTqD9eHgT7AOV1b4/tTpC89cMQMlN3iKwObo38/O56/ewODmUSn3Iu7FSHp0We6MRT21RTaOY7wQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlbSxklI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlbSxklI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5375C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747853393;
	bh=3I0xgXWJ1x1XmKqnIL9Bzi56sj5g0pnWTUgXldFYbEg=;
	h=To:Subject:From:Date:From;
	b=jlbSxklIer6g5+1nU7GNlkqanrekc6p1NECe2h/Lsi3rDvwQK9CwolH1RLexaVhvR
	 0/OWOGaypoZVr5pWCMDBTRsKweYQF8+iV+/DQOL70PhuGwNb98QF2OReotInUXt6qe
	 MCKzswWJBxZmQVOgw4hlzqJE9Lfwb+kl5MZzgBfJcVxtVZ/IfHPQwAIIPjW5Smljt/
	 OUgWOknxoKpWFRXhxlzX89xrpfHB90nYiII9G1qYA/3ce3kA7oqtQNgJUanolxp1Gv
	 Qmp16QyceLib2XO8qB4lF9swjf24efb/t1RwkQhPCJxe7L3+5ivkbMORm0Gmiz1t2W
	 WhSB31Emih+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0688C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785339364.28565.7371769663088855990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07bb611e93fb2d14db22b0a7c4bf468b4c1b646574079cb8fddd55c59a23f2d
Date: Wed, 21 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747853393

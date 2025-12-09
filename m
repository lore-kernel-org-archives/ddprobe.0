Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE7A72606
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765240974; cv=none; b=LYsHiUIdJYJTz5K+fJWAvv/Lp9G44Tka6tWFFaZ90MYcsA2TyYR2H90ODg8zLFDGnj62xbrHXBwFswh4/T2i/yyXGcwRJ8VqpmpueWriOw73hg1Uis4UghcXP9LELhZlGQ/vTTpyWvlUQVz61fOaw35WZhjn2zm9NCMEI4Li0Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765240974; c=relaxed/simple;
	bh=7lJ5ZMxBzo2xaSVCmSRkEy0EBapTp7JGEIKBJxmgZIk=;
	h=To:Subject:From:Message-Id:Date; b=EmBrb8DPigikVSSItI88sFrsIjrvbB4ee/okiObaA3ApXojO+iLIxeMy2aKb0nWOgG2GofZwRsdQJ+qwfyRNnVgz5fRqDKRdeI8OwLeAXmD/mr5/SmhI/G9CvQijh2kSYiwOb9Ew++ACW6S5lt50N6t5cau5Il7y1n1Mb3wPiw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhLp8Eit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhLp8Eit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB588C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765240973;
	bh=7lJ5ZMxBzo2xaSVCmSRkEy0EBapTp7JGEIKBJxmgZIk=;
	h=To:Subject:From:Date:From;
	b=RhLp8EittDyFpqjMTP6C52ClGNErgMy1C5qT6JTwkITfHuGx8OaAMo3Cqydb/EiK/
	 xP3/NnwPd0FcH0JIw5CwoLbPopgcC3MIlYHycKEDZN/3Z5wWVPM5trviGK+c4+LA8N
	 x2cLVKYvU0qlwh/YpLFNYApkPvJSMAJDDJGdnofaa5SorjEmR8yjTstF37h3dMnrzI
	 6LvL7SuRx+gWFZLsNugrr0Iv5b6UjPg4L/M9EK0bLK35aRNCP/q+qXkL1TccETocKJ
	 C14ZyMpCHWuuC8qNfIJ/0OZoRTO3gpo/Sj0bnUafj4pzMPIg5bdhogPSjJ20xGe43i
	 pMqBJ7Ggytbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A80D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524097358.19029.17806016088007417036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792694f6ee146da7b9c4df34d4fc9641651e7ea3b3c05dcf01cdbed4ebd18fc7
Date: Tue, 09 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765240973

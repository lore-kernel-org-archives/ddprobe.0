Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378EF35B138
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772549094; cv=none; b=IOENjAf7fnms/2RTw/PtxPocFtEBw8k0lG7ITMh2YbFsHoSj1zXgw40tad1gajtgkUDsfvkSPgvSNNUzxhDPsSg6iCGbXyWvAeHxRbgUSHDr1dqa1ucKYUWqhBSmaEdgoTOXKVJJ8ff5ass7Rv/aB3e07AzU1HfXgWxXN/scnds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772549094; c=relaxed/simple;
	bh=AoKwTwwpXWm88bnMbOStZv8OUpQkHQvXkoZCCW8w9zA=;
	h=To:Subject:From:Message-Id:Date; b=BYwBKpyZ50uGTvy6jZ3KO5edY6Ow1NLJxx/Dh2o1qtoWdlgRqRe844pJv+Yc2wCv9Na/iHsgr3IcQAI/EPSYdN19tTW8ZHi76BSqlGbQYV7upKiDxdHGrNjV4INdj2yaMc8F5jfNHhyqOxxd4qbFGWZo0orIWKgkGj1+FLIZc9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4WsVHBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4WsVHBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDB0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772549093;
	bh=AoKwTwwpXWm88bnMbOStZv8OUpQkHQvXkoZCCW8w9zA=;
	h=To:Subject:From:Date:From;
	b=p4WsVHBXfuziIo00uQocFCuyQH6FGmGdDdnjGPWzpCb5F3HSDdC4GrrWuPb71+U9j
	 ofm829AtQQYnU3mq4l41SlZAKMGL9wuE+M1+5P3gtXkeBIp913FvPbRS21syy3snFN
	 Nr4M5lR9cHHHX6Lo9JRTwVgOaMW08E4gbTOUSiRyD6z3LPIvSWF4lIg1cG52PhjwAi
	 ukNuAVtLqACv827SPK7pw4Pf6JgmoDFa5o7nF56ZYtkhwZKIdcSqgcYDlDJn1Ey0J5
	 /zDmLk9aTnJsJj/tzceQBHr+b683zjsb0NJa/JerFzLFuwaUk0fiJSs4WTiQBLZFmZ
	 q21DfSds4Br6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A709CEC145E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254909366.23186.15532200978684554062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81680a1ca0e329633b86c8cfc98f14e301c957c45323a7ff076518ed99b54153
Date: Tue, 03 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772549093

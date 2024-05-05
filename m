Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C2A1DFED
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714931543; cv=none; b=aJ+W8VZ+5cWqvA6YIJH3fG+y1T2uAogCO46GCPMzaIzktGswCHLwnkcgIUl95kJZ7bjV+uzuBzksHwTtxBgzZJ4AqA6XlsRKn5W3yI5hwOsCRAILyzkJ3MTEy1VrDVNizwVdHLRQAGFGgJFHq9s4R9Z/NCYpdNsTqi7HbHaEOlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714931543; c=relaxed/simple;
	bh=4pme3ZHMNmIJCtXfxaufh2REq+dSVlxhjvdgE0BUOvs=;
	h=To:Subject:From:Message-Id:Date; b=B+jGuCK5H1G2KsNEpagQea2bPhXkMe9zmsD23vq+R8zG/YYJoJFHmUbUyoBZ/dF3oREunPP+FWLbXJwhCiAvVDACHZEQk/YBzxFqDpEpyr4qOr43SHsM9hFggkCgaDfqkH5eZd3Td5W7mgjWBql9F1zdHMlAHlpLuUf1fsr5blg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfXtTpQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfXtTpQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF02C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714931542;
	bh=4pme3ZHMNmIJCtXfxaufh2REq+dSVlxhjvdgE0BUOvs=;
	h=To:Subject:From:Date:From;
	b=sfXtTpQobZg0E4jZzWMxq8JQklr5NtmgacQoo+8PAQKwNvSBD1a5DuDDKnjRPfoZ/
	 FlX2HHrGtsnmgKalcZG8itzhmBQVdMORoWszUrUsC3O++ui3KrtwsG9K//F9Qdz1Mo
	 vdZpw7CGfEsdZ8aL+j6ar0xNAm0LCQ522i6VKKkz7P6ph2Ych/aZuDx26uwVB8MLpM
	 Q8bA+uFsMh/kxvYpiEhtOiReV7ZuqYyQyRe2oLoiKpRD9hJlSKNiWsF672J+oejxi5
	 E8M8AA5pxg1XbAh1LERTGin8GoMeuSuyUW8gTcbduu2wnQz3hl7daOFJft6Ng37shA
	 7g6I8NImQV5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8002C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493154278.14178.11524207272468884698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aca3642b2fd90db88baa3bcea38d948765f0d6368a530f3ceb38b05b83ad741
Date: Sun, 05 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714931542

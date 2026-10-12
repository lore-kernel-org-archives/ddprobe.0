Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F97F3644D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791785434; cv=none; b=I0PQmO/99VeyolfTQDU2Emf2vVEm4/+y0WuMG1b4IzXmfvV9vK9lZBJWbiBvdAO62HAncoDY1EV9cfThRsZVO0+mPbHxrLYegET8q/wlQnMMMiYQsShEQvp3CGpgr7j3ebPLj5IPTo+eSYpp2a/pgjBLPxcdmAJGP22RgIBb7BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791785434; c=relaxed/simple;
	bh=OiCoz1GPuBNvZaFneZIYUDNjeNepv8n1z6oJUccDVQk=;
	h=To:Subject:From:Message-Id:Date; b=f30LnDtYio55yQtzadD1kWk7+icSWUMjTHU5MHpuGbS4Vyahu3XJ3n1Loxe8lfzPXqCbErEzV297ImUz/EEOscCBV7YKo9GhPIH75ZIWWSK6p4MeNxMFEu+u4l2GudYlWgzKmsc4ggqwNzChjPIyQyAH0okeBg9dLSpOFwYyr/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvjaOYyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvjaOYyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1C3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791785433;
	bh=OiCoz1GPuBNvZaFneZIYUDNjeNepv8n1z6oJUccDVQk=;
	h=To:Subject:From:Date:From;
	b=hvjaOYyWHLeFYg1axytEpU+hnItclo0/GW1z5pHRPG6YVGQVQyfR6i5aHV6jR6Qhw
	 EIG24K5WR1zzxGKbeKDRJC9ZjEqwPICk/mlW2ppFAupq7mxpqbRkT0fTGxDAaPaXZA
	 jJulMykmTD9P7AB9u8426sXRVSwu28Qzt+GvIwK7O6fGdcympQZSWiYKdJz+pfH/Ko
	 Kwr13WXdh9KJl/b8eRObDP5ciQ/JgzMOprpzHAmtSYUqAyrUBVTOH1rWa9G3DJUGXu
	 xg81YkZ/ipYHT1kOg5Nc+mrZCS4y7PRjPHEwPs9LjkK0pjJ9Trsb4hFU4UrMq0k634
	 Eofue263XyjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CD1CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178543370.5655.3143154732349306536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f905383f29bbc40b4422ec15c31739ad6ec2a3535c7299f86b98f0f49a89e6d8
Date: Mon, 12 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791785433

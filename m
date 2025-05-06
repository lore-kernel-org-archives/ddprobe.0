Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1F34AA98
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746492594; cv=none; b=MiMqNKmZV0/5pAGkhSGfnIS3aDh3OUiq9rwsUEa49o9ZORNaJhWy4UR587cgKZcqU92ooe+MjSGoqm16hq6u3aOoWQkT7vJlhassqXOJkI6zFgNDxldCx8T3qZB5S6ISbHd7PK3CoIlFpaqTZekzmaRt8+YbY3VUJFBwhCIG9yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746492594; c=relaxed/simple;
	bh=4fPufqhjFhKewlULQADmM4KguDtjuLUpQLfVuy7GJrw=;
	h=To:Subject:From:Message-Id:Date; b=AWOQ0XHvz8ze308sdyquFBDL7MqyGH1x3rSoMcCFnsjSQuSwZYIftulXF9y5L3umLw4BMPmKSdfothvjFBR4lC+vy2qlPqUUo1Bsrj9FQM+06MwbQv5DL7wc2gfccyRHy7/ImKt9MxZB6ZfilVX7juPEBCcYeVz89Ux+F3tgjDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLJRDZtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLJRDZtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4669C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746492593;
	bh=4fPufqhjFhKewlULQADmM4KguDtjuLUpQLfVuy7GJrw=;
	h=To:Subject:From:Date:From;
	b=KLJRDZtEkc13CqFJ92GxZ10B0MrYmnKFWc0tonSptGxS5yJ8oVkhtZDoZoI3RJxDb
	 8JyAqZ/06gVXF738+dWHZIp201UrR1uN91gD2npa728S+iLklDWbKpwSgdDru9+qMT
	 JAVq2093jFr1mcJXFEtokXjlhe7NDlHzhHsOF0YZreaKTN6WHw/16u3cXFZr665Vcf
	 rSUhc5aMKr+7Sh79OrRY0ozUaHdoRgPKGxFveQTawM8BHHx42sVbo5YYvB5hJa0wj/
	 GQ0+56GYDtcRuOOdLFug+EzL3pGPN1FA+gFlWpWVY9QbafVu9xERV3nz6fgfMxbwWJ
	 5+fSO8ZEfTVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CEBC3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649259357.31977.225418345878357189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b4e702d4d907e71d791dbb0fd9ee01ab8bc67fb127340e1677a2b163b0d5a8
Date: Tue, 06 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746492593

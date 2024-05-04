Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538C91DDEE
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714856543; cv=none; b=PaaN/OED2qBtuYdF743xHFQING/aFMK9dUZpEX5p6wStJNZ19OBZmancFAbQGUEIlmo4GBoUo3Bo8P781v+nkdE//jMkUrdG78+Z4vqs7Exbz2fHZwKlrim5gqdhRtilTPRDlUwvRHi4FPCG5SEvBJKG8ZY/5NugvDVFJ9kpz5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714856543; c=relaxed/simple;
	bh=VtpDyxpq2oACsiKRV+V/9kSDxMAAsEii5fqzBPC1gFQ=;
	h=To:Subject:From:Message-Id:Date; b=RGc91UcyU8LY4S9VBjsp+C5HHaB9oZMSLrpbyEVyFJt6NpjAk6lSkVuRDyVaBsHoVPv8N6z7HL7d/TRmdc4o65ez9QvNqi3WrrkAAsng5paCaiOz1PRQ+yvz2HZ9kEkHfK5fL2tTRlhjV+tMVUMUH8IaCTnlw7tGk+9gSRB7dfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j00m+5hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j00m+5hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5497C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714856542;
	bh=VtpDyxpq2oACsiKRV+V/9kSDxMAAsEii5fqzBPC1gFQ=;
	h=To:Subject:From:Date:From;
	b=j00m+5hzoqBkZYk818x+wDIMHG5jA33WrdaepSiBCdVdoqgOOw/9imJYhQp/T69ua
	 ZPmHZaf59BVsE7RI6DSN2PjtbsMWWhgXRR/wW7/FSCWAHvCnWwBESUTAqIDQ5xqFnw
	 GhkR3U+JwtiBj1Af5lVBl7mrKxP5D2dCw6RYkmPL0ScI8BmnW1WPtkB8jQMY0qjL6T
	 DRjvbDNhjdp6b8no3FVoW7Bk0ochVZkQfiiLGTdOezoPwACgpzpmjUqJ4O6jrFpJO9
	 wWr4Pgxi0kIcABt2bDMqvkiUaMEaAUIkILUKjH1W31KuKUEQJlw97ihjuAPWUB+TCd
	 lOH+K+K4lQlTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C296EC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485654277.13146.1860637762639915714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abd0ed84c90b9177bd9298c2ea007ad614057b3d17e7fde176d4c0f986e43d1
Date: Sat, 04 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714856542

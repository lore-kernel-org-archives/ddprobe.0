Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E06EDF6C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775977054; cv=none; b=epqcg46pX5Gr1OTWzML5w+PsVyiGeOzkB6A3oqGiIXCAs8l2BGaxPJtYt+uUAarFfYGVWloPCi7wS2Q/994Lg8H6qq5rlZRG1M8nHBbfeAUMEAkaDHSavHQzsboib0DsXJiVXwe4zluTpCXySVSCo/noeAJkpAt7cICAhGtFL20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775977054; c=relaxed/simple;
	bh=CMS7U37XVp45bAgJteDD7SahQlfDtiYkhRIU4UGHFi4=;
	h=To:Subject:From:Message-Id:Date; b=bWvZVkXnoEyIEHbI6jM7qvFPSOMNC/1QclVHt8+nIAhGUgGiVwYyLHLigW6IYaW8lEh69MTv/M1s02tWslq867h9xScxF8SDLTc2H6nSjT+v8acqy4J1LaAHxzcbZpqFJlhEDZqUaFJNqjqKXCt5IjdztcVkndFVuwcpSkcqMjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrBVoEBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrBVoEBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FD6C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775977053;
	bh=CMS7U37XVp45bAgJteDD7SahQlfDtiYkhRIU4UGHFi4=;
	h=To:Subject:From:Date:From;
	b=KrBVoEBbeEo2sEGXoqk+Lulc2zYkSwVclgng7dcWcKXZUKsLsHHpyQWm13wR9X6Un
	 Tc/HIvcFe/CoQWluzj2uDpykiP4IzPt6XgpmVPabpqIXpAlleKlYfg/p35zooPu4iG
	 kvhQcqcswCgyAKDQYyZO7BbgdUgQ5UIGUGCgUc23v+NT5slGwIhDLjtpUKI3iCoQ75
	 grFpzpaT9trer5p776jP51c6TBqRvr+2CZNUSeI91rxHPcJQ6jlWkUlLIVU/f920wT
	 f4ajjQJE8yukkSyA+npHhsYDEBH1BcFuLXs1JjOaYgrJJlS5+l6QbSPkxoTb/99X9Y
	 KjkveesVawFtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2736F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597705369.16865.17908341329184964435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79de99c97384482dd4c08c2051a0cae9e13f4c0d5e75f1c84ee21c575c3a494a
Date: Sun, 12 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775977053

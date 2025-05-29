Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211ED19E826
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748515194; cv=none; b=GwzwN2/OfxitYyt6gbHIYDb1amqUsQxm+BXLsAp/vCKT0Vv44PsfPiLOyQeoCT6hoGuhNvS6pzYvSmhusSqYLAWQ8qGBQ9DhezVJNpKNBNTLU7QyrJ0x0mi8UUgWVIT0uJjc95cntcf7KgXf2UJTRQgbPwuCi46UZh590YmNQDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748515194; c=relaxed/simple;
	bh=oz4RczbvoVQG2vhNZgYkWiUCjtOJq0PBIAqJimFPC34=;
	h=To:Subject:From:Message-Id:Date; b=Ob87CRPw3H0PRPTAhAG9ATHdT1+2gq8uB+lP6jO/wYhIxsPHhDfYQChJAHedW445+066d7Vi+S8g6YuW4A3ur5zyQvyFkEOBMiO/2BB1KrSPUwHdBh3vVSEk+dakgXSp/a0v3iShgY28hPdAtT4CBg6h8jv+93lHZs8rdHdEU5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLrbxXXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLrbxXXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748515193;
	bh=oz4RczbvoVQG2vhNZgYkWiUCjtOJq0PBIAqJimFPC34=;
	h=To:Subject:From:Date:From;
	b=bLrbxXXOuG3Ef3H9kGtOHJhX7vJJ1XcIwFy6uj7nLPZ2qteCw336HZaEBH4YCpACq
	 ls2zReI5BNFkwKVP1J26Hn87DAOsMdrBGHIw7eqyr9lvsYqmron0OYizX/BEUQCMIe
	 NqG5vpdSQ2UJgltZao8M67HqShKdLrsYZSTs/9a3M5IHGsXYZyJt3TdLU475/vxBKD
	 cgSb7Otq8rq2cPWdaKgpMsZ+kg+myoKUZE7obobIcFO3xnrVvbN9z9hv6h2klflWFX
	 yc0jnsx062vzJ/g5MlamW8yZ5QJgLJ8yYp6fPZjoUIXIwTthFFfPT3XFfs8iqNgUg7
	 6cUHN9PJeDcvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E795C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851519357.2015.10596232997357823990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e889e0ab549f0e73fb93e46af10242f2c058d324f921306ea23a7239e50ce13
Date: Thu, 29 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748515193

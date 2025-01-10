Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1CB1F9428
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736497554; cv=none; b=oQ38w12GPBMfKNm96OBr3/Mzy4hvLNrBYVuiMARDlY821mi6pYb+2b8PqNSKOgZ9BB2+uoti2JdwKkxP1L4LO5VXhprDNYFL/iodyP/ytRonT+z4VoKtGVqer3rQDD1Jj0WEF/gR3ENYqL33j1sFGfYltGsN8ZE0m5tnQ6r4hfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736497554; c=relaxed/simple;
	bh=x6iZipTtNJvkeMRkZSGGwJb58F/cRSXhtTDoEww3pM4=;
	h=To:Subject:From:Message-Id:Date; b=WB+IDZmMl+sInBp3VRV5AeeoL8q1f/GGe5vuu/JtXoB4q5fCrYcEpTgtdVcHNQeoT3tk9SdzuFVn5AT2SW5V1m8/CNDeKTGIvDiVNBPK5c9JWuAEfCTBTJAZc5T1nX82EfgzJ3QGGPDjerBX3tDgBQnJckW1j9DY6aKceg1dsYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljwnrhjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljwnrhjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02FAC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736497553;
	bh=x6iZipTtNJvkeMRkZSGGwJb58F/cRSXhtTDoEww3pM4=;
	h=To:Subject:From:Date:From;
	b=ljwnrhjmOBdKpiewYVofpPFvnkfUDz6sCzkUyv1M9/K66DvMLO0OQ050KIldcnC6M
	 4VZChfkz4Ih/8hTKnuOHydGf79zrlsSVyM9FX3PfstptoqrGTeBF2ThlTGaj/cW3ta
	 HK5f+0flkkUx4MFTs4NsZdh4p+QOdffnMrK2M+ysjEkpmqfRzHXmARji4YLwrpuvzK
	 cBxHtBg5ubNlWIXNq++L3kcsCYyC4v04mYsjdWjaqgrUGyDWji50hf0Qq8gErFRg0R
	 aQ03Zml2i/i3qkVzwi7aP5N2UrdiUehx5+OlzDK6vAwfWgKQ08G5uewgeZTs56eY8w
	 rXGwjAMm19SBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F0E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649755358.30709.15289534748963583478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e070db071fb108db5ea463c3b19fc5058ae9222ffeec1c4f0524c66f9e1e0aae
Date: Fri, 10 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736497553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CA2382F08
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780872274; cv=none; b=kcu23d8D11ybnHrlaK62n6wXJeAWgvdrGP6NvgAJ+vMqgnBiSIlbF3citdU7a0iUTAJ8LVhgZqX9lM4GupHpavpMW7upBmLpeANUYTKuEBL9imRLr6P3w1qRIrh1V6heJgGz0QPayT9jFTRaW9ymgcDc00FRgfIKdPB+ZrtLNas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780872274; c=relaxed/simple;
	bh=lTvCipP4najSuUQT0K2mntVuQF2nq9ZzfqSHQ0PEO/U=;
	h=To:Subject:From:Message-Id:Date; b=gCldVNKfEWtNfOLDoK/24o5wMcWZGecXj0NIs3bwCmYYYwXKuB8xFyvSUWX6lNPFn4oItCUn5nYjvt2nVJhtRBRAJbilBfxYm+ls5QbQgoqoc3eyCY6t0erVRxCfKsbxek2rvF23vuM5Ghli+ek7cHMLIujcB5IiONRYJjYmQP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ4u0aY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ4u0aY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8557C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780872273;
	bh=lTvCipP4najSuUQT0K2mntVuQF2nq9ZzfqSHQ0PEO/U=;
	h=To:Subject:From:Date:From;
	b=aZ4u0aY90xLRTu9dYsbQnXuHiMhPyE3U7I6SvgaEQjwAft60In1kOj6Ih7lHD5G7/
	 nrXeFhTpDGFwi2UWuF+iiCHO+aHQUOWKVZkU/ZUlOI5ZMm4AbwZn1JXrjuSHMbcKy7
	 eZyKMJANaJl7gZ6A7NbReBkupTaS4rSOmlbnZ5CLWZSfew2LutHWQbtIqgnqse8yNY
	 6PS+g+IMLFI1ZWmiHkjFt4bzCJXIt6pj4IY9ktED6txJUu22dRqxkHoTzIlHOVeppB
	 GbAugJ1Od/P2eLkI94phDdTlO9kjbcM5KeEkoiY9lmUVRoUyTgOW5nwsAxiM4XC+pk
	 H2u99IQXTM4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE4ACD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087227368.29006.16759612577323422520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c6dcb92ca6f3a0d9470f2a27f9275e8ae7115238121cc102731427dbf4e456
Date: Sun, 07 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780872273

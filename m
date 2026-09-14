Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D386455171
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789386634; cv=none; b=qkkuIx5cwaby7hl58JeY4IxPMt295098+dKBovK69T8r9iJZaCtCOf9rjC75e0nLI/QZOhvyxV/yB84rM7rUnA7EkLHE4EHRGy678USj6obKYPr8JhPgO2lzrlo3yubzKARjm5bDW1i6oa7ULJQWC6IGXL0/EBZo7DHJ595vl1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789386634; c=relaxed/simple;
	bh=BwLnDO8+d2ZkVnwwh8ONjKAAqbbqI3ILOnHUwTM1V1c=;
	h=To:Subject:From:Message-Id:Date; b=ORUwdLpn0Aequ9MIFb3xamR3kB7VrurA9tJoHyEqLVjWDdimSoXNtg+KQAxu7Jb0dQtzEVqeNBLvDCABwp3QFNKBcy3gyJ5K8dRvy+xf1OWyneR4NOYXNs/8QNrfZipzFLVZlhFvvkINCLFKrsR/G0LhOVRvmaePEgfxyut6IJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxICbKxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxICbKxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA1BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789386633;
	bh=BwLnDO8+d2ZkVnwwh8ONjKAAqbbqI3ILOnHUwTM1V1c=;
	h=To:Subject:From:Date:From;
	b=lxICbKxG0MvSR6OopdfQxD+AaN/qF+SzeaZGnyGmQjRpKtasRdRu8AQk16WFCKsMK
	 yV+J2KXw6jpWWjrh6LU2q2PBh3rJBwNnEXSI+XiEuHkszrCbb1p1ofHap+B/g+1sry
	 n3fmGE7EqjlELnG4GGnzq/ZM0X+Tgg5gqHpphU6rEdvwz2wv9Z3Q7Oyh8rmw5IUdRY
	 3KmBVXus8D8yBR2zca8vkYeKlJGsntzVT8o4j6dlW8H/dbk4EvQzpH+BDNqp2Xu09g
	 7jVKHvFB/y0P4DCJqR+OT6GOoppQiw6sfmJsxVMOmdAeEELYc02pisk+aurLVf8/uh
	 TEFKS7ckN3C0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA333C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938663368.29363.8533336383273753669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af8ac57fd1c88e4a37d8864b836641ef44b10b4959740ca29875a7140ea4e18
Date: Mon, 14 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789386633

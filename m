Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD7649F103
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789390234; cv=none; b=m/4hv2qG82eJFh2NzEeEClzZpYFpjUYrcIaZpT0jsQJCqki67XiEi9Sz39HLwOvjJgL4KV8eO/59ctbi4LUj1JHNlsC1XQ4Q4aafrvrm1I4MZtypacJY5TTsfw44ySbOm5h3uEabhJCogD/twboGFNfstY3uAUHKl4pJwhSEAmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789390234; c=relaxed/simple;
	bh=Ffdz/dWsbyXXWsnbmHpFw3XdzrbEmY4Wrt8eztg3+1Y=;
	h=To:Subject:From:Message-Id:Date; b=eNlHTAyKGK+LxkfiR6VliFRCV5if8rMznhCRHxnHAOupz2GU0nE8rUuA+iFGtJn1urmDNzqOCY8Dobmr8kPOfyRVi8CbVzoRY8HczwMfQs61N9w4mJEYoW0btqYIY9evFbYRkO02P7NirBEMwApbBFLO6uDhOiWC6DXzk7jyaZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHSYKB0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHSYKB0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01DEDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789390234;
	bh=Ffdz/dWsbyXXWsnbmHpFw3XdzrbEmY4Wrt8eztg3+1Y=;
	h=To:Subject:From:Date:From;
	b=UHSYKB0OJbGKKAzHjO73iVQs7jqBXR0bv591YvbzUIlN1uEnPerU4iZ3gRo/OKA3G
	 pNES5ZAAbzWExKresmppXczVmhj8hfM1JN4boJBgA/FTT28/hFIfbhxQDyQ+ze+O8l
	 +M0Nfr5SxdNSKiPKxXwdpuebfP0wR1ArtqI2RUoGHuxGnxsXMZ5z2lAlNe8nSXN4FC
	 sH7BwHYi0C/vGRyZqUNW9nEnOkgk/x81RUk+dz3zuiXuBJ6l96ia7CSGiWiTPCL7C3
	 PwANu8DrzJZKiyXwTgWA6hv6/ehlWvUE2WXkYK7KpKGSKV+432mfqbcCGvczM5qcv5
	 Eb4NSygWXccCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC19C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939023383.17561.2167854495185989617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa88da294071da614798d39a2a0022244a923096302b75e63425bae2c95cda1a
Date: Mon, 14 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789390233

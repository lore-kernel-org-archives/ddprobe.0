Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFFF19CD1D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765138974; cv=none; b=icatiFN5ZsuPmD+7gfhXPBItEVyhfMQxb3YWjLSnfgFEkXfuajGaux66FRZqwqvVJRViqdtY+loYFN3TcUq+TKqWsp2m/KVoRU/nGdtOtYizUgvuIgmj1fDZBnsTe04POruRAc/NAPiNvcs53zLKvqdJV5C0Yng47E3CsM6QNRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765138974; c=relaxed/simple;
	bh=XFNi44r+YnFx2b2JIHf6ncBymVF0Y9B1yJHCxH4WEvA=;
	h=To:Subject:From:Message-Id:Date; b=Blk2FUI0xNcHqkrzFJRl8AFn8C4Qi8LY41H/4n6ALcW60ZhXTgrkjN6aCaLq1jP5LR6fMfaiEOgxIgbhWDiYvjf5tU1LgfZSPkJ8810VUSv7hjQz+ZrIE2WWJviWUnMOxffcwjhutJgm3dDmQexsmn6UpLbRKvFqvNWfkVL/Uo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmYrRUfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmYrRUfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB490C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765138973;
	bh=XFNi44r+YnFx2b2JIHf6ncBymVF0Y9B1yJHCxH4WEvA=;
	h=To:Subject:From:Date:From;
	b=UmYrRUfKywDG6sdkTq8g9U8UzYZ651vXnnLECEuFO/g2SNypLhMVzZ5CsvNn5GtW0
	 6JPQ5ahdxii7eLXx58xwYJ+HrAGqsREbWZtU4u42yAkfK8y4zMiVKUOOJ1f7M1X+ZV
	 k+9MPPj1Zkpc4wChR8SysuGJtqLYl6W8TOLZovM1OB3KcSLp3wGuZaoeRk+yVcdZZc
	 i1QQOeRK7JCrdlkLHY5HTmpdBmqoPrnKNDbq+iYB3VJhbKpHztA/jZsJsKLbRZQM2Y
	 wOzw0qV5kA3SBEyqDZlA1Mflvi7/k6IVriNObZ2+iZdb4AmZK+kRQGbb+TMG2lxwVx
	 O2Q2ZsTIL/07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E3D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513897358.20431.8866565139304453540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301031dd8c2a0b3a940619ea05b0bca750692e2a9202d600982ba96aabac274e
Date: Sun, 07 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765138973

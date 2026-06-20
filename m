Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4EE24A06A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781990194; cv=none; b=AuS4oBSePbE23A5B9oYdOBbcftRDQfDVQF3cQWO+gWFYnHQzzO06MvLHqD9wPdgJDoCJYJBiNkaWLRuPJMdoftJLN8XgoItoDkovRIsLNyWNsIHhmT+ibPlkeXWRiHUW+i5Nx3Jp5jtYpxLqOCVC/TuiNTWH+SPHuBDU1unoFJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781990194; c=relaxed/simple;
	bh=no0UOfK0pcX7h7iazBvwjxJm6+AibAAZ5WNc8S0XysU=;
	h=To:Subject:From:Message-Id:Date; b=eG2+49eJ31kwQYcZx6hvP1bzk4akae2ueXKp7aN+SAAd68wE+htGO7btMFKhvDbZhHKJzdWX92h8di6nMVPhPlJutNzfTdqecOXWthRd76GErjvbkVtcm4paOh6g+YoEXNekRgUDNlA8+o7eBSW4Dk6HxxY/WX68u76VOi7Pbzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSerbRBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSerbRBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E6FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781990193;
	bh=no0UOfK0pcX7h7iazBvwjxJm6+AibAAZ5WNc8S0XysU=;
	h=To:Subject:From:Date:From;
	b=DSerbRBnyEXlFkEv8cqGFYUV4a9zZGXoZYSP9VsnVbNcj4dy36G0Jpwcq7tR7GASy
	 s0M2HB89CJDZvkZOGvrdNQmWOIACHDcXmaA2Cy6bXVVrzr7h64r9LX39qjZ6FQ2RkR
	 sQkJVhW7Ttj9CiyT4plhgUnEU2I/a0CDqMg9qXkvTjcjLSnRBNoPQUpz66dwOg+gAL
	 HuXhC4IyWc7k6VbCyaq64uK6t+wmaFQBbX4nWj4W6o1RB/19UD5dGuPeTTmIUD2jdb
	 SS2Md4400fsqr4W3tcBoRsYIiJ+3LAqlq63wgH8fswvZJwK8U+Eph6/S1VbwutJ6fu
	 Z6jyUpxGo8HWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD05CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199019372.27874.14720772459758491527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55318a9e107a15ffc7eb376eddb255f40f7d560688877b87a2a8a16bb41684e6
Date: Sat, 20 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781990193

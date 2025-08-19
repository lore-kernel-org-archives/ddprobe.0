Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38565326D45
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755603594; cv=none; b=Pa3J4ThIuZKyKPkXbVK+Ssp8XoZis3DkXySBMZJup2OGXzVqZWMbY//40n7EgGlqlj0WGwpMhFJazdE5b7Dthx9IHgB5txmrdpaUhCr3FapN8Q4kyQTKwve/f4+c+J84kNPcWAv9SuUL5TJMRZUzGMeUi1GBsFZmFeK1/dPM2/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755603594; c=relaxed/simple;
	bh=kqvcqBc7aor6R+lSu1GrYC62gm7XRZLAp3YW6n5bb2s=;
	h=To:Subject:From:Message-Id:Date; b=GUMDmViKEAy60kXdkuhFWoC6DG5XSZYn9KJOnTzvjOV3qNkxb00uU1tYP0vHmFV2DbpIf26JAbRr4nrB/RcUZcjD6R3afvCDmeGGdot0s3tikqoF5xRe0PVoqKKqN9EZdDqY2MNwejCJf3rtzBsMkCPYFDsXusT8KrY3JkBdZDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkjtEgSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkjtEgSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1ECC113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755603593;
	bh=kqvcqBc7aor6R+lSu1GrYC62gm7XRZLAp3YW6n5bb2s=;
	h=To:Subject:From:Date:From;
	b=JkjtEgSOmbp7ehdvur8chSyjTxQGQYxq+JO91ZSoH6CiQxCD946FvRpgsvaZoJYCX
	 LjjWeyNlrkuTCgkpbbsakPn3hROwvuT48F4hcMQjvMpy1s/6dWq2AMK1Ptpi0R/Syl
	 tqkv4uOsvCesP4URXoPq9QPiFWDjBmZIwsbEoDINRdP/b8lFrXyNfiJ10X9yaFuChb
	 7Tgxl38Ur54ILZUz/C9ChbC7oNk6ylPGvANWOdirQBJbfLWVEGU44lDS0Fv4f2K6gt
	 n8gKOvsnPOQ1QrcjUyoqBp1s6XN6FMni+yDiBPdn8KlEybhSKOLwZ3D4Gb0uY7bvxs
	 Ql4ZO7pYG1/0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68BCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560359357.32269.1857890838026883888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a0b0aa24eb7f6f1007930ab0f0c3287f65756bd81640b346f8c06efcc1c7c6
Date: Tue, 19 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755603593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F032C8B
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755318594; cv=none; b=HFx18tNXxJ6QjPzm+ypHJ1OsLUCU1ixEUGDq0T1Bq01TGnS53mLyYpDYGyIZWdPNT/kNW7USJNv4xH0nvdCPSxYXABbu/IGn1N9gOlnuCoQckGHhdooB75wtW07yk7opnHFz7qLo4ht+lacXibAHv00kvbhTtruVbnInZFVNado=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755318594; c=relaxed/simple;
	bh=duEqUQRZw7MQoGG/RLmQu0uhgJ0JeIF9swWysVGHssQ=;
	h=To:Subject:From:Message-Id:Date; b=UOYkts8F5kGWazvF+B0+yX83r3BsPX91uhH1Ybh/AoJvAaQjt7LpPUWrNsyDmDm52KXZ0xE05GHbT4zcvvmvUD2kyG+ByxP1xh9RSA1louqMAIcS3kkd7yhpowJFN6sNJZZ5SiNARH9fOgqm0gW9+LkXSeGTTsqM6rI70d/1fpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJEK0Paa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJEK0Paa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755318593;
	bh=duEqUQRZw7MQoGG/RLmQu0uhgJ0JeIF9swWysVGHssQ=;
	h=To:Subject:From:Date:From;
	b=EJEK0Paa1rXrsk1qhz78FkWdcoulXmXu7cYHU+fT7uxcX/Bx5hc0DynLOq9815+kW
	 UFyne7Llqb+KN+w+43njzdENMp1VH4ZuwRHzdFF8ZbRYAhq2tgaOIvCxEc/k8n575h
	 Lgj7pycRbkvAn5O6K350jvB4jajgzkYpAMGFu6o41XOmrwRDDUB5DkO0961mEBCdqx
	 bN7fOuTd9e3BDUEje1/8G3kRtM6zvmLSRO2wYCbDkMj9nHfY6pQ+UGJPtn9paz9mvI
	 hpTFTJ7/ihBE0LVk4268eJbAP4m4DmKiIZUGs4TCVcCyuGn/YDqb0KTMAa+prkCaE6
	 A8c4TASWIS3iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CFC87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531859358.16998.15243756405880870587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de39aca3403eecf9fffae349042117ad5d0630d14c225e17d590cab8e1f9aea
Date: Sat, 16 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755318593

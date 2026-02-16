Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB8D296BCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771206294; cv=none; b=ctLHnfY/Y3K7F3kSCU7gdphXboRR/JkA6uMEx4JEZXX+xhpiNi9D3QMu9SPTDqk0cv9QeZlU1lsPkbZI7KAT+Vunlk7n6aIt9CoREkells3kNTQ+/N0dlDdgtxCxoBJ+uVtvumbqG0bDfVPKBU5KOYNUGEeoviaIiqoP02L7tiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771206294; c=relaxed/simple;
	bh=Dz7v1KOlb+NXXLVhguA9SS8meU4KcH8W13uHpHQz9rk=;
	h=To:Subject:From:Message-Id:Date; b=bEgoaUbK31036DfglY86Ps8/V8v3onTW+4ARR4Ji7cyHLQbc2jg0IzZ8Ce3YQ/G+H4GKB8R2TEM/exdUDt1D8P3kK3TtkT+2hp61kaLo4IY1dYSvgtSGs/ui/lESi3V7HJjIqxmnRuYpND1N9nCcIfIwZTWDuq1vG02fcPctHmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TukS6KQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TukS6KQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EE9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771206293;
	bh=Dz7v1KOlb+NXXLVhguA9SS8meU4KcH8W13uHpHQz9rk=;
	h=To:Subject:From:Date:From;
	b=TukS6KQ5Q4FxRTYQZYdbhfU2Jn6qKZ0TaCD2devMDDBr83vZnL1O88ZQ9u+obWi6R
	 0Ldewa/4gf4lI+ZHyTLqwh68X3+XChhZPGI5gyX8SEHx536ayEFW/XMTmXjqYboRE6
	 AZfqNEpaKVE6wCpXBosYB63UfqOrE/8h4BenmbfLoyuABcpxSZnZaQKJuLuXu0tPwx
	 5N5+28Nl54cWDqyWRaznQOIuBxw7eKymS44hPXTJERCIUfaj/feVOKtkQJS59sPyBn
	 OlrepswAxsbFiIGjFkDowXgQvCzUZhoR9PnkHs23nPeObF2M7BVrZ82y6dmN5FIiuW
	 GJDc1RyIkB6pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD0BE63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120629361.27886.7884101880530204774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21047c81198d9832852c10f5521af7f61fe4291f24b0d6e755dd6d0ec0d77576
Date: Mon, 16 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771206293

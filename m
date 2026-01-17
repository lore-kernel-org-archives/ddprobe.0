Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DF014A4F9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768682034; cv=none; b=JadqYPm2tu2mSpudEuuZgZItwKcYP/4GwMICMOA5QwdeAbEfPLwba8VvjcnG9wM5OyLwJ3yCH9z9OzIzm/5JNogE1jH3xySM1G9nmsUmTdNizfxsV0rsJx/A8h0BlbUvthn+TEn5lCyyicSejXbZ6c4VSxwU+P/gEfEVwuEgyGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768682034; c=relaxed/simple;
	bh=/7qMCYoav8DmhfPwwG7P7nPoewIdhR/zOnZ9kr66DB0=;
	h=To:Subject:From:Message-Id:Date; b=RSfzYpBO0UDRwc3PkWEGF0I79D25Iw400mBhk1TuLlbIof5J9S8allsKqa7qNmG9luoF9EfBs3XUXZmUhtczmu5KllSsEiTJTJU93U6dsuo4sQAIgvuZL/9iED6SpoeVJ2jQdWHwDwyseVOKrsw/0WRUyPuR8KS8B6VIYkCE8Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1cbznLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1cbznLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A531DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768682033;
	bh=/7qMCYoav8DmhfPwwG7P7nPoewIdhR/zOnZ9kr66DB0=;
	h=To:Subject:From:Date:From;
	b=e1cbznLenxJlNMYB1yzZI8s90NrDVBkQOSLZps7o8f1ejPH0Q4cIa2c+WUuakB7Ew
	 CO3Hs+A7CzhRRoDOISxzMH3AtGc8vpCxG7amdFEekJNRde0SwImAnjRqqGl5bi5L07
	 2Q6RPopBySklrjjR72iypXhWSZft50g0iOcX9S1uwL/S2poZmIjdlVpspATN7AXhJa
	 J26jY+DnmY5q2wTyj65wStL1l3F3jMnAwmYanuiDrYyBCbbPNrkh2KbMNBF59Ggxch
	 ssSCKxjak9mNMfapa1UHLUkY82So2Ke+cYste1CpR/CnXnhG3LYucMCiBZqjcuaolG
	 uIEfkUwb+30IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C89C98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868203357.1914.15726230737349447551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eab724aed565edd742e2444c137fbe30baad96406ee992f580e30046a18fbca
Date: Sat, 17 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768682033

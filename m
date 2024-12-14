Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178D192B75
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734195354; cv=none; b=Jc9v7+HUW92TZYwiZXWzNGw2rVOsyjKA2vm2AeKiko0IsLSCiXqMNbxH4+SAMhFwXJ4oHZMG2NWrgKUcxJgqO6btbmEkptDifOxsBLtf2Rz0qYE649eUOexWVCbOCAa4wUusQtHFnI7/6VMJovnQLpjxE4ptSrtuVmyohVXUL20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734195354; c=relaxed/simple;
	bh=Nv4dLwc+8L9l/mb7sEwZ2QDe4mNEbBY1VQFp6n/ydbs=;
	h=To:Subject:From:Message-Id:Date; b=aV2oSDNZ2auizl2vk91nFPWx1SefZ1Zd3jYhvqIUJLKEl2FwH7CW0f0CLVN9t2HTNb5rlXqh4ey8c5S1YSu/0ipr8MJ67KT12x+/telwbmmBYDn/3gZjws9vUtv8kzg5g9D/zHkcIixh5UOekIzsyZifIa2oAdLBDvtitnMc2hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaZ5qoC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaZ5qoC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E58C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734195353;
	bh=Nv4dLwc+8L9l/mb7sEwZ2QDe4mNEbBY1VQFp6n/ydbs=;
	h=To:Subject:From:Date:From;
	b=aaZ5qoC2ubJlqixaYuwf5V5ucpVfxjfP/34MVVDuYIU4zvqkCh3LlXSPVbfQyoYbB
	 9kpy2bKMZq20Jjt6EYuEf8VTUuwna2XDXLUQQXqyYKMf3szM4bHl+GLXKHRc+4xXz+
	 I3hYIeYmcgVTiZOI3PnsrivJ9GMauzr762UtIV4rckNW7s1uP1z2Ti8zoc2lZrP+gc
	 55N67gbbCSisv5+M22+VInPYp+QcWdgWoFby8FEfhIipgC7AIbWcCPHefZByxFywDK
	 kxI3Nd9g3g35cRNjDxo/3iwILMlbQ/ytUlUbHquABD/SAbpebb4jfMz2DV7yg61Ayp
	 w+HzCTqNTQRNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE4FE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419535361.20249.6866001272981414088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4324a6a76379d93ed354f18b2b1eb2931f3317423fb2e646810ef4b32e7a17a8
Date: Sat, 14 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734195353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2660F86334
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764766374; cv=none; b=BsWsc0+PG7S7Tgp4FyHrBvFbB0Jl3xCgKL/M9yPfv4+9EVhBa9EpIDl6fQytvU7QTclV7hxuLOKiusCl8xepC76LCOaHynu2vwr+oPvNilwMt3vbRPL3L5QvIwe7V7EaKlSMoTHauKfq4YMqrp7TMEhtUYIB+tUpdRXV0Vr91Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764766374; c=relaxed/simple;
	bh=knoFZq5tsz6wowqhVVJJnboxpnz+vt7WBm8RaXcBbRY=;
	h=To:Subject:From:Message-Id:Date; b=hj+EjzzLDyrQkwphwr8PLQm8i3aHAeLR8lEVXIKjWMg0w59temAl2hU03iQa+nCVvWKgfVLAnbgUuphjd311zncJG27N12zM+1CCqgttekFglP6anPWfICni0amCA1w5ZHVJ+es/3hcYgqdox5f5CIaEYHvZwMJT2ldy+MWXR4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S76CdXwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S76CdXwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64CBC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764766373;
	bh=knoFZq5tsz6wowqhVVJJnboxpnz+vt7WBm8RaXcBbRY=;
	h=To:Subject:From:Date:From;
	b=S76CdXwRK3olgn+stZFFQcfM2N8/0L4wou+ri2tWZL9C9wfZfJ4jwsGkSE1FqPd8i
	 RZU1oa7ninEvKRAq7amzjkOtz5reLeezDVfsZ4pJkOw2a88C7szRUBJfznVZ9tVMD7
	 /uQieC71F7TWshLjPziGJcONM6AM7CydKaZc+vBiK2oVf6PBIn5dXgc5lA82+QI9iW
	 ynpIqJNUSVJMW/Wz7T1KFhdwNRTIe204bRM9/CK72meUsaXFiPc2HkMSphaYZQ8rfw
	 VqGjO5lu5pICm7glWIKjR0EI2QfGsVAcY7j3GOWyJybc/PLmzgWwW/fpMq2xQyDhMZ
	 2vIv5AZEfXjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B83D12D5B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476637358.32664.16958882986554928491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19ec355ff0786a152038ba8419bbd03d608ce49b11edbb88033ecb6924a1b0c
Date: Wed, 03 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764766373

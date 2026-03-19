Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D324F3C3BF6
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773918293; cv=none; b=SkIssR2Ogbw//tn8VFCgEF0pttx40xVbOVjW5TUTPxitAjyK143kB/D+f5DaVK8wYojTZ22FQMwziB61QZwHfeYy9LjZBreLctVXn2QRPF3P2+Xn9VNQg2T+JmWa4RrSTx035pj1ZVT1BBr9LOu7YgCyFz9CbWdtVV2vnXyHgl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773918293; c=relaxed/simple;
	bh=kLfsolqtCwJtvANoDtoIhURQcmR6w9O2+xmW3SqFGNU=;
	h=To:Subject:From:Message-Id:Date; b=mA8Y7ltCCiCIj+5/BdelUKjyX+EDV670i7S2MSnS7rgPuXuRAVZ0fLG7h2UIQd0f1BTx29ymud/VhwgN2n+rwq0UthsOte5z7U+FgidGlUo2IYeOuabkpmpqZWjIffdwA3q4AqO+8FAoNqvgOYoEArQgACtDZNodXSTb2dwW3Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNy/ovkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNy/ovkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D929C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773918293;
	bh=kLfsolqtCwJtvANoDtoIhURQcmR6w9O2+xmW3SqFGNU=;
	h=To:Subject:From:Date:From;
	b=KNy/ovkkhtoavrlEy56fdnk+5IA5CgFKDdXntKoCt8z7vJo5g4NfYtt6rTxsHWhh+
	 JRDVa38RhhsblnEcKSS8L4xRwCMzA3FibrYbB1fPbD3fnLRYXkY9CEE+QG1j50LPmI
	 2/VUVjjMFJH7c4TZuyqpStF38SQtRloI/sLOeUGXszkKbSEH0le8sUgYJObUjwjclh
	 dhIiVTXMX3lwp4HXCAQcV7kyIswt8pu4fPwba4VZr+6YGtfijfsHpAa1Tmn5zW5ipi
	 2xzYYsDp8YgZpHFqcaZAFmoN6oGVC/4dIHRktZ4KSu96MIJPR3DXx4r21dFr+tzYzJ
	 07a9PMzUduo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39E108E1E7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391829357.9975.12562327349458974452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e0a4a9ee32b0b7fc416fb8274ceae3d540745591200e4a2cf44043f306a31f
Date: Thu, 19 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773918293

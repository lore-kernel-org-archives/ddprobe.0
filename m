Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F12367294
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791762034; cv=none; b=K3QdVoQGBwQzDt9Vn2+kyo6BDBhcvYdRnznc2RdNyO9D7hKYDWJZoJ6ABlFwXJx+MauvwVOAmYYBbtMhQazPzF2By1RdDEnM3q6CgYbkVYaIqsZAtQ3zSFQ50u3kkey+3j7eyssfzBqE96C2eHHolm4a2ErLy/y11esE85Hs5Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791762034; c=relaxed/simple;
	bh=aRdwzHbFHIeI1q0yctT3tAfhIh/7qHob0jxaG8RhxZ8=;
	h=To:Subject:From:Message-Id:Date; b=fLMFBpoOlEq3EeBpu0cqib7rxn05unSIBssxJNSnH9EOEdlv2CFzP4H9/x1slAy/tFl4toV9ZPoz1U6h09ltmke9eylm/oFi3SP10OCibbWUi/7C6IC2wVwoSZG3+F/7SpereFzNC2VRGkTwzUWcBKRfzva+yFAXp2NJ4wB+Xjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3zWWIXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3zWWIXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7106C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791762033;
	bh=aRdwzHbFHIeI1q0yctT3tAfhIh/7qHob0jxaG8RhxZ8=;
	h=To:Subject:From:Date:From;
	b=l3zWWIXMVgYKaBNt14tPm3KOGbYmhHrEwj7D2/3YIFaxhELRPlskyKN47xHh9tKri
	 f+cUs5nl3BYrFvTIpRVPcg6piyLn2WrjrJI27sMPlr9ZeARn2eJg6g1cV9iwQs6a/D
	 hg2DwYKssvjQdxApc9epPjJniHs8ssrCTlwoP5MMHXLUdsQuw+MGcLwMEtq7rcD/x7
	 aKmFsbhQBwaXgZ6IRDE11NmQ7JZMlWUyE9FFiFN60938Dez8aejlXDBpX1VEi4Kwtz
	 sXptxcP2f94+TUbU7sgWdHhwfAEUetuQ5IwolNoAiDMkUxlvIA7KQrhzH9kSN/u6pE
	 L/EorOzjyuKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B235ECA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176203369.25404.2546215641529791378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f552a21b6b7abf36980be228ce77991ef6d191695d6d186986fb3f4ab96d2aa0
Date: Sun, 11 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791762033

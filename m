Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3024B26AC3
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766336034; cv=none; b=JH62VCc2wfbMZWx/5c8MIn7diz6eRokayACYOHBZu/X1hZ2R+8c8nt+U4Ie5PFam/JSYu3ZI2DwBCbziq3Wn30mJswjAjovrqAN9+3zKhuOolItnmQvwGuee6GS3VRjBt/g6+FBgL9W5o1SdRZI0dC6ySqFZOYog+K/ya9WkP5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766336034; c=relaxed/simple;
	bh=nKaqig/t6oK0Zy88UEVQymLvNSsFH4mYZuRGuu6R6K4=;
	h=To:Subject:From:Message-Id:Date; b=L9oEjW1CwVJImcCjX80g035Y5CfK3ogB1gwZftCf9jRbpuL0fJk5ZgQi71qR6qGNrajbncjR4nn2d3WYESefqGu6tUSxYgRU4oJyj8dXUTayPlUT7OcR4byF5r7WwJFo3jOVO5RNY6c2n1h0+GjcBLhiUPuqsucQueYD3y+7HOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nt5t3e4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nt5t3e4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766336033;
	bh=nKaqig/t6oK0Zy88UEVQymLvNSsFH4mYZuRGuu6R6K4=;
	h=To:Subject:From:Date:From;
	b=Nt5t3e4Ai4g5NnzhFdofCPk4XF9zAxkkI/hgEG64pCOL+7TzeuY6RqJ8dXOpouCUD
	 VUmDeKxJMLD7TUMuddXVLdxgkcgy4DfW1W/vvETloZ+jCxWK/n2NLYQGuZMDcT3nws
	 DbPwIcr3CFfIfritjJhexsp9OTCh8ue7n3Wh9B/9d/i5vUDVTG+QEPuoXk9qe9yxoy
	 8n7MoMbRMJHV2EW7ywdRSspDzwBZwXz7C8REQv/rmhoTZSBb8LGOSxfCQLVgS9PHJ5
	 SPJN0babtgN91s+fYObKktk+6RuPSwS2P877h6dXUNN9+oiOC5l2uAGfQCww3enJg7
	 ZFk5LfWV+RW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BAE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633603358.7131.13549495067297742025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ee14c5b22cfbdbbc9514d4792202b1d3bdf3e43ef95c417329e9802f5cff81
Date: Sun, 21 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766336033

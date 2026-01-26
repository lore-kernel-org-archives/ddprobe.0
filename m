Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC52335092
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769432033; cv=none; b=qN8lJxoC2UvdAFUYvL/uYLg5ZLn0ifHG7P8DBks9365LxjZ5OkgKJOdyV2CN+itQ6z7c6KNe9nfal38X7StL6hlUQn7olTRFEA8weukIn5KXde1llQMuwc/k8PO/Vx1h3Skp6UJRSLJpOca0G55S1b4flLyH1bo4KzoTp/dGB4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769432033; c=relaxed/simple;
	bh=YJtyxoqy6QPNdXBnSaIYCm7FHDXIX5JIObL6sEziKBU=;
	h=To:Subject:From:Message-Id:Date; b=fXLIIAznDT+Ld6hG/qY8m53me4U8RM/27chqs1Z+UYnoCnoev8JVBLJ6eW2Wh302LKt2+al5sjAhgdPnO9SqOsG98M5aiUBd5vdFC4fQ0zbNCT6QihSAKSoaUwRaAdnSlPOuxNpsEMS5fP3JXca5TSnlErttY95vaIBqJBu48U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/sU6q47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/sU6q47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BADC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769432033;
	bh=YJtyxoqy6QPNdXBnSaIYCm7FHDXIX5JIObL6sEziKBU=;
	h=To:Subject:From:Date:From;
	b=F/sU6q470ZvFpoDCZNgw1yMOa7ttVRvYqDbPixtvJ6+N8/wB5CdTE5Dtu4GqVS+MQ
	 i7ymFDPNS4ko6b0y+sVMLjSd1FybzDLfj0LivjKuEow6h+1/tgDWxB1e3voVLYN26t
	 BMDRZTRmRGVSMyfIusJ3TV5Hd98V+wNAA/XJp+SlcVwrG66DSSTEGc9czflsNJ6cZb
	 EnQLaNQ6XJYjJrXixmIY6RGLoZl8H9eE9V4PsRtWgDpPJgKSqpk0bW+R78+HcHLGpE
	 +IYjB3VpHFJu+ARLlMs7qBLvhJz7jutWA/OD52ra4KIRewevTUm52dZWbbMStWvI9C
	 XwbgMmoqZhKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE6FC88E7C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943203363.7642.6682362143755500776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322449df816c54991d5d00277b2a486d665ec7c1694cab67528e8331888d5d2f
Date: Mon, 26 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769432033

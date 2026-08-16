Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507009460
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786853434; cv=none; b=TR4HiDGQZ1N0X0i9OdTTBQi0vUrpEcWVsHRWo7srVW0qZL42jFyCu1n6PULSZrgsHz/td4ASC1ROwFlG5thx2vOTkZk6GIo4xfnISuSU+81aT+DJDP3z4U2CumTz0GQKj+wkSsn7O81DwJV8D2DjeoUJhsuwdNpX84OyCR6+yXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786853434; c=relaxed/simple;
	bh=yRbgTIsFJs3eQktFI2E6Pq8OrDHxSR1imp9sVgcP0m4=;
	h=To:Subject:From:Message-Id:Date; b=N5/2kbfsZLy/OkgsRNBsLMMp5xmZcXC38hJK2DLQmo6vm2FHLf/uuFTfJ+IPTRN655uemAXZrBUEHRZKuqObGEiiyPnazXUWjLgb+dmBHxSVKohWGzrtN2nVlX2kzRuV8VOcSe2PfFajvW9QPCplWe9WOQWhPkb2wisCoIG9ZQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsjwRBkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsjwRBkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D903CC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786853433;
	bh=yRbgTIsFJs3eQktFI2E6Pq8OrDHxSR1imp9sVgcP0m4=;
	h=To:Subject:From:Date:From;
	b=rsjwRBkSv2mX7OXh7Tlv9VqJ2JWOK+/UP0NKnkwVv24S50ErwptZI6/BNL6rVZKHn
	 nxcMVlsDzZrPF4QOdBy3CvSbIzXH214kmZcXhf9Wi5t/c0p9OCFeV0T2V44Wx6Vb59
	 sqI1BRVLmLoq2OpLwbHHmPvRV6NNW9dORAOIaDnujAwsS6BCzuKrwscgMi0v/6X8jY
	 WctcbhEd0pDHiOHPRNhrvkG86Zyt4ZCroMMMsySjYgpS/QRmPHjKt/jPlYkUDgADEE
	 mMAKYDmjs3QMhltytEiKA4i42ZUd/XvRZDLrxJF2g29wpxoF/NHF7ZnXk2s1O95Lqj
	 rJMXT+oxPJJvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE382C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685343368.22961.5086527036213838982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d0ef1ec4815bec4213d2c8b882c64ed99f449ec2a6b588036b8aaf64d90331
Date: Sun, 16 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786853433

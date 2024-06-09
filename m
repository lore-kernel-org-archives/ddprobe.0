Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6552A179AE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717976243; cv=none; b=HxOksRxONAKXo/tLdTmouU4eEYuizSVV2ccw/H/KskWnwPPB1JSRBF0OV0UB5honLtdXsLymnE67Sng4w/dxIE9s7O7Rcy+fnLIwWHhWplazy1GS3/fG3sVx1rakmf+ckRDNsAMzmfELg5IsND9DsAcZqoAv4dlzJ9AfS8REQaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717976243; c=relaxed/simple;
	bh=l1gk0EfzvY68JHuMzuX5hCmuj7Y9rbbNk02aFF7aD58=;
	h=To:Subject:From:Message-Id:Date; b=eGij/kgA5gPXpVkwuraoCGKYDnudHPrGSgfMv6gFzzHIVBxujOBWYGlZkoQD21E5shEQRCHn6D6N/mDM6GA3Q6FHDRGa/+DKBhI7nNgFQ+HP2XkTvuZO/30X/p1+aTYPjyz+mDYL2Zo8dNxazGLttbVnqy7kMJeeIh1uYSiIHJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiTPjqv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiTPjqv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA73C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717976242;
	bh=l1gk0EfzvY68JHuMzuX5hCmuj7Y9rbbNk02aFF7aD58=;
	h=To:Subject:From:Date:From;
	b=TiTPjqv8yZGPHkpaYrD6TFCvY1m4Jo4MT/uucCcUkTrgCz5OrCxGmUnDniOlE29D+
	 tzrkZ4G9USNxG2JyM+KBw/Cg9157M50rIsUpukBIVistnhhIfBg6pvMl2W1IvdAHJp
	 TWSI50nJY2qNo2ru/geLM5x/x5ElTZ66ORsSuGFqSw7Z+ujGxVCWz0YIY+a8ZVt5Xc
	 2xumxdieqFofw4UfM4CwJMlxglsxz3lV/j7wSVCm1imkyaKXEpvqoMoKBmVC+jsz4k
	 ccCT7qNL3IZ3RM/iKKlAYuWi03kNVwnAD5JTqYJzZxUhe33R/8Mm4w3FAJzNXBT5Rr
	 WMDkWXRIjZneA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B8CC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797624278.27518.8820978810997010224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7df319952c8f9e9c0a2e939b6b84c363ccc918903353e41e4b8e2f1886a140
Date: Sun, 09 Jun 2024 23:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717976242

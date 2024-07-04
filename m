Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084C7846F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720098923; cv=none; b=Cs7tRsE5OqGKjn4Yvgd+cN1DYozXnSOuY03vlhNwaYpbwvBzjnhF/mPm96Ohlz7sVtM1GNClqk8TtqM/GBJz9VhO0rsOpsisJHBrJwMjYfNmPCnJZXgpQzuBStt3iV5Dsz8GCnsUR9p+RMh6aOEV67lxucSSi7Tz5bjnjUe3cxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720098923; c=relaxed/simple;
	bh=t7O62beS0yJA2LsVIgrQt0L64HeZPZCla2mMVz6O0z4=;
	h=To:Subject:From:Message-Id:Date; b=VyZycYEYlHmLB11/kxkYCScH+JlEmFfR7S84kr8QrYN//+hZX1aO/m1/XJ+RWJ4o/C4CNu/pShuPSYwoEiyneQitZRLZw+LiozFl3Xf++e9s/bXEnsAV71Q7Mw4KWnuCYlQ47wT617QnOXAonrr7nuR/8e8PKs8EmccPJBEbftc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcoXUqAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcoXUqAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9E4C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720098922;
	bh=t7O62beS0yJA2LsVIgrQt0L64HeZPZCla2mMVz6O0z4=;
	h=To:Subject:From:Date:From;
	b=bcoXUqAeTRAxxJXUKMJBr0dPVPkhmOsy384UY+c4xVQO6h/rLX/hIt5e0TzUbaoOP
	 BB1P/7xkQr6eVBoWEt4d9XJNedPSdFB+ouKc0J50pONYiaU0RAVTf7VpxfA7lmMvK2
	 Yp7g0y0LjUret2g0mMkTJc2SrYq4/ej4Lv6p/EG5YUeMl4gzIj0qcx1snf/9sKRgRl
	 TAK/NIskVbn+fhaFtZpGfuCe0kBsCH8G8zYYlT2/m/cXkUZE+wmmGVyxr8pZBv4lyn
	 fBJnullCwSMrmTgf2usU4inUcKcpDtVwoxaZ3Ua3r2BAOuCAtf/5MKmVPQsXzo3ubw
	 m2kgv2Lu3cuUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BD3C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009892280.19690.15478579919032092816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f099c431c26603529811b90de526c4f46b71f1c38ec62439a2e9eee09d33c312
Date: Thu, 04 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720098922

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128BA36DA1C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773402294; cv=none; b=CX0TYN7/FS65SPyepLy0PiHBPXmYrCWWdgeZjDdCzUkmaBjgJq0EkUD1JP6vLNC/IMxnUAdofTWIcoRcKeWorqJuj97qnINYX9cfeG0HSz3WCpmGGTffCYD2lWV39uuAcS2NZXKbD6C/rFbyWEqKLYJi2ASiwQD5DiwJ3hCHoQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773402294; c=relaxed/simple;
	bh=9HvGTxi8Hn8GSCd09eZCNGMVFT3ivL+U802+tC3j6qM=;
	h=To:Subject:From:Message-Id:Date; b=rrVhb99No4v0D+OuX//BqJ/pjAM6UvoSJVGDsUkK0uRINoM3KpZFcwEnVynPjowzwShddTbr9RAY02Ae3RO5hiw+TAz4H6TuRmI08Uknm5E9/8Hy0U+BgVwM9r6vDnePocQuruNwzpgpKm4LQ91ju77qf8hGtTQXe6/0K8auqT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdPHnAFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdPHnAFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F94BC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773402293;
	bh=9HvGTxi8Hn8GSCd09eZCNGMVFT3ivL+U802+tC3j6qM=;
	h=To:Subject:From:Date:From;
	b=jdPHnAFJjYtLqxMVOINOe7NDSYiJpsjZVFdCFd1/zxQEJhJ7r1QvHbGWolET9DJ4+
	 9mRs+mwvFOB7de7SB60wrXRd4tJs7OrNZenbT26uKC06rVL926hrw1bF0FrX0QvY+U
	 +SBYgO2xR1Y2J9EJ6vsJhhfIDDqUNC/OmXqORxMgFB6GPTvg++4BbByAuELUvTxLDx
	 qrubQ+qqCwXHRQ/6MvRpkx0DXQk/DjMUQnI6nH20gzoFpezrgcFMUdOd95KY2VDef3
	 vqQYvj4xxg1CA3Z1Z1ZSX4b0LVNYrblNeCyG2xro7FmzKbVUKcHCaJKuNJMYpu8o26
	 dlUYHXl+zwbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E22105F79D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340229358.7460.14209255052884986916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2b0bc81e7251171e340ac0e5c9279903284c247e80b2fbded2a5e7f6ec8081
Date: Fri, 13 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773402293

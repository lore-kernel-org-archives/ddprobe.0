Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB18207E00
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747556394; cv=none; b=kinUKXdv5vHfGWZ8Fa2MLvuI300Nm5fFu5hGIKhKqmWqIuEfmNINqRcnBFdsyY+1YZslWfkMkbqZhzM0mMkQznyyFkHdTQ7gb5S1mUbSJ4mWNKmR50+aUkV6z25jxUYbXSj8Ii/s4HOElO6sS9TmYqo8srTd+9GwJtgs5iILmkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747556394; c=relaxed/simple;
	bh=Xv6oWBAxkSyX19WpX137zcBYP9DfXM0IOc4KX7zLmDw=;
	h=To:Subject:From:Message-Id:Date; b=PZU7eyr2fIPqYgx5CIWGZlNNScAJi1osnn/FjtP490pGfzSOVnc/OJ3KW2HB9vxVX13KgFiyfOPZigZSSRvzu9YY024uEhQhmMvg1C25kZu5TGr7fzmfYYUetVX1J84rfpL4YWEZygfL9DTy3sDWEqK9ckde0PCpE3GSuWZ7VEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0hnkBHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0hnkBHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC109C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747556393;
	bh=Xv6oWBAxkSyX19WpX137zcBYP9DfXM0IOc4KX7zLmDw=;
	h=To:Subject:From:Date:From;
	b=m0hnkBHn43Mw6ciaeVReUCAMHlTXM+PLQr6vBmNBn70b6dCumS9nUtjh0ENns6r+R
	 7i1t9+FunsngcM8O/HkMlNNpQai5r8g8SBjFGdjXl2gQeH3tSOcOKKmvvBQWZ8Uf7l
	 E8W/VAYNTKssgaKTfe5NGS10reZ+S2xs9BhDp6FTteSZDMhlWgmbI/Tr/b9HpVIehW
	 KGKMu3w2cfQdzdiJs/hrOI4kJLQBdDPH4JsHyQNZthSKxLB58zxy5U4QDtFaQ4F7Ej
	 PPtZGcQEp0/FEMmeKHARspwbnqVb1D7UWDZtqIMvIDnB36y9LanjFjHS2rwZPI2sQS
	 IKNT7g/r2BCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB1EC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755639362.21520.9985621992900672933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058cda260a91405347e617af3b1aa6c7eb90c18f9e7f4f6804af3b7b4f1c31e6
Date: Sun, 18 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747556393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F17D13C9C4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787754034; cv=none; b=ry6ABzSP+rXp6EaLYHx2vLAw7Pk0xP4PFpltYoiQWLFsyemndVZ22iJJ8umSyeJvKc2HpIV62yF1yvEhgx9l3X5mukhqnb1LxHUR3VzLjHAsIbkMDkzurK9u2i4GwAnBlW2l2sjQ2bcKRZdP9j45xG13x/PP7sbpftj3QuDYbVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787754034; c=relaxed/simple;
	bh=Xcb6VQ28VrcZrWcx5LUJ4agltdKvTlDFeMYLDMsOHPg=;
	h=To:Subject:From:Message-Id:Date; b=A12bM/SXT9qpLrGwUdYKUDGRjHy5upttZr51OMDl3fa6ROOU2LQ+idGlq7DArVa/CzVrjxN4bb9Z/paMkj4OHMYwZJp0T+I/AtNIpbwRreXtsBRVj3euEx5tLsXY6zxQGb6S1wypz+IssiBcWhdmz/wxMEhZwjQ/Fmeh6FnC+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRPm0yp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRPm0yp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB1BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787754033;
	bh=Xcb6VQ28VrcZrWcx5LUJ4agltdKvTlDFeMYLDMsOHPg=;
	h=To:Subject:From:Date:From;
	b=DRPm0yp27ImIlgtHyP/OqexkpWhGSmVLZrWA9nASDOlDzDpUrUjEQ42B+gnQLOe5x
	 hD3l2FYeDlhtqnRFmRYNW0Zwi+x2Vhft48YMODlUyeUIi/LJaDB/CQEaCxMSgA+cqb
	 zFBESHggQwwyzF9tSt/F4yEU6ozn/6MKps9cFXOZQrYczyjAAB5k7p9b8aRHh42b8A
	 o8Pc4dXFjRC6v5yMRV3kl4Rs7tP+6OFRDRUuu1RT+xInROYPpQ7080SMtDImHkQhFe
	 Ay13UN3+3kxPtoduQDjyjetHkkOqyOUQO6I+fbJszHYyDgyKSXXY+Y2FID3f3aScT3
	 Zkv7l3TGfcwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA21C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775403368.15346.13372768433989244641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e6c59450f38a1bb5750e3cd940c29f8f86dde092175d13cfa56253378461b8
Date: Wed, 26 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787754033

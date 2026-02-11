Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC66361662
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770846294; cv=none; b=PVMVndxb9H/M8aU2ptPssCE+iUsxlgteC9HNwTsflZd8VtvVxqAdqa+hAvvcNdOt/dV04e+ZJ6fz18ypQi4uwoQieE01T6PZaVPZGKJaNn6gIMyIKVFzo1ECYuF9OsNKBe0C+yoBVUlVfR8wDYnDnQephbxkCp40gp50ksB/sVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770846294; c=relaxed/simple;
	bh=aVF+rHUPacZ4nC5ARcm9am4gkWZ9Uk9rqkXc0Pi7lmU=;
	h=To:Subject:From:Message-Id:Date; b=DPifkiUN+tiviEU+8dkrqGN4lmW1RWGhbTcWB5Xak7Pv32YPGKIOCX1BszC34h+qM8smEWAn+SRq0dypyvowjB2wuPLX5cg+LZWeNd5TE2R8WH0UaRFlf03dLiY2jrDlgNEfLola33tZmWY8Sp3UWqKaa3ms0kcJ24HYv07YxdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmAeImR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmAeImR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAAAC19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770846293;
	bh=aVF+rHUPacZ4nC5ARcm9am4gkWZ9Uk9rqkXc0Pi7lmU=;
	h=To:Subject:From:Date:From;
	b=cmAeImR/vADCo/s5hLI1NfSE9o1BGJs/Kj0q+prQl7hjl7jYD80R0Gxfmwl7Dv//0
	 OhSIZmHrl4hp507OxnbcKNqh/wYHJL0s3MubYlCD4fp2xHZB8xx3pAt8WR34BHUOVe
	 daSxpZ8St7DuVXioTnrTvzd69pkOgf3Oih5JIm69vtC16bqx4BjmwlrMnp+ZSbvo0k
	 VuqEtSaKELGQFKH2ExVKhMvFraMmllyUpqtFEGJlwXbLuNlE2POKf6vRaocbMpcDa8
	 O/zlC4GrZEK7BYlY+HiGn8n+DSPG4hSIBTe2SsUIR4ns7k7qnaM84qgXKxS7aj5yAK
	 dxX5K3Yx88ULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E5FECD6EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084629366.26521.3188375975206172801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9acb639b917c99744de123cedc8fc5408560c7c3df2f877bae6906a2bc64f0
Date: Wed, 11 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770846293

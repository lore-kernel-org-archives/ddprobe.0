Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3467B2FE074
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791758434; cv=none; b=C5aLo3bDoORmrHSEAS6dMtq0Bx13SOdnR8NJgxcBFYhqxm+44bFSaJx7gQaT0Sek0d+8ON2G+jsxBW4E7oinIBdYTQsCaiLvpylT//DUhMZU2LiWA2OkjOlFuhE5trvMctkEj5jPSWrMgT+q3DoPlxD09EPZhxnQGoELrlrOnJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791758434; c=relaxed/simple;
	bh=t/qnDocGRQjKYSqJIEruA4LniFoCy++AeJUkqCVLmjk=;
	h=To:Subject:From:Message-Id:Date; b=T+mkK+MO//TIVNiRmxIBigI2gZUCwZVTjS4bQSrAD+NJ4AE3hK9pE0z1D25KraLDdKW0SNvEpTOgiyQ7+M9UX82/l3O9DtU6IisWd/658keeKwNK1mPpUhpMuFTeJriJQXpirbNdTOC7Digfy289naB5QjO+a+Wmy3iCdhS/ST4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMnhJhj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMnhJhj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AB9C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791758433;
	bh=t/qnDocGRQjKYSqJIEruA4LniFoCy++AeJUkqCVLmjk=;
	h=To:Subject:From:Date:From;
	b=rMnhJhj95IX0y5vjk3ggIVDehetorudoiuw7e2Q7epJfQy+txg4Kip9rLsCxXHVjM
	 awmYNdgj+xc6E2XaEZ3cl6jrtisAnmZIna1i+rznuY2TBeLISbv2haICCvioR4GD8Q
	 tduZtDZ03tU7hLZIU+EtOIxkXtez+weic7/CGJVXwdiHsGWVXplTFiwErWxRZcRjuw
	 /XWYpntXvc1ym/UeAwQgpFQCxVut49bnCpvxGuXAvrELmVH/hjjO7nWlvBFwoLV/1h
	 JYgKC56Hlvhl7sts5L5CzomfhmMec7YTRLxsF5isQi9yl8kqbRKPESa9RJO5Pgd5J6
	 rdXGRjGx31UrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF06CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175843369.12066.10279888185375775337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249d185030933a41ebd4e1b28d4e89946b7197d8f8e73fecc59344bdd1d04153
Date: Sun, 11 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791758433

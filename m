Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8EC21ADA7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762321194; cv=none; b=Zkgjzqgs0WOqwR7bKZB6WnpmjtFZtpHxeqAdzz3ZkwzZKZ7Bfx1uFRBgs1EQmujg64UQdp8Ea/tcjyDpUFtsHfFI/eUmtVDMDG6P5aiaKiVjJZpwl3oEHsqJ94iwKKAYO9WvIb/70AFDhJt6gyQui1IcLXlSeI6dSs1ex38dihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762321194; c=relaxed/simple;
	bh=mvGu1c4iS85InJrEw0sK486WRQM2+DBYuiDHGdIOQZk=;
	h=To:Subject:From:Message-Id:Date; b=ezxENJSPq4QGYHihBITgiy+6yXXjs9cmkOJoNQldS685NwCVWJILRhgyCjg3cL3x51qPPOBwcq5u7fPE+CFG/IsjMI/j3+D5juFf1J0PQwogudo3PLYy+nRoZOsYXQkaM0nk5P0Sj62AGRdteLdMwVW42URNNFVfqgx5cKMUIsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btOp/4GR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btOp/4GR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8015C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762321193;
	bh=mvGu1c4iS85InJrEw0sK486WRQM2+DBYuiDHGdIOQZk=;
	h=To:Subject:From:Date:From;
	b=btOp/4GRioMuOcm/MgKwLkJIGHlOc+gTgP4/O5hKyx3Sf7zzs3aA3SUROta416pzv
	 mzczr7gSyrD4YvXoDn1MiNoPdC90BRn2PP+39j8zJohRqr6/epQymjc2TfhxXrPbgW
	 sVoW8UepnRkCqb4S2NCRIFoK1RgHN0+7W5zZTFFgKFPIfPwrl6OUgcytq2RfrZ98d2
	 yssoiHZw3oy/J++5zQQmcXyGzqiqLmHq+8LAQMQoN06ft+spa8RAZmYPhIZp/bI70D
	 lS/Isx3IKe23oq7V3ICQr5iapWYNVov6ynYte1D+jQlbitdfwiSFH4fbBgLYIN/iDu
	 1QO/zfsnn034A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C1CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232119358.29770.5620711879927728893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c0940d03a714548279f93c1b1bba14300a4f73c3dca47fbe8296c422d836e3
Date: Wed, 05 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762321193

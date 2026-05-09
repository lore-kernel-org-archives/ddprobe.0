Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B481E1DE5
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778305654; cv=none; b=m789b6RRAjz85gPpZ6qRh/snYeV2WIn0+dTuK1NeCRJ9xxhtkHdVdZDWXpS7emXvwm8Q/axECwO/32IZ6SSuhuphXjJDAp1tWHA7/x/TmQBB1EepVlUN2+UfqIqTUm7tZwPBVApTP1MX5fRqhZGVdIXUwAwStxc+4db5hUz3onY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778305654; c=relaxed/simple;
	bh=/H3EfLpWvjYZZPKI9EQlb9/WSaooFxbisco4JQ2mrGI=;
	h=To:Subject:From:Message-Id:Date; b=QVGq25jCRBU/NSyqE7Xq3EI8tvDvavxpRfpK3DCmSLxWTzP5B68f15yCxBG42Eaxq6yj/QlCl17ccOBd53vkOWls8PYvMn4WtdIsz7i2uG/XPjVD3qlZpVSGQ9Gc085lRoy7lONHJzo8zaj8TO3GHQvKvKMdXF4s2iQZVA/P6vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opFtW8A4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opFtW8A4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7FDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778305653;
	bh=/H3EfLpWvjYZZPKI9EQlb9/WSaooFxbisco4JQ2mrGI=;
	h=To:Subject:From:Date:From;
	b=opFtW8A4YdWNnJKcdp4JGeN47zvpNKTcrviAbGDGGeOJE6ybLSR6gtMC0dap22BPM
	 N1NTN9SCR3pzyFE7oBgv64UZ1lKJx4sMeplRrA2UnOgqqNxL9+0kmISkJSiiWn0XEg
	 EIqlJXpl/fl1kmx86Yx9Y+yu/c/Aa/O8Fn2s23oAKAb2AAJYKhjUeUvd5aXe9AmXl8
	 ceJfzgby1Csi/aSn2/ztCOj2eKhhWIEjJTQsW3mxEGoul3iS3Fi6rbTnC50RQ0lzgn
	 EHP9CDp7EbNh3KF3IShRyyUA2i6+HYQ4q2WsTWk3WnUEST6zSbH69WKHYurzxmEXL4
	 AiqpoZMsjbiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF8ACD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830565369.30908.3315647720761447689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6bc09a66ee24815864b915de4113692fa1c60c7958df02e506205427fa49eb8
Date: Sat, 09 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778305653

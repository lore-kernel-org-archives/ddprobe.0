Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A0629D293
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765780974; cv=none; b=N2cATKqTmzM1jhSSaaDPCq5E5OCven84Zp5iftZODnljISwr9wloySxu3WAh8+/r7TEXSMtj5to3IFbMIBswz0Mc10QLlI9lPjkCUNwE9q9Lc8Rk8BzHSIKg57IqY+g3CsCqj/fjrjrZQSCd+n8OSGCTPQd0ojAesHCdL/6EttM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765780974; c=relaxed/simple;
	bh=XiM9xB55PLuqP3eKiHwHx7/Ep3uKRK0yZhD8qwcDFR4=;
	h=To:Subject:From:Message-Id:Date; b=rlxD/JJ97CtOLi4e9GIVfSxTugVGEE+T6RkV6Kby+COVTKaq2nX6FVpU9oaCE/bk3JIVXOnVRrbWvfUx9sJAD/91OuPWDyrF7OK3Oj6J2CMyeuXqxAmLYwl4sjVWiyx6HLOeMe26ZQm6IbAzfxfsRPoP4WIiZxTeYNp/W6X+Oh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l67lGPVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l67lGPVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABBEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765780973;
	bh=XiM9xB55PLuqP3eKiHwHx7/Ep3uKRK0yZhD8qwcDFR4=;
	h=To:Subject:From:Date:From;
	b=l67lGPVsvnQGeTMkxkxUlgLQtXePhYSzyfWupaBHEETcL9JHa5qimI/YqUEUCV71V
	 59JbpS9lxDcuXqee+U5jz/QTl6tMJMNOpBkHG1ERT7ERCMyi/NwyJfSa4KhYXObSPu
	 w0nzPJA9SBsct4tLjEvtq4DqPmoSLI9hrOMM/PaazH1sSN02svhxoYItB5fQNwj3IA
	 U7bWqUramUZHySCk6CwssVb3hnmF11qVV9Z+JSXooWoF8gw2MEyRvHUlUZfbTVZYsg
	 3/dXS0jeqdbdSiGUxSDm32sfPy7fHaV4P7rNqsfTuBZ7Ay6Umi0VTnnVFJ4R0U7ldf
	 yRKXbB5woytbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98056D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578097358.8280.4334091930737438815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d86751db5108eff79fd881be3ec0396bee24390b8f3ca7466dfc00fd12500f
Date: Mon, 15 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765780973

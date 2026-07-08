Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAEE21ABB1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783516114; cv=none; b=gy9+BJprQ9LFCFYCMftIQbzocIFzuWtWRhMBqjZMHlDXfgdKQ3WgxazPQND8qwRTPEE/H1P/3JyHfzBlx9BMtZF1z5dQrdfyzK3je/i4XLZUnbnBHFVm2mg2rtXRdyX2UlZKTAgcnhDiV2A33zoOuwSXs9BiTM58jk7m0dKtnXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783516114; c=relaxed/simple;
	bh=NhG+QDK5N4/7fA6HsBRQzLkuAXPrT7Xnyu03DWD6n3M=;
	h=To:Subject:From:Message-Id:Date; b=nq7cdEB1PALJb1xxeX6lx192ktw4zC2uCn1C6ktZ7cc106S8T2nJu7IHO6faqr6f4RgfCPT2XYejGUGpAYroOV63bbfHOXkOa9+pemoLUyGVqe/WYX7CxtSCvKkPUS2Bp8RoeMBE9Sg6MqZSoAHZGXtsmMR2+DobZH/guq5eeGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW1xHnps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW1xHnps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB143C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783516113;
	bh=NhG+QDK5N4/7fA6HsBRQzLkuAXPrT7Xnyu03DWD6n3M=;
	h=To:Subject:From:Date:From;
	b=LW1xHnpsVWQw7oDsTxlcK0ihKgJi5/3yWiZfbyDcduKTiItHsTtE/0LLn8oWsxmWX
	 G6ROyEof6Xxi6BZr3lTBlyAg+3+WNc/Aj6NNl8ygrrIaAk3pKEJppt5kXqt57MZO25
	 cAnjO+rpxpwZazKB6SKwmKoi7Q7xiIau1ZpadXkTkaNzo/XfZxiNMZBdkH8mVYQozy
	 acDRSCA2VewBYfQ8k3Nfbs/GesqUfb7WSsFPNHJw9JmhFz4KTK/9wlmolZ545pNpwR
	 OXZvOXNgFsyYC3ibZ8oxlzmqYHvy8UOlzfUGLOrkhsuyTl+LsTNAQ0+kdNyFAIPeU3
	 2EcntEdcFHvig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C53C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351611368.26028.14975956698553985531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b944283f19479124cc8c7d9d308b630511603e3dabca1ceae75c88ece8f5a59
Date: Wed, 08 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783516113

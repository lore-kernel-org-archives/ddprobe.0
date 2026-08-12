Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF6E28504F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786508434; cv=none; b=VOaD0tP4w1IPNvbA64mH0yvf69cgAtbSQ/kNZlimZ2WziiKY6zDiHt12DSCUHz3hcB3eg+WmFtddHcnOvHASld/ukNEHf8pikRq1DjQwXn/1W6X/3Y4VTFveVHagqU1/yYFDpJOviwiTRAqQmUxOVUp6NqWvbwF17YRSCj8OKMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786508434; c=relaxed/simple;
	bh=rk9e9SsumLn1DXFD9gHUJ6taT2Zw2SMH59rJOZn7TgE=;
	h=To:Subject:From:Message-Id:Date; b=KjQRzaH7dwc3jsr4DPdOVJ7XjOioH4rbZ3x0htyGG2Jt9t8rl9XdqEKbZLE0wy2sD+nyyVNt6KVO/r1HQ2w/LDD/CqxgVQHfdsbCEcfDtg8BxlVMZqJ5s5Rus9auqPM6VxPMbwWuixeCpv+/1IV0EArur0IYylhinviLQxHOuss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOgFUSSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOgFUSSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FC7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786508433;
	bh=rk9e9SsumLn1DXFD9gHUJ6taT2Zw2SMH59rJOZn7TgE=;
	h=To:Subject:From:Date:From;
	b=KOgFUSSbx/W0QS+GVkIlGOjSk/Y/QvldRwEicvYiGEO31dikTH0rW48Ym2dMEINbA
	 mcGmZ9A0y9aJR2/igD9I4Dk3Arvar/bMojpfX6dzqN8xUKQTqz0lFwSySpZw7wxsn+
	 n25TH3ZxmEExk3x7TjPg9HwTWHNJsBzokBcJH6IRDSnghT0ScyzFTua0n4AxG1QkPo
	 FKLucRcIVV3ts74Pkq86Cdjc0zgnDSimqfXMbdwOQXlDidojxXjS3HwI3oH0cwwIak
	 2oleQ6C3HFIa6eXl+VkodlmTI3LaaKPUcMGPhgosfCO6dGXRSghNjkFcULldN7ht8z
	 DhLSTYplWpgIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD66CC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650843370.10303.11298256799793280532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e5e40243b051d50ceb781f252021ec9637dcdb6ed792a686cb1f27c2f32d08
Date: Wed, 12 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786508433

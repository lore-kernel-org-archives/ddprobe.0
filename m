Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5520F1474B0
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715871143; cv=none; b=skqliG0jLp3+byKW7Ymt/Cnby9bls/CjCqKb51SDZOM+zIEX9oG/l6Vd5veEPYHJpy7+9xmIMBmtPkC9s0JTnd19eO87fqu2vgcYy9gb09lqe+pyKQG76+LBublxlILvuwwoe9ImBXO7nq+B0XWiEZyYbivrvG4rWQWFf/H/wrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715871143; c=relaxed/simple;
	bh=7KBJjhVGpYw5R1uqh4spOukq8Ub6M5TRA5ip5dhukok=;
	h=To:Subject:From:Message-Id:Date; b=S2bIbsoDlTfmhK3MEdf/hBWq3dovxpn7Y4liG3yPxyUXgMDHIFuQHKa+PCB6UGN7djbP7uFGP5QqIZxOssMn51I+i571zf/SQaGQFD40QsC36Rrpx8wDU/5yrD4DCOoNtC4aOoWiLJErzlzCv3v7ZwP1vdiLSQMoP8H4roCYk7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9KM1d40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9KM1d40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F9C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715871142;
	bh=7KBJjhVGpYw5R1uqh4spOukq8Ub6M5TRA5ip5dhukok=;
	h=To:Subject:From:Date:From;
	b=n9KM1d40dxqYa7Dsag5X6NFOrLUQ8JShh/kExboTbSyPIplog3l/Z3Ifelm2j9Gis
	 mRquYCLCW0VkiAA+cq7ReszGsWMqG6a0xjrumn2bMqiwoEncJxqK0DtiYsf4FKzPAl
	 7osDET9uySdi6L0x39gy5Tc53djMUHKUoZ9mowiy5bdlO/1W5347bhLGuqAr0i2x+A
	 4VK1hgb5tPBFqH/hgp5DZI63/sAnY6J/lbsfkOqvzp9Oj3nlqP/UhuZJ8bA7j0S9Tc
	 ZxjcY7WDuxoj9/q0th+jpKVLf6Xpbw6mLiDs1G89B+ZyVTDaMhrCXYPwwIULHTot5i
	 iXm/Wfdy7wRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B2EC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587114278.7972.9517775790297343243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706f2aa98cae5be12220b04ae7f3257b78b31ec5560f17c7358b199e3926c133
Date: Thu, 16 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715871142

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D883E57D
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744548594; cv=none; b=l45mc8W0B1uOjCk4iHngJzv65CgVODyecCX46841dgBemjTW8MzEDfBkJCD0HgjdtDJi096QjB+bGOS/gkknPbrS0O6eWupxKNopY2WzQ2kgRL8pY8irLZ9OIMD4Dly8GizuyjPMHuBJMHCJTPTGNmcjVuuEXlc2HHX0n45l4ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744548594; c=relaxed/simple;
	bh=UncQKuznG+pM4RKQ2BzLpXbjr7Tp6zi+s26ZR5+TJkU=;
	h=To:Subject:From:Message-Id:Date; b=Ow5SaKXetF/R5q6UPoh+pqDT6a8mGnzltILiN7fazcM0X6bl2IvgTo+bcpX0OJQO485P10wHcDv9IYkE6bunvS7y6nPLeso/uoKy1xdl5f3YWYF1VB2WhSMb6tOk+fgGjK0t2Yr/bKxQHLE1xUeNQmdBLTHA9uOdtd7e9KbhlWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkwjcLVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkwjcLVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC21FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744548593;
	bh=UncQKuznG+pM4RKQ2BzLpXbjr7Tp6zi+s26ZR5+TJkU=;
	h=To:Subject:From:Date:From;
	b=NkwjcLVGQZM5tEThpmAz/If5rL3qVWvVTbPej51DwyLK5fJu/lUYoflLJLfki7Roc
	 yMiSd1GXSSAja4qH+KHcGewEHUr67j6nYglSyuaRWQJ/dTz0ztIE/Ogk6Nz7kT/uFi
	 pCHQebMoPIjtLA4Sx5Z2XvVHnU2BuwWUmrxGG2gwsDXHZplhogp7XAsX3ZAhrePPL5
	 dsGTRbctz3ZHYDMluPfzWi5Kqa0EpzzfssGb6ruhzVSytdE11HCUCymiN6yvTe+ay2
	 iR90dwhBcZbLNm9oQAVmgH/MmHM1ULNkEiDMPgoldJL83h9qqBDK9HN/B8RC0IBV10
	 +o/RhoxFjYtNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95188C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454859360.18714.6052515067693767737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b7ff2e72c0001c5abd976ea06393d128c1efa319b4595a3f15d5c34906e9a2
Date: Sun, 13 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744548593

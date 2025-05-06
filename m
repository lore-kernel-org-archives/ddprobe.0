Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DD23103DE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746490794; cv=none; b=o16l4o1D2e8Y2e25ID/sEuXT5Jf3bluRFSDrzmYKjQ3pDLqy61BbcRNam4nKjns6vq0F8u/r7vLLpRjrHD4n52BS4JJmJbkaGH58DhA/4/KdgI8TV2YRMY/LJ5xPtsf3LliwJX47Q6Oi30dvYCDS/whdeo+W2GHEgfDQX6dySlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746490794; c=relaxed/simple;
	bh=tiSfzv3a+qvC1fAinWq0p9nQDpG1HMy1IoewXJCQGAE=;
	h=To:Subject:From:Message-Id:Date; b=S9WLjfWJGxE9KtrSpp2rmc/rJis6k1OANvnakYLdgBMnkZp+UjEgPFb+dq9WXEhnotpP0b4HHuJgkMKpdm57TxXwcDjNAb9RSnAbXetyOLMiHb+E/UKHZb48sXn+fA9IHR1oErXX4ObiM8Fawh6dTEjXFMY61IvfBilfdSciJAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pahk4Ba/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pahk4Ba/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A011BC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746490793;
	bh=tiSfzv3a+qvC1fAinWq0p9nQDpG1HMy1IoewXJCQGAE=;
	h=To:Subject:From:Date:From;
	b=Pahk4Ba/lSN+hqq0bjyboJyhXKMx51s6BMc/oOr38WeLAbVEFnCCShCfsZi1PO95T
	 lc9FsZM2iUnKqL2wLSjWLak1Isoy/w5O24qdZMjv3u5RoaB6pGs55xMMcKM7eW/San
	 r7zD0FpeTu9Pm3LRAlSgQMcJv+5VFpoGILtb0lesuVL5vZqWdwruAmyJ+4z5A4BkdL
	 UP9R0q8JU/uiUm4/ZW8ID33t8NBj/Dg+yZC6dnL+S4WckVgrcQNgpntEDmknLwwZTl
	 mm2HIAGd3RQA+hd70yj5wqTkcM1U9G4Q1YR1ptFH5XtXlTqmzjEpIYjP607y+IJDi2
	 ESMn3ftPmWoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA53C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649079358.14893.12372828180149790668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a9874a05e9d8efa541e1817ec0670ae88e1d135da720fc574a56ad729ea231
Date: Tue, 06 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746490793

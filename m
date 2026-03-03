Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258ED2C0296
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547894; cv=none; b=EJIQwfNNg68rOUxHtP4S3BExrGnXzSW6xouFoh/itGXodizDzHG8RtM/hZdDb57VRTaq/DjambCr4S1xVht/bn1CoA4q7nAnGWhuBtx0VsvB+UqwEY3u4PbtxmdFe9aSCqQzCcUgVzXlqqHH1jZkDeQmRAT3BqAau8X2RtWFzm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547894; c=relaxed/simple;
	bh=Y7xceUkGTCppjoSPcgUiYbVF2DgOUK8l0O2PDIxvzLU=;
	h=To:Subject:From:Message-Id:Date; b=pPYi3w81c5hnKlmToj60lxj3VQE8zxLcHqTDn7khDD1bCCMsoJbSbrYjJcxr/Hp7u6s/xHaUeyLOYGGXIbKh3MzePRyqaS50Cn1xtvykwC/Mo142peaWLNOY0i2HPRlW/GEftNwdO27DTs9FOuC6bR6Exgf8CZcPNk074fi63mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTBBHl9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTBBHl9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C506FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772547893;
	bh=Y7xceUkGTCppjoSPcgUiYbVF2DgOUK8l0O2PDIxvzLU=;
	h=To:Subject:From:Date:From;
	b=aTBBHl9tR9VDYrpNgsFH2mQfmSja4cNLzO7E/doXiqzfZT/11mqGyJ94KHmhgW7k8
	 QcbIDMS4v3ZqZpwbW++lXz6O3z+0p6gG2rIzd5Yy4dmWJCzzbXLEx3E13tmlq8WmLk
	 H4EpNA7bH/CqkaA2fLaSvywhX8oGOdepYaFwtZj6+eMPOBIm9CWGU3aITAji6OL2oO
	 0y6k65Qi4KGuzWXCsX7Ozm4G4AhEkiJVs6+Ou6u+L+5QeE5aRu1NFNwJa+z4Fk62dw
	 IfHo0OWGwfABlCAz0+yosQZZHs0A5nI4vMdQjgCB33UVCHqNqh8XsggrwDwr+plicL
	 KC9vTrO7WZx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB8EC144C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254789367.18659.9424680107284727714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb3914c9c391748e2763ba301c43fa7d0de77d8ad0ed7991aa1380cbc8f8d3f
Date: Tue, 03 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772547893

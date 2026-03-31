Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FB835E944
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774924494; cv=none; b=hVvoluAt77AzjfeQrs4f0kbF+2hRU75dzGy+o9y/bjlKwbT0ndmtFzsmk7T0M+myuc5/QqgpCTeFpfAaUNfaEpt+bQcrluSxJ84iMDcVq1992A9yJfUQwPeHQ8bik4HHnDRFwsrom1ZaTcnQxQtauAfVyFArZkoPSk4bhR1DONM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774924494; c=relaxed/simple;
	bh=xHCmbCBBqLsi5sTMW9HOWMXXK1dOhzlrFmXaEdINnKE=;
	h=To:Subject:From:Message-Id:Date; b=oda5901hLN572dOrGR4egqUoLoMU8jD0wfhUaoCDUZbpFkJgsBTl69wgREt9WZjcvW8EPGYyRgQcWNtp4aBJIoJ4D8KYHOfqe9FQDVnTkTwVjfesSj9m2AtC1WFoK6SNa91vXiUXku6Z2J2BZqeAf5d7TNLjJ05f0NlHHZQcX6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cv1pRu2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cv1pRu2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF64C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774924493;
	bh=xHCmbCBBqLsi5sTMW9HOWMXXK1dOhzlrFmXaEdINnKE=;
	h=To:Subject:From:Date:From;
	b=cv1pRu2s07iTJzr5jvw/gQxoqOLWClkcW8GRQxbQpOhqQgLcPtyfpz9ag1M2gw/bk
	 qHwah9O5STQBrKHk/DUene30rX/aGHBgigFLP0tbrAiOAr2jPooIo9NASkyonxMeV+
	 7htCcu+YEiLvlFq77gTbcoeXgKMnzl5dds9Qw0mPmDpYYRmEhn21kQlZVIEGwP+dgT
	 8O9D7keyRRuMxxpxCt+4scpVhN0WUVWC5sB7I8CaKGEZGyz2qa6OnYD1TBH+xJuWhp
	 b4bDJJOazDlgAZg4DmFolATm4Az/PUV7/ddUyE6cAkYbri/4kO822OsHyDjqbAeEcW
	 EDMxPbBWuTfBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C901061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492449360.19201.1208150912790582868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84a2e2ec58e2697a95ffd40eb907284098bdf44107097e4824d296bee311954
Date: Tue, 31 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774924493

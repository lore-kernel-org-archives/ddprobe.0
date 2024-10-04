Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD413CF74
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728036354; cv=none; b=iMH7bL6r2jdn6wxptoEmIbVPIrKBV42dRbuvmYy1ZAi+Pd+RqmljPX1a0f10R/tuFAlmjdhJSbB1EVYOfEVvWa1eQBJ0laTFjBrtCioeMkqNaP7ACVTXJkuFBFjWi6G+JpBjVaSqK9V7iLKtmzlqxhmiXMWd9cOSxQbUA9WE9Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728036354; c=relaxed/simple;
	bh=itY8GWp8UHGzJHn6z4Ce7mn5sYgp9iPs+CNl60MsqXE=;
	h=To:Subject:From:Message-Id:Date; b=RANpYDT23kr0x8hrTsDBPKh4yDidgKcO7QGcXBG+4cW7eMOM6wWzw8uzmydKscQEQghwKS0z0QfwN2gQrh4U3QgaVFCrB0/DsoRzuxftijK1cWwfEMuouK5buQWbzljwZ93hzAfCPUEOhFsnIVxiOucNhoDAQwz78sXNeaO4eGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUmfUR6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUmfUR6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FAC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728036353;
	bh=itY8GWp8UHGzJHn6z4Ce7mn5sYgp9iPs+CNl60MsqXE=;
	h=To:Subject:From:Date:From;
	b=QUmfUR6R0IG3r10+RPZKVnsU64aDgdHHXag+V1bYi5Fhdq1fHdWg2YqVKDRL9m7Nv
	 /XLef45pnVxblaeMHOFUqavZj1n91F6cDhrYxCjgayfnsyxRVum6tpskawN/BgX3aZ
	 DKnAuILV7nSaLHweLDhTxyQ7kV2li8dHGC973nq9Cvhz0sXZqnEzk2lM/mHpD1awH0
	 9+toyRE/6RT/RdiadJP5CIVwNMkTuwDc4AGycxJR6Z8FsV1tG00s711YFaw/e/P3ib
	 YZS3KOc91cLicL8Ou7lgfWgBQ3Pt/TI58cboYJXAEdmYk+F9q+GA8D1CnjBnK8/JSi
	 s30WHNxCfH2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E46CFA758
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803635358.27904.7486947678718011960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4729bd7843bfc3dfdeaf35ae3f18d0829905263ac452c171683640c79f479940
Date: Fri, 04 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728036353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F72E40E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759274994; cv=none; b=QyvpxPOZLJwo1pwgSF3SHVvPQQHBqDdNP6zkPUdIthL6fvP1n5ik8nVwiS1MaZ0AFOphS4bpvcJSDjOledrCSwysLCJzg37R0S9ppWEs1AmdDpQKfnPIq5cCHBug7ohYENdy0WRSyj5a78I5nzeTbFeljIBE8PmSZhtV8jjzSM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759274994; c=relaxed/simple;
	bh=C8RsHHmLW9Hwcsdbg4C1HArOXtm7KNjYQ87uAkunbMk=;
	h=To:Subject:From:Message-Id:Date; b=hs4+vkJcuKXrBLrmeKvlG03YtAeU3ZJ5P03XDPPehBX9ENWkik3U7KfZBXbdZR6jXCCOcwp1Q54RvgHJaHMFEUXiGQ8wfTSD09sOqiax3nwOLOklmiFgLu3VI3eJNRKJGBX5O5KCK/ZJznFkxsG/qocU1LunI+svAU++ZWuTmd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK18ZkKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK18ZkKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D44C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759274993;
	bh=C8RsHHmLW9Hwcsdbg4C1HArOXtm7KNjYQ87uAkunbMk=;
	h=To:Subject:From:Date:From;
	b=OK18ZkKCtaYUzakngZanPTk2mtj9mtlweBn0y4FqxUmtohO5WonY6atV/l7AIP1ar
	 k6deJP5x/fY4J6G7AlXmSTjNehgV6KujML5ObS4v0NWGvZiMpn7mxxlKI9mChZ2DRQ
	 lQIR671ijmD4Ji1Pr5sQgAjYrbHTbt99v0AGrk/y4jqv94Lqz9JW9zVmp+JSQzUYoJ
	 Pi80zZxFBPmm95RGGEH8MoZJAk66G359QJWYoeLVoo8lL/Cgrm7kxO86pbwBVV6NR5
	 Y/yJfdIbapXeQiZfqNZBFw7ZTkFlaKViIDs1fWystZVhFNFncPkkNEp3z4qjdrqPKw
	 gqZHc3+P4BcHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28BECCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927499364.4508.9966321043539815017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd7587e5cd3ab9b5b22d3845c57ac93f8f24c12ff107900f158d397776ab2ee
Date: Tue, 30 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759274993

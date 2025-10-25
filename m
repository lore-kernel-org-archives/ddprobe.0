Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328F51494C2
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761394794; cv=none; b=CTMeaBbJAikU5PkZh2w6obzqg2rTwF2OKhVD+QY4fOQ4wLaPGEsvfyw9hQM2RFXwN0dpoFkbqcgQa1LRQ8v5+16MnIMTelj6exloK+ffyqaLhSwtk9pF+DqsD1pxgwldwr/4R0yRhMVhp8uw4EIn+hjGAGcruFYakiaRMD61eXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761394794; c=relaxed/simple;
	bh=XPhadGv5L4s9k7pfayCUC0ENTniD1YEW/gaSzwmksFs=;
	h=To:Subject:From:Message-Id:Date; b=BML9QNNvLDrnAwe4ywVTSR0tb7VxuSeALoLGFLHykK8ZRq4Dz2Zx+uI/c3LF829wOLL/eBMKQL+vMNAEZ8di56sP1cHv8v3gntclHM7Fi9iqYLOqEzFgyX6xBz4/4Lyy3g4z/HNamipUZHXChyrz7ZTHqpAgLN6ZtXyhKCN1LjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHzSNj19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHzSNj19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD13CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761394793;
	bh=XPhadGv5L4s9k7pfayCUC0ENTniD1YEW/gaSzwmksFs=;
	h=To:Subject:From:Date:From;
	b=OHzSNj19i9Efdovl94oxUJk7Ww09jQNMb3SAv/iOOadVoEuSJJ6zECe9hFPQrICSw
	 1OyACYhSQkH/vzgOHYNmAYSdVIHogYCKeJH+3CbsyJGL4lZiBQ64l6WRzda1XtBL9g
	 s/73bOAhXY74FFtnSdrl55o/XfmVjf0/5vg7c0Wg7gbaaAx31ofHpunmH50wZhnK3T
	 cyIIxvcRkgiZz+En/hGdx+95TSQ+deagzJOomBhGdLXztcELAHKjw6cgVYduDxewF9
	 FuN4XSUGtEgUDajFcb0qV7yPgklXF5GcqneIxOK/TnHZVqOKB9i+N5lIqrNPg2eijQ
	 mRxriWacZkEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A094CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139479359.17923.1184918871981964074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ac4b26ea443e19f35e33344544124aafe848d0572c798a7d31bdf9173d2315
Date: Sat, 25 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761394793

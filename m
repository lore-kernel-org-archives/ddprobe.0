Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322021D47B4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747124994; cv=none; b=HNJaTKaM6ArQj1IHNN+a5ai9BLJoEItqxcwEfU1UDDP6ABHK8EMBWRlE4j70R9JwoaepdJuhDguGk/Dfa+xeWYV43CmTJa5sejyLVEt+QS9fccLjGHtFzlUpi285uSQvXcLZNOq4Ie19eoKY8b7eerEfcGZaF6al+SR06RSp4rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747124994; c=relaxed/simple;
	bh=oPvZcRo5C8RZ6tRqIaBC9JyNMi5xobGjJ7cryrRG+jg=;
	h=To:Subject:From:Message-Id:Date; b=H1kCHMUXCiV96i2ptD49chFcSPbv1q+v3pItd2TVR7wcqtFjorzY+Lj18P64gAXLBnqFIyQy5y+hhd9xa/3LhR/CbLVn1Ft8WWnG9ZC1nrjUMtSFl7HRnQJeRsOdAVS3c7WP5NUvUGIhEoWy8sCkk1GM8x7lzZjy4J/IUMLMuzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoBPENff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoBPENff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747124993;
	bh=oPvZcRo5C8RZ6tRqIaBC9JyNMi5xobGjJ7cryrRG+jg=;
	h=To:Subject:From:Date:From;
	b=YoBPENff91ecuB5fWUKhl5KF4sMQBWJOPIdyTmLs9In3X6iKt+5avrqMqWbesSf9O
	 rWSpNxT7/hu6x2DOP28S9wCxvQP/OBcbK0G/OQIebSp1nvi63NL9C6eEOQH9FQL0Bu
	 5T89w6us6FNlorHhW2aV4R5TZm7fbjHz9+Kgf3xJ2GC4wPyCjtidKMBEoQdhWXo43p
	 osCh5oKENxiX5/2zPUd7vxyIR6qzDdsQAeukqfYH7YL96c9k5M4hi8/ApRy7FPbMHR
	 cBZsnCkItsyU27uRd51B2VsLqaC30zaAdlx183F6ble5+0Ng0BzR0e/KJY59e3xvTq
	 TtTvpHxILUa5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F8C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712499357.2675.10943933909688411961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf97ce2acb44a43e9e6100d41cc3d97033c7af032b22a9d58bfc577c42a8e5c0
Date: Tue, 13 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747124993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6FD28935A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761599394; cv=none; b=KSDbwhzmtwVpinFsGfPfdXcbWdaDLlXfU5ESWdZ9FW8nqME0PiXmaV7qTTlh9gn5p56Efa2lJ8+oArXyPtWZ+sqEkGkf4RTdAQsx1snj21R3IJaNNK8WS4O0ZB8/z44GsTaNnmmeRa6xTSom7i5P5C0oLsx0sW9hb2ci74Sq6jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761599394; c=relaxed/simple;
	bh=X/tXkRkwJS4GGvMyRZLq/TcdV74hsvAovjdXEdete8A=;
	h=To:Subject:From:Message-Id:Date; b=IRULycJzTsiuJPNMw7pLUSQSgy/s94kyg5y6sWUTSHrwa6eLixoSEGXG93WRNmPsSRIVapNG5cwckYmT/lX5s0qH6qF6FGo6rBWfma0Y71NEm/I0wmqagbQF4foN5v6Rbx2T88WFv1vb3qvRZuN3Ld9dIAb8lPjz1qMuRYAvIZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Abds55RT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Abds55RT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761599393;
	bh=X/tXkRkwJS4GGvMyRZLq/TcdV74hsvAovjdXEdete8A=;
	h=To:Subject:From:Date:From;
	b=Abds55RT8VY6w4u8LKbgdhqfRnl4c5BLLOYWomFuTlrgbPKxY7ujZjDSZT0OpUycg
	 4r4LW8wfqgi4M5ePnpYBSnn6qosJoziPhIY2JPQCl/bcb7reH7CFbWPZnXU4zV5c4U
	 SCHx6MUWIOQ1ifc8wbjyfu2GPmMlEinVZB8gj9SaTVdRs52jYVjG4VY3O5bkJ9titu
	 4ekTlm7xPyzLns7MEOl8AJ8X24T4nhz9W0ctVfzNzI+szdMCt69wu3CODaHp6s9h41
	 +98Y6xonj6LxsmBgRrhjKtclgbrR4o1S8qUKTLOztNAdUUqOCwGi2Cx2U3anDoaXHj
	 Emkp+pWENXbcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CFCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159939358.14139.8216811706160558599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a706d2d16c2d3ffcd5b9f1e090a55a862e63b1c15e3f5eb4bffef69ab2b168
Date: Mon, 27 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761599393

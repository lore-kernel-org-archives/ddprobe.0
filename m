Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458119067C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778421034; cv=none; b=AIFKiT33fal7NkeFCDMor70D40Zv67zdk8DoOMO39WlkgjDftYMvFQ2+6U5ZHetbgjpDv8I3GMHZBY2PYtnCB0WRAg3r4sZRDk2bpa7Vj2TsgSE5e879y5Z0E8po7rwhX1nMT0OtvaGZ+zokbLwITJHFtXhhQETuHdCfjxHpArw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778421034; c=relaxed/simple;
	bh=yzqrdvUzEBKL9kyfj/jBHwgFT/4ZXNIZe55HyVDkuzg=;
	h=To:Subject:From:Message-Id:Date; b=WrgQe3y58VEddHrJvj5bYilOwlqwFcd36mlwai/z2E68JhdSeJ6o9Tllez4bEkvptgyAxtxkRS7YJYzqRnVzXY5Cpn1DepLwOsqYGeZzEtm8UGws0t5L1kmE6E39Hh0DVVYCe3dDWWSrQAjI1ZxgYJj0hM+jo/JG4dUR4n9hnsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTBf4BM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTBf4BM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA09CC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778421033;
	bh=yzqrdvUzEBKL9kyfj/jBHwgFT/4ZXNIZe55HyVDkuzg=;
	h=To:Subject:From:Date:From;
	b=TTBf4BM8sz1Ybxicp+oMwqBXf6keH6auZj/IywUkSI75zQDiW4ydACWwpaN5x3OUb
	 NCVwA2NA1R3/aH+wT+7RwXDZMt5vPZ0rHIaYWUzVTF37Hh4ZOjuJvsdlHcMh0gCMVq
	 OL4c7my2L7PcDlND5R5eASQgi6dZ6/msDzoXk42YxLsHVEuvjG8aka+LZOhtaSIJAN
	 oVVviWALtrnQxFyS+3O6cKt+A0al0KIfxLW5nfnd8dTCd14sG6Dv+vXCDxhbitvQb8
	 iWQV0rtq5fILZWop60wJVFxmeV1mCoVivdPCOKtd5GBbBvBKFV50LV22gfqwiyezy0
	 WRBUxs/MGe/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A3CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842103368.533.14547962029944136766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114757d8e890bced0b5edc5d8a7af06714d520c3baabebbb6ae7eb015a874481
Date: Sun, 10 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778421033

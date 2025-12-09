Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED27E260565
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765242774; cv=none; b=iKdWQoVN7QnOj0/LE0fhNEgRGWE8I/mwZRGQc9rbU4GoXsxjNaNWmc5xiyQjUYge0/uAVNoJr/UtfYmC1EsNg+xoSSyZkXTgAySwR58vV5xwd3FAqXrHuHebDR0dxQpdhe36CKZFzyBN5IEBclKGj7KD1yjykuMMWFTCJfOaDwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765242774; c=relaxed/simple;
	bh=9jxqS6/cW9vyl/ZhF/nMmJozLqZJ4ODB+snRr/U3DhU=;
	h=To:Subject:From:Message-Id:Date; b=UbaLaGGNRgC3/xvPnHXN2c1dCtBTBf41XsH9+HdnJPH/2G7jnRxb6TcPEPOJhDVpQE5WMK5wAXhr66/adLnzLfqz0DRZOptkv1ZTRI764PQ63Y0FtjpwlDX5jHJxmAEMbpbz/x0bTOTU8k/WqY5FRB7tRIg4gm8g+LLROL6cUR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2K6ujOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2K6ujOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5052C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765242773;
	bh=9jxqS6/cW9vyl/ZhF/nMmJozLqZJ4ODB+snRr/U3DhU=;
	h=To:Subject:From:Date:From;
	b=E2K6ujOKRHksWXaQQKPaoKiBG6aqJPbk7ZMkh2PExQ1se2ne/qQ8KJGlV5P5Az2Ur
	 FGoWxsk5Au08SxMoiedOfxqw5MxMbsqX/+q1Zij2MvHIKolEReZbCDpZy2ivm7i3lq
	 H3monp2VZ1W5hdZuiS/JhFT0FQrvedYToPrjtL1gUGnw9Z4rfohuN5ay7cDgWLR2h5
	 2QPcZaOCyFwQq6Ci4bCvGFBGKYnpj1Huu4dVM+58BurfkjY3gQ+5I1CAjbhgZIO2qf
	 rw4BbNhSg2eT+EkjtzLLHmvfxI7Szh+/jNkzqGgDcjM9dnmkb/yftJsdQvxpoui6uG
	 rWBKnwV+ju92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C3D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524277358.9635.1053826117969154738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ce12d48a1df30fe5a92d9e5a1537a9385bb15f857938bdf64353bc45ad9975
Date: Tue, 09 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765242773

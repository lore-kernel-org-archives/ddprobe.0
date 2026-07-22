Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB7C1A6806
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784723914; cv=none; b=rgkv+GBgxrDs3L9uE3TZwziC92zeR57wfWys4bJIHIU8s8pYQhFDVRMiLkHc/dfmGgTlg+eSK+DSsegObRkhQB3UIUPaRQH53DfWkZc3Ecw3aY0SdcrIIOsGspZL1nkKPuiwn4UCXVOH7S2RJhZyBe/YEpdcgrs/ym51IDJfdQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784723914; c=relaxed/simple;
	bh=ABOZFwSDggo4TVCE5eFMopoiTSELWZZsNyqgrFlS/yw=;
	h=To:Subject:From:Message-Id:Date; b=A5blqT6pNzW9brwJ0SaHqqtV+pfKBPpLLk9Mzc6+UV8Dwd/JHF7GoMnvWB5nKerd6YJiiI/I4YEMXN7msu84B3Erv/j5xVtRmYOwJR/Gvchm4/Vai9z66CQDkJF1wcnpvLQa4Iywop/rTJ+QxV2EvFYuG5NdjpfIzWxq/M6HwfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur1NclHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur1NclHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D431CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784723913;
	bh=ABOZFwSDggo4TVCE5eFMopoiTSELWZZsNyqgrFlS/yw=;
	h=To:Subject:From:Date:From;
	b=ur1NclHBbCljEpukJXC7N0Uva1KhV49af7hduxbDLyoH8mUgrUcFPMIsYyDfZsuXu
	 vFrOgGtG+cETPu85XW53OE8iA62IekjaPjXbGThgk+b4rcLcXYjOesPe0X4gQco4Hj
	 82eodL4/weRCRwNBEEXkjv7SZ1NW7KCeA3xpUPcXN20o10Ff31pFLWDiPsf0aB+Hgm
	 m3YubUqiBeEtfwMkYb7hhZ+kdgcetuNRoJJJjVYXGbHTDNhianeJptuYk/OpgaQrXu
	 tHwfDUPZRkRT9WSoWiSEwJZY2TSELA49nZ9dwdfMU9P3VGVRK0xyJObvPJYkspboKF
	 vQ+ZrYsItB4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD762C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472391370.5508.3507150748300934164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2197c23d3904063f0e315deabb6371f284279880c68fb8eb9cea72177147b351
Date: Wed, 22 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784723913

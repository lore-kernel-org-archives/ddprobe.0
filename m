Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF5D19D07E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785196834; cv=none; b=Kf1XiKLCXXblwuoPl2fLmsGsA/USzXoyVCWXEpfeZX2Z44EmwY4nN7DtFnXvfBIfsArRGm4QkLSQ0weVdIQva71qQkJk/rf9Vpvs5FIvOJmJ02vOudEctG2FuXCKFGk2R13kIP/NEoHdhEBAdvzZ1V5iOC36uCOBbzO9Bdiu+FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785196834; c=relaxed/simple;
	bh=WCMvZjKoyHi5BVS8hmrxN1ogS/EiXIoq1GwlDA8xQ18=;
	h=To:Subject:From:Message-Id:Date; b=Sswp7Yt7nWTo6jdZ0Js1rtRz8mvPoSGs+jSvP+Dyla3LnYalASP3eOCMUNfy4azR3CUKCnmEc+LeDHvatmwqY1LxAtqgB1VaWDOi8mntHQ8P2JKfIPk/N3kYlHtZ9IOh2dWEQb0MxuU1tPjQP7Q5HwCs8bpcvRbACI4pBxj9umU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rS2QKTbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rS2QKTbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB74C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785196833;
	bh=WCMvZjKoyHi5BVS8hmrxN1ogS/EiXIoq1GwlDA8xQ18=;
	h=To:Subject:From:Date:From;
	b=rS2QKTbx3FmTOZoFs0+NtIXvam1YRD3VoEp8K8hACTE6tXSKTHTYU+Ch3yfd9uA8O
	 iOrrbZqG/H5T/5bi4uOSWeWTuvxNBJhjqk69XY22I3q7xXC5LTEAfuD7VuHKglHNew
	 hvqFyGTUcM9Bia6xSv6MFqhGP8m4xkQrxnjNNIOIgYUsppKS1TQJOuxie1p2jZFqvk
	 1KCOZnykBkui/xBgsn8GibZvKZycL9JHqLe6GrtbGgC7AXRJxZrEu30cbY18g99zUS
	 DfcayKyG5wffyZmkfoAgXLfTBbX+0vqx2/vsVeYpVNF2icwgfF/gowiCbIXPr8rk4L
	 3nk5l5eELxpUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFFFC53209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519683369.20659.2993330147446767732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd78a110eb404cd695ed0b6f7a58b976b4d9918c582facb5cd95d6ccea03667c
Date: Tue, 28 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785196833

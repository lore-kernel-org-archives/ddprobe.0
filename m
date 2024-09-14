Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430291D094C
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726339554; cv=none; b=etOYlnTQ28If7P7OINBfZ/QdI60EHiK4EbwnJko5f6BXiDNQoZuubWIVm12FztxKI8G/7BtERFquS3kAGrX2FUjBjHTkp+ec7Uqt5jbtyLH8bjB7JvWrCfBmWHgLGiABCTQiSXZPq+QqVdWny3oQaXVe7PeDU7QSFXxmZFCYtVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726339554; c=relaxed/simple;
	bh=5FRXD60IW+Ehu5ktu0yLCtQ/jpXIISZITiNbYy2NG2w=;
	h=To:Subject:From:Message-Id:Date; b=tdLFher98gaomq/2IXqcKoi0BmsInCX2EUB+/j6bwoi5EZO/o0dpbWjZvix4dTRvLjEG+kknAIdfoHtxiNjkTx48ZKriwB7JpTSG4w9Vc02VMSbOVXLlTpHbhcVKO7fyjsFONJPjydAEW7vnb+PcBwNdu+KbWpxyO8rHzi4sldw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7WW7DEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7WW7DEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB792C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726339553;
	bh=5FRXD60IW+Ehu5ktu0yLCtQ/jpXIISZITiNbYy2NG2w=;
	h=To:Subject:From:Date:From;
	b=k7WW7DEEQGnXBYfq1S2JcVhQr/0SgU0ai/3niTalPPnKprE4Xr9MXqNKKTvcmW2So
	 +cYKltGSNDgN80BYPnyAmMWuN0kAAeoo1XS9J5uY2XmtB8xIf0Q5kKuTqPlyhnUvkm
	 K8dlTg0A/XAND/9tTkhDxnY3e560wmMHVfVbtfPHI3/kM1AoMqGM6y3BkGYObNazeZ
	 KwXbI7VgGqPGM4PyL8vzrR4yNuof1/NK1G9XtYFRCMFpaZfmkZO1fs/pjTD7hNSXaj
	 AsIYXOi+vhVdnKlO4J10+ADF5hs5ipd+lKiwVileAGdxJZLFDYvXgDnTMh2HJl339k
	 7I523c2oQ/GKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E3C021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633955361.13542.368367049560725217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae131dc1cbfe9dc7750451138d8bbaa3fc0945a9982ee9d3b01443a576a8d10
Date: Sat, 14 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726339553

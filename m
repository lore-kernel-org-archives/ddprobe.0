Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A57935F173
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773136494; cv=none; b=jcgbzgezFBiXZ+ySiEx7JPN1msRicJP70VXMyTp6+t2CTFs2Q5Xoa5MNkRZB99tm8YzKqlLzIXcttOWrzyD10ou8vBi+9LUyVAzD/XQ2LqJejxdXqGCIYFBaaRrclkSsSj3FGX9X+TnlPq7CrS7HIzgasTT7RZ/urN0A3UwfauA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773136494; c=relaxed/simple;
	bh=GIz+7mRFCuOsCjjVTMAXIXbYo3kUaz5IjJ0grrgJTMI=;
	h=To:Subject:From:Message-Id:Date; b=fO4Wg/WKTRo0dgYmHbPPRD0iqZ3HdZit1kXJZblN3/fMuDwsL63SMrfzf0J07E7/hw0yz7tMLlhic9JUNVzYgJEiuTbMXrpjpuHwUMxUx91DLaPJgbT5QJE47YtQJ/9tFwoL3Xy2pFlVuU7qokv1mApohw4DWsnl1TP3uvwpj8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3CtujaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3CtujaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF8C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773136493;
	bh=GIz+7mRFCuOsCjjVTMAXIXbYo3kUaz5IjJ0grrgJTMI=;
	h=To:Subject:From:Date:From;
	b=j3CtujaIeTSlBKS6rs/YOGNj3XRbUIN71BNSdMVhk3P1k3v3mEZkS0cdzF0c1Ljnu
	 kccXtwhw3F0Tz6/vUCyMvqMYURRv7Lzb/0GRtHNrH+pMwe9D4CIYyElCfIrnrdXowS
	 NI/4/ITZ26R8oILFtEWy2B5SJksajwR1asbmPWedU97dO5tJ7QiB05UmxoggQ4b3QS
	 +XcR3u5/QB7pNUNSxmcB9mg9FyOH39A7ZuP0S43oxzfTgU4CQCcZw614JzZqi1zi29
	 h0AE68cnAVnUV69f7mAhP7hqJvjeC7plzZJS2Ss25fkMBcK/342fbc9FpqpaGTDbTU
	 HA0RDwDmjxMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC5EF3C27D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313649358.2596.13114687646768544056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7071f0905b36f33ab35d026ac86adb8c1f30baa043417a51ff8b0a39005f2d
Date: Tue, 10 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773136493

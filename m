Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF7C14D283
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762755594; cv=none; b=tL+DFLkQ4S9md3odefb2QE8NqOyEbcGinCHLrt1kS1juVacm+s2OywlhCZCXdEoQoknHad57KZBC9+Rth50MiQH6n9szudL/fpUb58DW1zoomcHW+Km6A/+4TBYjnHB++9OxajmOfl0+kBMT71cerH6KO7gTmNIVmFJMLUzMIfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762755594; c=relaxed/simple;
	bh=UnmflsLUnk5kw1nh3ZbmKtiGmYlajtnyTLrihoP/hT8=;
	h=To:Subject:From:Message-Id:Date; b=JlMHyUww+B0qP7cJBwDRADyESd3zKXZD3wsKmMGQGi2/nqDNg2FtIiuUyOlmpmWTe14cbXIyGtGSWtfhUmvzjvY9jvHGG3vPBOoTKACHOkool6TVAk2WRKhgD79LvXeUCnUpoL/tpDtE6cI4+F1FsYOYTKk5KwrGXs7etJWaOoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcaexCp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcaexCp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7569C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762755593;
	bh=UnmflsLUnk5kw1nh3ZbmKtiGmYlajtnyTLrihoP/hT8=;
	h=To:Subject:From:Date:From;
	b=DcaexCp1ehBesWGHyHelJK8iIMo7rh80nq2FqJpU5daLzZlgqKCM2fxps2tTTQuh3
	 dt0+2vwQWLJn793WEwKuXuLWnUcoArRViSM9mRW956DzX5Yli1NmetqtYGRSIGmUFQ
	 iPscTSJ9n3hPj8DY9WcLDpFxdv+6WEcOsruzFIWfEk+LxQKfwSliWiiTh97ESC9CS3
	 zblLy2lSa7tbehiIa1nKxcJwdzqneEUFvQdGFjs2q2GMICbr2Tsaim27NAYqTrz6jn
	 g+jgfvLdbUCUj5yJYI+KqKtS/kF9p9+O6k6+IDhBCm3/EEsjXAfdU4/qzAwoxfVc+C
	 K84DlyAC90/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5ACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275559358.25150.13362686594392555421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2f1e29edb48efc509338755b5da74cd46dd23aeecae6bbcf20872fcb1116a0
Date: Mon, 10 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762755593

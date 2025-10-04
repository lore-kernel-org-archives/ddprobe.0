Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1D446BF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759557594; cv=none; b=ZlvMrJlpDadRWw/18rnhxLP+AcauJAbiQ673n8OVcR3aJv6kLKrKeLHzzoK/LHKcwMr98pVDKVBUSgvBAKLr6w23PpmaHePYD2Qt1Y5bnsyydoIshqEXw1w29yPV4KNInMdCutjO2ofdaiKB9EWYz/cx6ZkM63ApD2MgsN1exjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759557594; c=relaxed/simple;
	bh=t2viPmA7F8dia12M1tx1OzoI+XnYnUgord3Uog/Wx74=;
	h=To:Subject:From:Message-Id:Date; b=PkfQrGjNKzYNvlUExWB2VpU5oKAH0C+9ZrqrbzHiOmC3qhoTu+gZ46oD5oGTkckanBxlzASXYQnXYAmzbWyNbCJw0EwVU9JLqNYkv0Lk2dAuCI77+AxNL91B8owawIZs6Mn4allQvfecPZCCdqM1yxWA3AMjvrx5ITzs+zxWSis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDtf93/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDtf93/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5667C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759557593;
	bh=t2viPmA7F8dia12M1tx1OzoI+XnYnUgord3Uog/Wx74=;
	h=To:Subject:From:Date:From;
	b=TDtf93/MUKTAPYMqfSzcft3pNhGwkLTLZSe9UIGl/VrtC15Vuq77k91+ekgSvlKhU
	 hER0kIo9tegN11hNhM5B0wSGGmzytoQEnL9Ungz5gorMg7qQVPlu2irIM0LBO1JQdv
	 lcV5EapRTIYxqsQPXoO5lcrO+WZv0qVe/ilcdjTDx/Qw/7Uj7DlFskcFTqCiZpvgls
	 HrXzUZqBkbu5PpcbHSJ6/163I6XEyOHl9oy3RgI0NuxbSOD/MWMuaFI8h/X8a24uti
	 oeXydXMrI1j6YpFJuMI2MkioQy9WwDXPLl3WPlZ2jChApG5pSH54ZN1w8MEYjdcKtb
	 wTIoghaarCbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF3CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955759358.13406.17683028868005573359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f8337d929dc491ca219bf67d4f99a7e4822a0bb994c39b93e0478287960f93
Date: Sat, 04 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759557593

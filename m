Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A6C53A9
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716167543; cv=none; b=isa2DJDMsLtkpPATF+WRB+cZw5yLT+CHzvyAM0k3HjEtWvGiR1vJNNo/k5+wBaVGYKu24cQefYNQSaQYx23Zj+ZIg5mwNigHJqc0PCT22biu77pIf9XFgxf4CLO4mLjDvAx6aWSV92888eYhGZTtcu9EDnhhP3RMc5kmo+trJnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716167543; c=relaxed/simple;
	bh=pMMwecbWTnnC8XCdXV7Nuh7MKj2Ljavd7Dsyz+us3zQ=;
	h=To:Subject:From:Message-Id:Date; b=uqArufVQ/7qEE+6oSOUj+BYMAuEjY5jkxD2QuzWDLl3FaVMM1fHnOlbB2YUW9ZQHybY6fW2Tx5g7J4XNmGljZ5eFQCJAczLjwH+drkak0+nS9e6BguZNxEZYDS00RyYCuscxiReKXpHNJWmNb42mlee4mtr9kibSfIUD7wRXjuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMh00vic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMh00vic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEE0C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716167542;
	bh=pMMwecbWTnnC8XCdXV7Nuh7MKj2Ljavd7Dsyz+us3zQ=;
	h=To:Subject:From:Date:From;
	b=KMh00vic3ZqAzohKxuqXE2nBiwe7TczF31NDRRx1gOELTy+kG0bG7UM2TFl77mjU8
	 ysGw3C+OpZaVFWeuOC/5bskaacsySUHNySBxLMME25uyHWP4jGHuT14+6RuMAiEae3
	 J8odQvz2FOk05kAZvussapA7O2LXfpxzCbvjdpnhkwy9Ypdrf8nElbIFviUPBI/Fc/
	 kQ0jpWQrct0yQtFLXS0ItP7drvt4iDwWkosU41SXx/RbQK6G+1S6lzuT4Gr66TarMA
	 2Gt1F6iuIUyLQWpfxg4UPLO85wipgEmUOIi2FQxRcoTsGlVwfdjWMdoZtMOA9ILcmQ
	 ay4ftK4w8Fp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A51C25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616754277.4275.4451262987401648070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0606c8a14a129076f25a75ed3d2cc642f52b55257a76e86c2f45792069bc41
Date: Mon, 20 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716167542

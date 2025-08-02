Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D38D2E36FD
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754135995; cv=none; b=gqcXCbN8QY2hxILZlIS4/D/rMWyLfas3C4eZZSn7lauqw2myZAxE8ClOg2gNPm+ZsmMJNNDKusQ0Oi8YH5StbKL9Yew/5/HsuZJHi7SANZEgF85h643oJskt99UHji9jfsbOth5hH711vnpoYUMe3WCiDn0SLX86a0NcxoG+s/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754135995; c=relaxed/simple;
	bh=YK9eM1K1B5+woezIgCDOy1Vz9wiXstYGevqEBBDPt4Q=;
	h=To:Subject:From:Message-Id:Date; b=EqoEw8TyHURHk8+D65SRRaz1hXIrVrpmh/YBNpa+YYTXCF0woWCGFAtgK5Kn1VBiyA7FNrMREavgQ+9Y7HgvoYTZpYj2uNJKqTFqDTM8lsEc4wGFdMTZya1kuEipfxpS5EjMs/w9bXjqYc9dUKtlXYbkn3wPUAONgmtFgWSX7hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLMW2sgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLMW2sgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754135993;
	bh=YK9eM1K1B5+woezIgCDOy1Vz9wiXstYGevqEBBDPt4Q=;
	h=To:Subject:From:Date:From;
	b=tLMW2sgZqieY7HVnOyNHDqY+afXyxAZYrjlP+ijwdfVmJjrOjyw9Ax8s5h6yQP4IC
	 t8nqbrqi4qsbSTbFmyHx3Ay2/LtLJd7JRXOFxLMXevtMfX1LSUSYA0TOncLG3kWxAA
	 NjFelMo/Zztv/p2rma2LYDy1ZWgWwv1f2Iu4LFqIq1W2qSKLgHN6zpRM9G3nUaYlS0
	 pDRZya8s7I1exVPnKQpAt9yzS3/SYkMfpwe1o2fD06Ig+o1ghp+z0eNTmqU7wjDTNr
	 7I2znSyK1FWZJbJFnKtWsRPD3P0A50EraIBjSZ0dGORrEhtbt82oLC2M1GiPb/1iBq
	 5YnWtgGVL60yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DDC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413599358.17465.16374397548540011711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed062357520ec50db8744b82974fd914e83b0b82cf2a500705ae469d0edc6f3
Date: Sat, 02 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754135993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6911FFC48
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775265334; cv=none; b=M8AYOd/TVxgArtKlmwBJIAy884i8N08e9AQ3qgykLneL5e0V3pvmdmUwBHupCTPqWjb3V48LSV/cPbOCe/XLHZTTfYWCWAJYwYd+b6fWrtjsGje29IcoT3PZ3rDlUuW0y0oo6RujqKtmakhCRiZWPU2eFAyiUc2jZECc8BXuMsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775265334; c=relaxed/simple;
	bh=lialBffGagWCj2MshHcwrPd3o5o9DxlOZlMdd9gJNf8=;
	h=To:Subject:From:Message-Id:Date; b=WgTP5Z9OAnYnqc1g1U4SXZ9LaxHoKmjEkEpeEwM+g9Y7dYXwHqrTaz6x0gmDNs/RyKcXY2D2T20iF85t/NxdIHpb3YFcSILXibD7jsTUhK8c176x80g1l9WjztXXw7R2uE8Lvu8D8dVCqdBv9u9+DbRPce9VcGieQUmg9W7GFu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m31v5nl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m31v5nl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE827C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775265333;
	bh=lialBffGagWCj2MshHcwrPd3o5o9DxlOZlMdd9gJNf8=;
	h=To:Subject:From:Date:From;
	b=m31v5nl/CRHr7QJCJhqT1YpLsPKqqtID/Jkh3Mwwy7oGlcErpF09AkKP4lMe3AoiF
	 r/Wxrj3vXUZsheLKLC5IuevNQH4gW2oeRhazLCKsfWGVOdTPfJwQiFwH5Qt26yND8E
	 nIwdfJUuKKzl/0mhXpRef6ge5DFi0CBXEjVt+SEDCdmbGIvNhHyyMz9WPnYzjpP2MR
	 CfTB4CemIlVO8EE048TeVMhukMUBi0uVJWEoibkf3xeVciJA1ZW3qRxt0/nu3PJVlC
	 TQrXTsURqrffpcdFHr4MGgZLaLLilYxAtKPgyrEQa3kz863Gt+/vDIkN5trVI2zyWN
	 jjFdv6Wdn+cyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA147E88D72
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526533368.13606.2529859749810659439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6948447db5a601049a3cec46520ee55ae8b5145709de084784d6c376a747da9
Date: Sat, 04 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775265333

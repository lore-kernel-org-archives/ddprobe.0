Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BF63BBC2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720851564; cv=none; b=s0a91ICk5gdjrS9bd9c+t4QK0YXjJ0RCBV/5HOfZYEVyl/NlvFHMXIUzdyhTB87rnLM1PvwNqh8z0q1NxH3LGJJbDOpO0n+qwsNUJnKLZpDPWKEzVus6QHYZA2e2Y4KVUdsXP1FKDbJwYAiRFBkRXpW7jofuAwgmdFRKGEnZMF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720851564; c=relaxed/simple;
	bh=2wWSfaFDx9geIQSTtWKzyoL2Qk0BP9P/FDq+DGnuNNk=;
	h=To:Subject:From:Message-Id:Date; b=lYgzoLTXuW52aaLoMLeE0L18WRjLZ/Ops2IlFXmreKVs8o32XJKHsj04erJBt4XtUJDHDjAgag0ZFt2ixDrUPQ6JKCdRE9UIqG4iekqThJYwXAtcap6rKDFNNPUiB5lpn5fhu/UsbhlUhndeg5/QRTnH84G7jGjbtqiZMjwajGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJTtwvNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJTtwvNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C5D3C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720851563;
	bh=2wWSfaFDx9geIQSTtWKzyoL2Qk0BP9P/FDq+DGnuNNk=;
	h=To:Subject:From:Date:From;
	b=qJTtwvNJugMCq6VXllftw9weLPpeQg6iaUwihjSOD+ynI0pvOuU+YQlGhiJbJuLCb
	 vcddTgHVxcUfXxYaQHz7MxUyG8tYjBwrWVW0L0w0ZSDn2AwaF1XbUUvx0iupDM/8ZT
	 3WMWgnWvFMyr4xbzuhqjfugQ5iTaQlPvkDn4Pvu1QGIkjeLeRHudj14nOew38c3WLl
	 cmiqd1ei3rHo8m+WyeyuHd+2Y7kmMVFKbUWV4AjBedc2NGDpjapdPM+cmre0qNuWIb
	 N3FCofK3bis7tK/m6CcPRE8S6XV3n0We8lNc1sMurtH6PvESMPgS+iBNM779IHz4YF
	 HnPF0lKlKhgHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2553AC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:19:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085156301.14938.4362012510601448614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b361776f0084a7e7bdd7d3e7cbfda6f0cf48b0771f2039f32d71a732ed9714e
Date: Sat, 13 Jul 2024 06:19:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720851563

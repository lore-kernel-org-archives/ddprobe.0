Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831C24025D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736832954; cv=none; b=C2NOfjTAgL4XVH2Qfq1cMpDyp5V/qTrhmqS1yCAkKGReXWDCWpJRudoLiJtDnPiKTUt2sAKyoAaV5bSchVdy78guBxBCxivKjJCRJ39j3g3B9MFr6ftdSwDRI4UvJLXRdqEyejjs7YvdWa+V3n2ZfEAjc6RAPKul3fv2cimSADk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736832954; c=relaxed/simple;
	bh=kYDghkwVVW4ElkiCuPOVV4DNwiTu809nIM/mwAtdt6Q=;
	h=To:Subject:From:Message-Id:Date; b=kzVeE9i7c0yWene6O3oF07e+7ttsUCOlHKqqf2r9h7NxRzm3DF1PS1A02PpvOxhzWda1nCh4q+RrAHEpfO3b/4PslE9k7bgvcpRQBr+4F0nDCoD6/t9Muh7ySZbCAmvxR7Elz3n+FIMYopMmXBaonVxnWsNPbLnMXreAhx3WqaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODHrvZk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODHrvZk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD70C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736832953;
	bh=kYDghkwVVW4ElkiCuPOVV4DNwiTu809nIM/mwAtdt6Q=;
	h=To:Subject:From:Date:From;
	b=ODHrvZk/D4qO5zVCvPgfY7Xr/UJy4SnY75X0g7LlEUqSjhkHLeXAHhAHOEjMJP4Yi
	 RDQoMKMapuxXVqLvwBRAsj2arTTVH8NXMEpn9acsrMWGMGJgc5OWSNPkNfZER+L3sL
	 AONFsHK/EgHVjTT+Fuz+Bu/c7TXMwXSRBtV02FdolX+IA/OoUzqmlOYzghXzRvpsYW
	 SqiiPvqv/stH5YJ4KYv6gQ3Yo2nFxH/FwplrdYq1gLn0K7WZrG5ZA88twKcW7miP2l
	 g/aAlEyoAm+GaZ7jlRTTWWQGjYMT6FZ1V2NxfsWVuaRdefbxCVn5//OJubi3zb8apc
	 S2y9ldLNWW0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFD4E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683295363.2746.9800348718192844128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c95c172bbafb6577e4d65c7883e7ae5a62b58a4ee2546943994f1e38377c8a6
Date: Tue, 14 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736832953

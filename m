Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168061FDA94
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752353994; cv=none; b=tT5ugBuCQMce6MfTyx3nLWIN5jT0/1uxyARrv1C0bssFjwU4RMlRLbZ0ADFDTvbPx/gZGD6J4MqmMAC4wNwmgc8xBNLc9VnJBASZWS59Bzd3wfUj7q4MqzP0isi/Y8UrOS0OKYPtgxsCCvwacSd8Rw0HjbIQaCF/1qqm4ZpfOP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752353994; c=relaxed/simple;
	bh=TBg9KLr0g8xYc3iRIzPG4SAHGtBfcXSEni0BFJebicw=;
	h=To:Subject:From:Message-Id:Date; b=ikH8zgKlIxRsC4zvTTKwDTQhcMwzhz4d3NPCdXRLvtRA7eU4p/UDtQOFGri2fzKuyxbjrwS4v4xRZQlhtGwv3c+HsdNQHsZ0qE1uKi+Vj90hOtDvRaoxEcAsH9cWUBnnbApBGZ4RPB/Q/SnI4X1e+QqInUCn2Hhqo2EKn6CAJo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKNFTCGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKNFTCGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1819C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752353993;
	bh=TBg9KLr0g8xYc3iRIzPG4SAHGtBfcXSEni0BFJebicw=;
	h=To:Subject:From:Date:From;
	b=WKNFTCGw/jgbOUJn34ecqwTXHf3czk6vwD1vEUGvPA99ec/54ynebbNYt9ySwk+y+
	 m4+jx3bJnPKB4iwU58Cctzi3VFvM7JPTcYJMyoRAa05g7E8lXmDe9+d853y1q6RnC5
	 tXKdqxqDrSJtO6sxgBVNSE0LgIFnGM4puEtTWmhXu6SxQ+JeynQpiWrgoWHI5Q/Jvu
	 oJqL55ftfkhSlrTGTyrz2/jpvZuEReWQOoEujSDM4kPPAp4XrgI7VXUSRny48W0PaY
	 S+c7uRx9YaZrKaXVEHwyuMAA99IP0DTQk66gN2w8atAbHTxMcb98Fp3zhbxmrd3lqM
	 8Jyi41tKcGtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC6C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235399358.18730.4603949278642532885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ac0362dc02ff3641dd676bad94fe7a52fe6c91a4c9356b900f34d8c0964a8e
Date: Sat, 12 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752353993

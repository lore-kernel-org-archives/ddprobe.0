Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E78F13C695
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752625794; cv=none; b=RyDGRdxv8wWrFx9ewFhtJv9SRQonGZWldxvBePz4s3uodaUJTo5EdT0PynqXPDq/V9y3MNf+Qqh31+11rc0OIEw8OEByIsAoxujB9s6eXE7dDpCNmryEeCLqBkp/K0/YN6HDigLQY3N7fVmoYKY7dIQX3w0HClUEalmHHduc5NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752625794; c=relaxed/simple;
	bh=dPayDiE700zG+/512oqeNwi3gCy7iapmqi6yKiP2+kw=;
	h=To:Subject:From:Message-Id:Date; b=Ri4S5VggjlfKjipH7YTWvIOl69CqdDrf6nhRPMj3y5vCSeZFJiWa70zLseE8X8XQsl7KFOTnj4/w9EoNnLFr/pZMIDvAqzRpErXv399spnqXOqQgFeZ/bzmGyV+x61cWzSZtVMEpQIapL4Svg5ql0UKJlSfxc8+r8f+b5o86xas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAxGDUrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAxGDUrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3423C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752625793;
	bh=dPayDiE700zG+/512oqeNwi3gCy7iapmqi6yKiP2+kw=;
	h=To:Subject:From:Date:From;
	b=nAxGDUrF84hvxBfA4+61pRGQQ9dqyFL2tuOu7P/CYMA0HZ2+aiK9GVCByHkikZzUM
	 MWHT1u4DELQiLK5ShRgde1VLt4wQCagnQP8YcbPEpMJP1C8BjpqLP7TQqIH1EASwqg
	 qndRRtRFh/PXFBMJ9BBq0+TEVZabZQ+ifAdkps3DACruVCm43Ox/UilsOKCBcyJZEW
	 a+3URXt5pOct5UPNg+QsaRXHbArqNA4SlJF/lq238CHTHxLMGman3uPIxmmb7cC8F8
	 nGMwddBzzAVEhPq3saEvw2Z6TYlqvXtQhjR+JOIQq54BpZKbmOnYpxpZXzW55cQm0A
	 AGUouwYLRkeVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90545C83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262579358.23010.12587021103498198976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0d86b678bd00ab1ab5705ffda76d06ca2efb2c4647b8da247092dc20d12ad7
Date: Wed, 16 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752625793

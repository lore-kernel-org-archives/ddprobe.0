Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4949043AB3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715398343; cv=none; b=XrVIbEEnR9h8BuWW9A76sUEMLFNdvaHt1GLLfAPXYRkL6zExuYovg7r+rmW/GRgNTG6hx14UAvmRUBPbl/LFzF5JMKuTw/iKqB6jHcTEXpvdvpxo7z7qCOfF6+Qxv+uiyn3EuPrVCWS6UJXk3ZQdj46lb8PzklA8eoc/MeONVMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715398343; c=relaxed/simple;
	bh=lOOU8nl8zcQdAV4gI+9He41Wy++Eh3f+Bb7hLN9EkMA=;
	h=To:Subject:From:Message-Id:Date; b=Bk6plubw71uYETvt2N64TCXZtQjgBMLCXxH4aA+xODiaLo4T8jpMLFTGNAIv6WpKaBCYR+/KhU9utzrTM42bI5nm27E+XQBAnhya7b7niWocrOJYx2xBqkrfnn6upcD2IxVKmFLG1VzEjlvYy9uwyNeGsiU0XePG6Dd98m9Z1yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ4Fpnop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ4Fpnop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C2C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715398342;
	bh=lOOU8nl8zcQdAV4gI+9He41Wy++Eh3f+Bb7hLN9EkMA=;
	h=To:Subject:From:Date:From;
	b=KQ4Fpnop0BOBLeKzWGg5hcug+QrnBcSZnk4Mj/cqG1g7Pb7b77oqz2Ev40M5eJFET
	 So/NDmRcftjZ7jwISu4r7cMbxeIV+Mhe333XOh2d3TioRTEsexKb8N78TVlWmXqvuq
	 ylLZi+JkUi/Fob97Fs63sAkqQg51DlKuKTCkiKk9St6knhw5uGTbXaQ7wl1sI9DdaT
	 1KxuBM7AYiekr28hgqqRyQ3Cp2NMZQV4pKgQ4YejDqyhLNIujRlmqKJsN/qjkq47N3
	 8woj3go6pn55rw32vc+knHCUhHY4/1d/66SDjHzAL+AZNcPCEpa28FYPpk5yjKvkrF
	 So293EC+X03AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECB6C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539834277.14786.16056380745957277900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c3c23796320ca9702f73535b3d794c10f84ee41b42394a860bb2492933008f
Date: Sat, 11 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715398342

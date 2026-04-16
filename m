Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9B37C924
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776342454; cv=none; b=XTmYD78tHPGxBwxyGaoEd/SrOtR4rMMFDaXD4p3FkJJbniOHZuEh9+9t29kYlXjXu1FtbkM5ZBXNdWc1bzXHmn0UV79HN8MqCseBmGrwnQm9UzFH1P2P7w8BXhVFM2HJbfUlehPdUrxBLOSzmFgr8hXRv0siJa50LpyaRety79Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776342454; c=relaxed/simple;
	bh=dDIoBBsXv1Op8/vohbw9xgLmjp6GZxEvUtUrBm47D3Q=;
	h=To:Subject:From:Message-Id:Date; b=cvEXTKKOgnE3c7VpgD0A1H7IqwmxqHEs+DVuFHeK0x51yfQQObw1Q1rTDZDluwkw+VB7Sv4YIeIxn3mF8igJ4j0UiyPZzxYpZlmxbs3EeDKIRZo8uHlNsDseuJhmji4IWAcGMh5yj9ZFXFuayG7Rc2FO7QWJPHy3t66K5XpuwTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHIDdZHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHIDdZHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECBDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776342453;
	bh=dDIoBBsXv1Op8/vohbw9xgLmjp6GZxEvUtUrBm47D3Q=;
	h=To:Subject:From:Date:From;
	b=aHIDdZHW8XjoUplDRZ2nL/ig/mOfsCV2F0xxnEvahdVparAdqTFttghjaP1WB1h26
	 4Tv25PKjjYScYU8WY6Bp3gV4L8daBpTGSwgNzkTIf9zpKPO/whitUsEf8x2u/H5tMQ
	 tqu5QflRKYt6tvvOVxoTQb/6nqh+dPlVZc7lNsPMDBReFiMV3oHnyyWaDE0j4QnB/L
	 xoDZRFWaJk8VY5ZQKm3u7wDuR13aQo4HEnXETZ/dIfZeA/h60PKRs1B5zv7X3hcMR0
	 rDX6i8jsDQdf4ipfmw1NA9TptH84xy9q2hjudL7i+NkB/tHCtq/R3xQe18gSOT7WKp
	 IKovzGrCLQ93g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB9F8A160
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634245368.21286.686420121720333003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8796222db5e74492b46e1dacb8004135844ccc55f2b0a1bffa4213342ddcb000
Date: Thu, 16 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776342453

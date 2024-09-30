Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD1273FD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727716554; cv=none; b=j+Cy6foEorqsgYwc9QZ4VGT1fSaaS2DZdVhkX/sFWRgzW0H4AX6WR4LsSriKTb+Uhi8A38+QPvIv6iaHqKks+x+a6K4cP5QjD2fmxSlzaA+OOI8l1EVgOH+CnSv2aSDN8WVbNmE5unDoceHJh03YRWplAecnVfJoquLBQYxgW4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727716554; c=relaxed/simple;
	bh=Na5vGJIWXI4T4r1Q0ZWRHYkIVXQW/6UhIFDwHWPU4Tw=;
	h=To:Subject:From:Message-Id:Date; b=TIk0L2Gx3NtwiSy+YQBsDzdlLWfRoxsA+p43KUWZxc+CP7BMYqFVfpQhbFPttZp86ZwDAFALlldUrnedhE/RXFlP7Kzv0lsl4pkSt4IbwK3mdrMwVYGIU3HkDJI5Zl+2uqdo1N1Nvc4CupA8xzAwELi25zqcZAGPjJztoAWSFdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjAWNh4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjAWNh4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6250C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727716553;
	bh=Na5vGJIWXI4T4r1Q0ZWRHYkIVXQW/6UhIFDwHWPU4Tw=;
	h=To:Subject:From:Date:From;
	b=GjAWNh4ua+tIyQIPC0OUiutrbwA2abGNsau+zbeQkmsU7+JV9aDgNQQVUQKwokKtK
	 o3D3q8ZEg4B9cQwXpISe66Auppg6/+AS3p2ncc2tCf8hZal87CfO1LCowJ776KSEWE
	 DKNB9aDP23itvpyNX/9vf2xjDVux3bnALqh+4cTnSjJQr56+GA0xgryPtmLCXl/vDn
	 3aQ2TBOMX04AplUdwN53ePOqsdd6aQxBS+4gHyI9Lq0oKyFzDBFrJRVloXmaB1dNPl
	 gwiRnnyGj3WtKNC0KD5Qw8kmXWKPYq1qFBIX7zpwywiEQTwqwQoh8+9wAG+DefEOsg
	 62BEvjCEwJJhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ECBCE8375
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771655364.10197.17966308593987657800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1257fda3511c5d4a60c8883f1313659c0a3a286b1fa1f15418bb2b20b4d167b1
Date: Mon, 30 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727716553

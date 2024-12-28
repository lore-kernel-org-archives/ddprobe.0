Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F43C155756
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735422954; cv=none; b=CU7pRnjKOe9oTSAJFNNLIsTMEhc1tcaFU7sDj9ABs4f02Taba3fxbnymiWE+ORq0rW7tDOWdlvDkXYzwb36ytiexJdtSQXhUHs9LiotuPOu1FzUhTgmIu/aY0Ilx+Rv/yxFpPjnsMejUW69s6sT2h0rAfMUkUv5mVYBoJZcwssM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735422954; c=relaxed/simple;
	bh=IGgLVCMeUrEl5B0Sf9MGdXFAU53iQoROCuck4th0R4I=;
	h=To:Subject:From:Message-Id:Date; b=LlVcRvS5u2CKbK1JwHKKiFPJt3Pl0y6EvSw1sUDYqHqlWI4aau6ajCl4Rba4MfBMvKQjs7MFCWKzjeDCx81Z6vjnRdezI7tQ+as/zy+ZdCsy0RtrjNfBU3wUoTFe6dz5UF+peD1ZrplUGZuQC5qS4HxvsTnntmyC1PDwGsb4ayY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9m3Nuwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9m3Nuwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E05C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735422953;
	bh=IGgLVCMeUrEl5B0Sf9MGdXFAU53iQoROCuck4th0R4I=;
	h=To:Subject:From:Date:From;
	b=N9m3Nuwa4OD70qwMPT0IaY1HWIaxdzi2cpvVg0yorJpmPB9TfONSr3uvWNnzPmhAb
	 5VKU6sH5gWhQXvasD80GsqJq0qqpnL1SQz6OS/K9aSZ/nH5x3tToKnP13Ti1O4zruZ
	 BJuQZmekUqHvcMHGvybe2/WKRvLrGNZZ8XV2Os9QknY3Jw2zlYFQ3h4ScsJKrO1vBV
	 dPiZlgPOnkA7GDVNrIZt+Y0J96na+xyJv4EzBiPkS+icPPzB1PjcPhmDY5fBwKSzzM
	 adTee9MTYVqa6sREDLtI41/VNT2xFKGrzTBFMpFSHVl3kKy7gF299GK/Isy/32PJLC
	 lI73ipuJu+2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C143E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542295360.18099.3070094929771051681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be766c7bc6073673c918428fb57b27d31072e338b4f4b227c6f5662ca6d41b22
Date: Sat, 28 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735422953

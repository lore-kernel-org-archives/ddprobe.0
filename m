Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDA81E834F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757747395; cv=none; b=CG3icioQjGbzvUND2U3Xzq8hk38O9SP3hW38g9/huYCQ2g4DeU9+h2y6zRzeeumNhUTrS2HTE/IvfKEEIGYbfxgZiIcPFBVj4lGpm0bQdLI/4eU3tqNZnyzIlou0x0vnQbYoXR6KkelKfKU+JJ7621CYvxrytDKHFrLcu4n4FWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757747395; c=relaxed/simple;
	bh=kYIg7rDUmimSv0DNDuxAXdR/UgEvgd7rrvS1rBNZCxI=;
	h=To:Subject:From:Message-Id:Date; b=N/GhiH+XDp/mi7lj07ijXFojaanvRbl7R1r6cCeD5pf1Oo2149ueCaNxTJo960W/e4hWheX/qShRwAk4zvSljL3lOMVC2oK7nR7vgZdeQQ07NMBYkGT+vbIUEjt28Ly+5qMoi+UvllFmc31Mn29QlOGjgqFVV8KF2PSPrzVPDh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0VIjKcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0VIjKcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A45C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757747393;
	bh=kYIg7rDUmimSv0DNDuxAXdR/UgEvgd7rrvS1rBNZCxI=;
	h=To:Subject:From:Date:From;
	b=D0VIjKcl7NKBTi4jKuTOGXAAH7aUDWtMlpVSEQZeCzWT5AI9239rNK3QW32kMM45c
	 htz76K8v5u8iqRjGZLP5ids/ftaLN/4zogyEUrBxJy+LVyvKh/jFcYH5M7wh7BM2PX
	 ie7vI/ORTZEjI5ZGRxI5hh3jkqjnOqBx3L0gaO/s4ZSjZ3KO1qiEt7G+cKg7AGS23b
	 IdmhJ88BjTE2i71W3UyFCxoEHkPeduGGH90L7AQk0Ovt4Z+ZQq2/9GSARWtrb499Wf
	 RrHwKRFWdvZA1M7q5sfGeqOztev2wLzR7tp4lEBrkpdodxq3xDeP0IaJR1t2cas4jH
	 iaiwq2cMCZvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C8CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774739357.13444.6807540128729895982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2053498536fcf38f196e9e08775ae1487e2a7728350cb5d852ce086eafb47b75
Date: Sat, 13 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757747393

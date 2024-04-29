Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F5C1E529
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714416743; cv=none; b=MKYT4nPGWOak61O+c2n6lB75vApViN09fz90mhES9keyl1b7GVf86z6DZlSEFvKlarQWHaQX5LIJIFvPrMp8uGnU1yfJmjwDEfRT6yjyiNaAolG5q/aLN1dxUCVDWc1oOVQ61wuW42YLtAYTfwaeIdR6bCmQm5PgMHTdM0APNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714416743; c=relaxed/simple;
	bh=hzkDxF1jop3wLbPZC6lZTJi2aJEKHQXzGbEZ4anSBT8=;
	h=To:Subject:From:Message-Id:Date; b=INPcDv+kPgSYgwAZmX6nG0JjBI4sQChnPPeI1ET2V9WTn7OQlOtp9566PiADkcq2VKE2+cHmkAe81IVrGAyFcIRjBwPPypPvN/PUf+CwbaNpJzjU7ByA0A/3X6LAuP8h5kSUmmqjsPkRN/5KjaAekgwv2rscPVf8eGsGXjrrI5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNVpESFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNVpESFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE351C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714416742;
	bh=hzkDxF1jop3wLbPZC6lZTJi2aJEKHQXzGbEZ4anSBT8=;
	h=To:Subject:From:Date:From;
	b=oNVpESFxkfQPXpYSzOWnpRlhvN/1ELjSp5uoIwVMS42K7t6yv1VtALOqvzCzd9HJw
	 S2uR6Y2YQKW6cqGLOYf6ttg1fsgCbtXc1vwCBodOfjWoZiYGwR6P199E2ZkNTLsCkf
	 ScfC7CVcvSY+KSzKWSfWIrG366swKi0zVCHWMRMAA4auWVn6Lchh+PdxmxDcf4hDFB
	 2di1gRSgfvKUM5cbdFWLV9xwXB21v6NNDfGrLpaO+uSBfJ/D3ZrEvniIGCi0p+Apej
	 0Z1Kc/AVudYAP9pzxBeUwH1qoJRHNbHeK5/Bmp2fcOGH1Ow/nOV8LPHRPlZViwZ4zC
	 +g2KFBzUDKUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C734BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441674280.31933.15582578827719529462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c71dbfb850f9906d3ff36a42c331b333b03c8ebc6c58fbde6da201bb034e7ee
Date: Mon, 29 Apr 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714416742

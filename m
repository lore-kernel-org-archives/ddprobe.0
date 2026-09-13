Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD291375ADC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789286435; cv=none; b=tzPNyPEGmILX4hDk6FpYQKR/PB/HxPBLud47M+zvVQsm/rVXCA8+hdrNJP+1ahJ28y2iUTc1HbgTBV9vOpjx8chQLmYZIH+KO/XzouucE+PbJ89rj8f+juy7gHURKaYRD36XGWbcY8shrFRzQCEpmtU5fncnWCvDqdfnVgiq3Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789286435; c=relaxed/simple;
	bh=qG5rWSfzz5wJ2RgK5TzP70g7IIUhUbGktksWyNVLo/g=;
	h=To:Subject:From:Message-Id:Date; b=aXE5Gpu2sO5wXUE9xGVb7gRIyWw9McJQU7HVE6AKKl2NNOb68FQYaUEhJi7Vp/trMp9Eu0ZN9q2TGY4QNt0N0LRehvSbNfhu4/lZhQPiwfRksfDRg/V17rV5ADxlqgv94Tn0pnMycp3yCqBA3Lt56cFhZXj9R+me9tSnB5pZ5Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE6Ou3dY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE6Ou3dY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D389FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789286433;
	bh=qG5rWSfzz5wJ2RgK5TzP70g7IIUhUbGktksWyNVLo/g=;
	h=To:Subject:From:Date:From;
	b=DE6Ou3dYsoCbCqrp9LMFWHd8oAvuxBki0xgrajrqy7dYV0LiaKMcfeAxemG53uve8
	 q0zsR6QHdmmzvnV4WgCgWSRnECOjKomvVIgvvBrMlueL6gEXPQWvAy7NJjrRuQ1E1R
	 9eJ7Yq37dPTudDSVwNhUV913uyjTqoTDf2uHiW5vmJ+jBgpDcnbpD3ctMC5rm2NJKL
	 1ddB3vHM1ciBv/LEDNlbEEXqXXZwaKkyCj4GmKJQVDh6ORXPPgMj4qbU10fxOJ8tuq
	 SNi8HU+X5cCQtP/TOX0KKiF9MlpdSgoTYDpXUCl/kLyI61vjAIbhufoocchkaSbyux
	 7Lc4ZZ2OOF8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE7C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928643368.21670.4054623563925091234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e86e2a449b08a43c40951657e9e7fe0316cd74f98c80dc1e382665d5ca0ddf5
Date: Sun, 13 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789286433

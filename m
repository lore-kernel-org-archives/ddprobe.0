Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2867123957D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757892594; cv=none; b=p0UiX8olYCHkD6iJm3es8jf3kNyxd4pu3ly3u0e8PDT8W6wh1iN7gV0NzIRtz4f4urTJkw6kI6feQoe2NF8G1akjAmEQcCmDvRkcRZhvFjxj3r+6BHyolOAOziiV95KFw52Lit1V2gq8aLH2Y/oDFWaPchBeeHeBOirEBn3ld6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757892594; c=relaxed/simple;
	bh=Iwpl9c6tktjQ7boTPzqvs44L93Kx86pXsYGsgFGZOiU=;
	h=To:Subject:From:Message-Id:Date; b=kbol7XEqp8DLJ4jyO2P4opTjlCpKMes9tpWYWEdDG3G9gm/+LZ9RvWANwPjTT/PJdMFcLCJ5eGHB6P8b7Q3Yx0KD/BxrAywqltyoQTVULoiQrib9mL6vOzuoeR/Ev6UhegK+UDAfYYvijJQesXiPEPR13NEAE0y6vdI1xJ0UjGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwz7CrRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwz7CrRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757892593;
	bh=Iwpl9c6tktjQ7boTPzqvs44L93Kx86pXsYGsgFGZOiU=;
	h=To:Subject:From:Date:From;
	b=fwz7CrRR31jkcKceeyL/IoQj0NNsvTKKgqDE1QGcwEAGbaxDfN3WsGND+Fe51yqQu
	 et4S34ktGBZ7h09vNHKdy+HzEvcB1coirRkbmklGIPcwWiN99TMGbGyn3QT2vuFYW8
	 j7jBo3l1o45605ShlM/78Hr4dKfVNuoMsridGJPIxCVfBR45HF9ZGZ79f1vNcq6uqW
	 KaPwiHuqaQ0iPoF7MRHzs0vcZreIsuq1kfvWSSHe2K5keVbacCeCf/nIbnYGytQ2rF
	 5NHhqEXj9SuHTgi0ZuVBPlE8pQ1J7yEVH7Y9JSryydE3uj+2L1Su/wEArOJyba1vVX
	 HQaKjBe2dxHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91466CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789259357.27954.5610621822774848436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09738d497f84c821fdf10c3f4aa4ca1d97d3b372a4fd94ac7be439ba317414fa
Date: Sun, 14 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757892593

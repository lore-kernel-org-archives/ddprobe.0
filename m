Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4CA3438BC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789938634; cv=none; b=KCn4zGq4Eb77RBGaRiez6haQpm8z8Khc9AC35LdqYPBoRxh6OqJqMOCEWeY7I1JC1/nrj94onP6+EJhFbkZTKqlFzvU200BrD3UkUlXa/g9dh7pbBxV1JhidNrpNjN5Cm3WL2eNE2U0fkLWbo9epehVT97oly84Y1L1BLBtc8kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789938634; c=relaxed/simple;
	bh=b7rqHkOqlllpFPgzO8sHjQp16/v4noz3gcFyTEZFniA=;
	h=To:Subject:From:Message-Id:Date; b=o/cwB6L/iwL9b1K9Hd93O+kn6PYzvNnHYSHQvpiL2vg4PUDes3yqRL2/fp50P/wPiU7UTIfr+Ir9uX4+ahdq+PqdD1KZLgJVnKKdJyGlEWsZZ4wWb2r5yp2JFcG8LnwJpB7y3gRdKpiWaGsAfQsWR32pfkbw6FLV66hBhv59AkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSYwGfA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSYwGfA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD6AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789938633;
	bh=b7rqHkOqlllpFPgzO8sHjQp16/v4noz3gcFyTEZFniA=;
	h=To:Subject:From:Date:From;
	b=WSYwGfA3kPH/GFyL0wrJKvl1w0fQ6BKIaGHXIqWMmIKd1kImWGQDMR0GwZLCyaN1Y
	 k3ErENfDboHybtInyM9p3lNcNuH4TPQd2lBYVmgJICid1KeQRF6GTG38ks2fyxr126
	 QtWrJq9702cNOLJSN7rJYhivAQTQXe/nyl5DvzlPsv3xD27SxjNunVbw0+EC2Cm58V
	 nfJ9uxVrH1tsTXLmCfnJxFWNr21JWi4pscHUn3JKv5oB1fvlYjsfFPg22qRR6IapTl
	 NJwAggizQCq9OPT4ZJNhSZITrld79RjD8WoLW1E8QVRNvxHtOp5rB7ogXSJwJGSSx4
	 paDmQkIihoMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3DBC982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993863368.24624.12405260103427456738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad1a82a4d5a4f163a96b792baf22ea557d099b87484d607b347bc59c43c6801
Date: Sun, 20 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789938633

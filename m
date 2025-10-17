Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FDA3396F1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760710794; cv=none; b=oiR7MqVfvFTRFtPmiQ5XZKtBYavmLnaTWo+SWj0FFRuGlk3ECPvxRvTFgw1dSAFZHxV5pVvGw5g031Kwm//uDrLBFsNknIYYHeaDN2gj3fqgQIHudl+/ZI5euA1ZsxYyDxDmaALx1iqH0kCxE2ObqgafJAWs/ruBM40LMFZoLvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760710794; c=relaxed/simple;
	bh=A2xNhGAx/s+FQ0OevUtAbgXBY55W+unklOSjOMPgK7s=;
	h=To:Subject:From:Message-Id:Date; b=c5XBuBN9k3yHFV2nCaUzQhU63NExg0HAh6OBGXe3f9y5FuxOpuNKY8n5VomplefmE2djhPWNxvTnGPSKd7JoJSwQ3AURgNk7ZH17pDlcc75iHEbndvGTeGofy8cs6RJLDYOEAjPAdWA33l1Y+/CuSp3RcDhHehtQ0tmgpPVsbkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSrmMAra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSrmMAra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1158C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760710793;
	bh=A2xNhGAx/s+FQ0OevUtAbgXBY55W+unklOSjOMPgK7s=;
	h=To:Subject:From:Date:From;
	b=NSrmMAra1K4ljRFaObaNPWAPcv+32ZGhszBD9DXs/uq/ebIUxBJ/ztJVYM3Uk6YIl
	 ynKb9GLeXZ6jg50jfAk+S3ZdE1K+hRo/wD6AbPe1qjN7J7akfuEjJIukb4izh1g+TX
	 s5yfipa1dcxAxA79KRdwlobEogI7SSzEYkGwODnCaBlytZIBT11FiOuzA4lSRvhxuj
	 mxWUjcWp+h9eILZkMHceu8qYkVXBRk71ntd+m2ymCait177xCZSTHT6Da4IYx7HFFP
	 Vhpi23GEwCyOGKILK0j41iQ0hJOFMNjsJ2aFDHP3RDobNWb6CH7ljRJx9qMCSEe2DM
	 Iv5y3WD9YNpSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4BCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071079358.664.11776666115461618105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d156e78a03a45e79f5c2621408f93d9afe13899dd33fa42899028ade83132b5a
Date: Fri, 17 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760710793

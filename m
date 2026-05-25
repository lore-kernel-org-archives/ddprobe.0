Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356B92857EA
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779750154; cv=none; b=UD4zwvyn2OwyZuSX2vD8PP85sL0QsRY0l9XZFLgrtL9LPMFvGxJhnIUrhaw9IFutyxNxHchIZ+fvLn20Y6BuO4Bl1PoT87d6unsNrUivl2q5Eq4dmNOGWHHF+PQkLfBM2DarF3F6p+SgzXxDwkiL5K71AhG4e94DvsABUe0o0Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779750154; c=relaxed/simple;
	bh=CryNFE6Na69yrng1OTLr12YerDHliY8Rx92J5WHc/o4=;
	h=To:Subject:From:Message-Id:Date; b=jkcTh06csnwex7X6qVQ5kIx4tsRn8PTin5TeONRi16AdssPvX/c6EKk5vlz1Vju+VdsrfCf+CQ8/Y0XfTtPQy1sZkaV1YcRxfeK9FGuGARSgEKP5wv+4FgJzK4oqfRng7VDQA1hRnQix/JTF8FVbind+qa1GlUuuz0ZMIDpydJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oy4//gQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oy4//gQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C268CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779750153;
	bh=CryNFE6Na69yrng1OTLr12YerDHliY8Rx92J5WHc/o4=;
	h=To:Subject:From:Date:From;
	b=Oy4//gQSTVZDM+w2SW3u550zw/4hDu55S/g//SxAkJVDztCowMV7bU1RDXCAxE6RB
	 Abo0ocV8Xk/67g6aIyHON29/nqovLDCUWvd4xP1EAqSuhhb1RSptjAHbAurC31k2fo
	 +aBBAjm0ASSsWzDmvRGZKE/xuyZ4ovy7IxqUZtZZZPazaytIJno0upl5uGB5rs+JT8
	 GZm1oNlKzOaWhPZsew7/bP+sPJHExo5aIKQSq3oYcQb3LaPVQ2pjpTo3bOwD/jOt6N
	 SfsUT0d50nKL7r970kdTn2hprw8tqUgzo7hY0vMil7e7f+j1XxRShJDnaOLYUkt1Ek
	 Bd+NzIE6gh5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B7CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975015368.2015.254609333514498065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd1ea395fcccfa4e144c4ad95bd2a3f83ee56e58f993761e5acc7d0c83e0268
Date: Mon, 25 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779750153

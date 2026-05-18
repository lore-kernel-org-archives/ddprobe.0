Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7881B3D5234
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779101434; cv=none; b=BgZgPtEn0alD2vxPAnBKfFRtCqv+fPj4fuwov38CuPgilSsxaUHzES9gdCMqROCHR3ofShbETgVDA8iF3Vnc96TOPR5YLmxcw6+imXY1vewkwDI+k5L1Tl8dnU44dDMdxvZJHirlvWFsVnekCyla9eqNso6Sy2YSlKkrP1dSyWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779101434; c=relaxed/simple;
	bh=ILn8GvLkSztDHnxLs3G9IklC9eljDeVP1OOMuFTCQ/Y=;
	h=To:Subject:From:Message-Id:Date; b=WWrh+m5FAf3JEq2rXGi3dSGohFIM6yUeeSvIfb2PxyjZExilxzX7m1ztuZ+a3sh3/ZV5l6iYpviUzyAFFTGaWmctMDD2tOFsuZTc5N9G66NFxvOlcoOn7NuMxxpNgTQ0r8NVbPirZUdbgYaj9noa7rftEpHci1kHdyzhAhy0EtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbSejl01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbSejl01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D3AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779101433;
	bh=ILn8GvLkSztDHnxLs3G9IklC9eljDeVP1OOMuFTCQ/Y=;
	h=To:Subject:From:Date:From;
	b=LbSejl01Tz50s3wwjTHCaFwH+fPTkUrYyFCN0bZD6AGuHgLzY5Ke01P0/lUnl4BzH
	 Bo7mZdmh5UFgtwrsA/2QZT8lD4M9CR1tGJmuQtD/u40ma4uOVkpSQvdDL6qgEkJvYr
	 TytOJNlF3W/bfadkyzXsGQQaL/jhJfGDENeocwZi60os6gTDDjdC2OJX6/K9YjNnmS
	 XXi1/nCWJZtSJkt69SAVO40OFtgO/SR3uHynVFqRdt6aIvrevAGT8iP4f+SV7FpwqQ
	 435uT9QNi3tVAp1cvIyjfagmIS5NAXtW9ZvzR9RHm93gfNY1J6X+WKi3pjwUCamfvl
	 slg8VXOykklxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81ECCD4F54
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910143374.20193.17014073938340456383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f51c3a3d0e81221cd5fcb1fd693e864fa2fd6635278850b0dc0dead8bfb002
Date: Mon, 18 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779101433

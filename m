Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6241230E0CC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789279834; cv=none; b=Sto7AxPf6CLDMR5hVGh6mVYqUEoqg3UDDWQISYvumA2WlMPh8HTMzCA/nuAGQhdTNwt+5OITjIbeP0EClGHgKG0HxPFvXJG0aSwTOBo8tcI4fIJnpV1NFqMyaFx2ET3qIAEQTNZfgeTMPAHC7CxLwuejwpqhRLXdrUWl+o2ya48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789279834; c=relaxed/simple;
	bh=wGWnaopqYn4sB9QbpMYLjPLcHAH6zhHW1YxjrADIs5c=;
	h=To:Subject:From:Message-Id:Date; b=kHo3jgdTNoKWJ0LlPmzFUerKsASp3KQxtCEdm+K99fBl/Uv2rDbfLDxD7299IdXoBJOeKSTu1Jto4D38xeMzDQ0vnqnJ3LSU+DWet77Vye9fp/ZJcIu6RnuojmDgHXioww2ootpWK8WO+Rhop3eJwnEN4QRcDMZds/2294Y4CQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCOC36fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCOC36fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE97C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789279833;
	bh=wGWnaopqYn4sB9QbpMYLjPLcHAH6zhHW1YxjrADIs5c=;
	h=To:Subject:From:Date:From;
	b=GCOC36fWo+BRQiLhViNVNovYCG9J0C6pjfmE2D30/jVNLgjvkAGIcq0dkdru3IvYI
	 c9vksWo2bGwIP+aEXDr4c8rqLc2Sgt3Qv8g1cQwlZBHYq9G3COTFW7aWuEgkvvfJzN
	 UiALVtd7yZX1/h/JHcTdejJudPyMEeCGsDXa/ElKJnQPfvD2zctOHrflJWheP/lpaX
	 AT8KBYTQwVPRIfgjHPEyCXwR4SG20AnFDSBJkQiY1KD+M8RcdvDz2lrBlrgDt+rQR2
	 VMmBEMQyYxf9oOS2O9Wb9Yyz3UjSP1ztxtDfU4X0NgqF7FjhOuO8SX3UP+hjIyueAc
	 1uZaKRT8NGz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A1C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927983368.10339.18038422220308013629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d94333abe6239dc96c18f0f7d6ca87488db86fbdd601c895175eb626754e4fe
Date: Sun, 13 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789279833

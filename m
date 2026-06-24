Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5056D40D570
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782259594; cv=none; b=BYtXPC4VjCrvbRsxB4Cw1KaoL6OYgCVsBKXBHgqAVOJhc+IQ1yMKPBLd8Ozp8MseY4WsvjXSPlUCauAG9GvvNtxrh64ZSkY0Pq3E13IEBVbQwHJ/VEKkbNzMAPcgNE01Hyh8+BqMcl5tpAjEwr/E7yjZDBb5+agJaUsM/Ow+Gck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782259594; c=relaxed/simple;
	bh=UcjrUsLoDf8Oru5sQv7YO6fgcOheWn2onfxKr1yni8A=;
	h=To:Subject:From:Message-Id:Date; b=TOOEaAUDXOxiWNzUG9ypiee/uvaq4MdqDIXjZEvkfo/BGS4ukl+YTuYCnU2TRirbKHCcSF6iKrV3ZnMyNyJ+BYSRg7KkF31l+tLD2FiWKqFcMw5yRJh/Sw1F2afSvB5HhTEtYZaFjRFp2zPUw/pHr8QR/1EBwiCXATN0sqFGl6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrjBGDJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrjBGDJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB41C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782259593;
	bh=UcjrUsLoDf8Oru5sQv7YO6fgcOheWn2onfxKr1yni8A=;
	h=To:Subject:From:Date:From;
	b=FrjBGDJjE2Jvt7I1rgSp+/PvyuMW4csmaihthXJqYB28yELxn852hOBPpt4ejIDzM
	 Gele6mwZnZKXjCPxOXSTA2/49+y1Jq+B8CENB99skgSEqbvREn7FxTSP1Wmnl59oRb
	 8Gkbua2P+7WSsM22Q4C8aHk5tWiFtd3AdNY9Bfzkp/BfH9MS/nPgwxMJBpOrD+sjmO
	 zlGl4euPfbJq7BYm6SHwwxycqL5QcnjYvn4ZZW1XbwitUcfbERu6e9JiOhksoCO4ZP
	 eFKTthh3TAEQMX2zdJkDSFDLoXrk9W5n8clOeP1BOugCyqzWXscasZvguP4tFwa0Ht
	 P0pGoBeG+9JjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22B2CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225959372.13923.17026180446280676854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1f882004a261d170e48b6ea58c00fd977246d380b5606edd3dd09b8179f4a8
Date: Wed, 24 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782259593

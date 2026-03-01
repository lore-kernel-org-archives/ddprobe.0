Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89730B50A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772385294; cv=none; b=beoihMivtxssoWtbGmoZ0CnWycuTNWdyr2D9KFhPx0DiKj2RiG8MayiaGHwuhtGNR5IShT6usyU2Syk18AVr/zys3mSdoPvdOTDuNlGIkEaMqupLn24i9qgfI8zTUPwky+iVsUIvvzfxcBEH4QgD3eocBkaurAd4DAEa79Gnhhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772385294; c=relaxed/simple;
	bh=v9Z7Hi8JOmQhlOTSuTQVTAQvuSB/7+9F3rhaqdkYzEU=;
	h=To:Subject:From:Message-Id:Date; b=V9ez/Bw+nSEgjlQuKXd/Z1SG/t7ZtwoKnM4Q0WqViiSKwQDFfWLieikD2NkIUfSFTXFF72D3/gvQCk7mmoMk8uSgrn6B2mEGcHKva5UrJFQUBicUhPsgPlm4kLuOpUp1obuPU5d+H2l9XE5j1FUGvSBDvqL+ioABZ6PEteREquk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgmv89OK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgmv89OK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD387C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772385293;
	bh=v9Z7Hi8JOmQhlOTSuTQVTAQvuSB/7+9F3rhaqdkYzEU=;
	h=To:Subject:From:Date:From;
	b=Qgmv89OKsxX/w3TPt1+AAPeXkwMbes4xGZlloMapK5r2ujRvEN49XgBGO52+BRGPW
	 mKfdSxYy39UZ9ygh5gN/M/n5ZQ898wPH6HY1XNN0jvUBL6dVpdVaJD6pkJhKO47bQZ
	 RYhwZldKJm+w5xA9L8MsTPAU9Z2QZ+tzsM51fll/QFtOuZyeJxE5W3Eh73E53O8Pia
	 ceLXnc4LK4ioddwdhLeqDJqYG/P95frEemzscGkxFnDgeUmDmKwOX9GP/kuG0WMrrZ
	 vVy2xjiKEOFCUJIloixUlj0HqW885G0bNAdbycLcPBp5tCe/owSKh60kHfrz/9DrMN
	 MjgxDC5r70Csw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC1FD006E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238529360.1198.11878944751647060464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65159a431c37fd31b212f43abda3d5ae16789de29bcaa0ad9d4e8a5eb4f8de53
Date: Sun, 01 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772385293

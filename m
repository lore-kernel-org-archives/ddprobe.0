Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE25566A
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754824794; cv=none; b=SZ9rRj+t+SKfWSh8QFRxF+1MuYNn5VTEdmaJ4OmnifO1KisvI+UVpG5zlgNwt0/09rMqPAxDt/V1cfwGoStBqeNzyK9ZGfRbjfDqVzRyjklokvAQccVD/rf2+uf6e9pGE91A+5qc4jUVWktWB6kXo7zzUb0mFws9QaIF24C5orc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754824794; c=relaxed/simple;
	bh=kIyEtLcMEsngqQbyUQuD4P/EXxJz/iVp8w88J42iYx8=;
	h=To:Subject:From:Message-Id:Date; b=Zhe9isG7LASluunt5rrujbgv4Vn6zXowE80X/+CWauNZ1G/1vxAeNYuocmTRtB8eMxb+N/V3h+rEhBChfdtDzMkwo44eN3OLj1kUbmW7kTZLkthv0ZlHpwZQYtirmgDp+xUFvGuew+GAGDSjJOeNcM+1RE1gxsXY8VzuwQzaVaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJO51jGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJO51jGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754824793;
	bh=kIyEtLcMEsngqQbyUQuD4P/EXxJz/iVp8w88J42iYx8=;
	h=To:Subject:From:Date:From;
	b=nJO51jGqyAwjhMvnBIl9KbuSeZrDwuNYEhon0C6VOJV/vFyhmQVZrdAVHRAAItY5q
	 EIOr7XwTZXBqgnYCfPTiVApY50yIYKLpsYWt0Wv62PeU2iLstFwIHasm2apjefm7uQ
	 hZ9WONCDP2FEcwFoHrk+hYYVCA81PJFMCLfxXxlIoLL4iS65HeRxyFrOC01cCX8DjS
	 iXDNZUzn1Sz8N7HCmp7Kj+4wf/w495/WsEm/nMwox0vBNN2JVnOCvA75Zh5TyHQqQX
	 +mSJpsQomfti3GVDDFe72LS1s6N7Dk6NLloauabFwp87T848GeWrqPBSko9J9V0lea
	 z0OYomnRD/Pcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BAC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482479357.25234.3540069443455166835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a7b61539e70ac78f5629b4be3649457b21cd7da8be7e86f48302b91afd1488
Date: Sun, 10 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754824793

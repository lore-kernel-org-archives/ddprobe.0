Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9DC3B530A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775751454; cv=none; b=jQwi4rBKAmbcvQFZ6g08HGvD4Wpqg/TYeW2X34DC3Ajd5PEjdpYcLQ6ucnSxxoXBVCJD9UA5qAR3IQuYyfHVfvloP2GM3eaXdcorRG3J8OqyncCJ8Zws3YvqsgyUWuX/DlMS8nSYmZZKVctKYdU12I/+dX+chiu9ZZzNK2hUXUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775751454; c=relaxed/simple;
	bh=lcECFR5I9kU4t63XGq8ZF+IskIRWuSPAtkvVE2a7GwA=;
	h=To:Subject:From:Message-Id:Date; b=oktotuFgWDs9swQoSuUUNiRQX/I0AIOO+V8Bi5XirI2DZ8XgkxNG+MJTG0QWTYGjTArAu1lafkpetJji7L7571gZjWM2zIzQ2gGW4Xhb/X8eUbDesh+P9qS5QI0x17ioPIs8YBLU69VD6f/USz5Dj7iJnLSwEnNM2CmJZhJsBbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQsmXpiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQsmXpiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA773C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775751453;
	bh=lcECFR5I9kU4t63XGq8ZF+IskIRWuSPAtkvVE2a7GwA=;
	h=To:Subject:From:Date:From;
	b=aQsmXpiD08LQdkiqiIjDd94tf1PYaSE8f6REitSYgqu1PmLJTZW0hlGV7dw7LJADM
	 /Xm0G2BKjwDnkhGH/YVoYQ8Bfk3hl2KXkAcWubmfxbF+XIy3BDEi2/l9kuDzd7HdWy
	 dUrH9x47QUn3YMP1BdSVrHpS4MDBaiwdg7oABoxp34ITN+s7zKXBoEMZDTAvJZITae
	 Wbn4rHUipcX9Z+W85y4EajbobNSTLmtG87xUrjHLWNySs6iimx2Vi5nOQnpW8VxxOX
	 SPXJ9/1taPRYS+VhpVuX/rMqNQchsXSU1YE6XM9d5bbjD6aci/Lkl65XAykTrk9h7x
	 retI3DNN0LCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB651F31E57
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575145369.28072.9534747566952386692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d42439b4cebdf5e10336853e916c37052b2bfc4bc2c8a60c838af858af69c6
Date: Thu, 09 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775751453

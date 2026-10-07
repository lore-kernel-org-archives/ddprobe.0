Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521F3446BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791412234; cv=none; b=sMMcSCo2WCEyG8t1Eleu8JvJRZLvUOUwo69LQNJU27ct2jcxMQ0mFC+F1qo/srNTlTdMcw5HHydLJ2mdb3RI7Vf78FGyDNNUEwJZW27W6e2ozwGIqcowO6cBOWqn0Y7XmlX0JEh3yYXm1fePHvYck3/1eBP8DcXucnKfOUA12lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791412234; c=relaxed/simple;
	bh=BgOecZPjRaPlfREtl02Utj8HT2tUYZiIZFNuZTMLc68=;
	h=To:Subject:From:Message-Id:Date; b=gG/EhMGecPWF52LrV+nSjS8ZA7wVoFRzu5P4MPS79xgYtSb+2uM6wS2dvg21nO4bSUe502PckPUZbsSI3pryoVSfEjyF+dQbQQpbJ/JlbsYA6Gk0rwwFAAAKq6Pv5XmgQ8P6nRsG/Qb4LuURG6mNIOpm/9SflzRd6bvz60a/e8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZV41jz8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZV41jz8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB45C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791412233;
	bh=BgOecZPjRaPlfREtl02Utj8HT2tUYZiIZFNuZTMLc68=;
	h=To:Subject:From:Date:From;
	b=ZV41jz8um6zYw7nvi9IrMSzcJ9btultFMjSijH/OwtjzYhYU1p10MLUhJd/wsK9IZ
	 bRPP/HBK8DJKIfZ/C6XIhbY/xozM6JUEoIIpubKZG8huh0XyikofMoqf3DrdJicYGK
	 oljvIMrEzFk4RiBcxauGRWIa5mu39EuS107wduvWaHqzA8OQUdBRc3vXAUSgjPBB0t
	 X10gHpflhxdjaOE1SxIunEV6Uu/TBXGFuoIFO3qmjvoraH0B6L8cYEQxTUSAEd0L02
	 z4/8KMpxp4Uq57JIpe7MbuRPMVbwNTCrfRy7wpACwAp+arfTMyK8LV3qNzJjY6TCS2
	 eDffS3BMviJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA48CCA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141223368.21590.6501213740374385960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d51c5178d9e3680de7b13375f650576ff9b7fb4b119297182b219cf0ec33403
Date: Wed, 07 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791412233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1257732038D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762441194; cv=none; b=CU2l/ewWvT2cBZh4WK15xlrK4z8L5qhQTnxCWsHipyERFhIuTUcEr26l8z/+xAyImuK30Yk1KszGaV30W+6+i9HA6KavKA3riFND0QsgSA/kpqiwHqcM+uq1NULc5MmJIQUGE+UB+iP7fx0tC8MIlQXQBeo1kHhMjA+hvljhCoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762441194; c=relaxed/simple;
	bh=S1rTVGNO3vstY9zevv+GlFDmMlLQHUT9dItTJb1lrtk=;
	h=To:Subject:From:Message-Id:Date; b=A6ZT+Ml+BwcUf/8nKFgUwdJ8Y09w0guetVXwyj37CXJwEMOavzwE2KM+pKGflimAylT0cO4GTa0t7byrGz5b5a2ZQsPjTt/e6w3VFmtlVUMWkQc7gJ8Zz/z2p1ih2Tc5uciXq82BD7Ravc83v8vB0zUakN1cDPAtNbGla/gHWhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8ixWGPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8ixWGPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F841C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762441193;
	bh=S1rTVGNO3vstY9zevv+GlFDmMlLQHUT9dItTJb1lrtk=;
	h=To:Subject:From:Date:From;
	b=U8ixWGPtvEDhXitZaNnLBQe0JyZ5lMAxH9LSy9A0IlLkMeZEyV4wB0dPrhpcD5bQI
	 oEx4K3kTJ+gPKLk1T7S3SZKtuOa2Ehv5M10/JTC/3pzGdhw03y3qA3P7jvNm7RA6K1
	 aREx1oWhjRNmyIofeUsJxGIX4SxS/fvGYA8me69oQjrwJvUR5x5XZE69/qdSD5UK6P
	 QrzWkY0mnACvhd05TCXI2z/8iG9Bs2HvMnvfmWPGSOwcbCEAcM0E89iCITzKW4Nr/l
	 fOPRGxVFhpXgcOgtRpHK6rLesi3OWTB7RvV3z6EC9RXttWsreJZSXha9RqTr1ksUwS
	 pwZf2Eo+NZeWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF5CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244119358.27194.1601146544088409512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06e5e6e18c6a8d05afa6eb3b4491e5dced15587a09fd351b5ad3dd3161a17a8
Date: Thu, 06 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762441193

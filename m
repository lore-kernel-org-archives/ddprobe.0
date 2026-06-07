Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C96122301
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780805074; cv=none; b=gjypQe3bp1ps6JKS9R0F5rD01YGFfG7yLa5chKygeQJTZUoC7If5NcVIDWGEAmB0D+ohKCj26fJroeYxmc57hcptChdaX3xlKvTezONYmRUHb8QZKKQ/ly6bPsB0gHrHiAnRbiFow93q504xwj4lkau5gI8i0tNyIysCiUNxeac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780805074; c=relaxed/simple;
	bh=wol8AhPZvwhcxYgdJ5uHSYIl2mvPloShNuwgK8X2Sjg=;
	h=To:Subject:From:Message-Id:Date; b=fXQB1HoC6a9m/6PC5mQ2YypR3uBaf0KxXMd/lCEAHHVqo/yc42BM53hX76yvcZV5b1Ql+5yX+IzgZFbj6zhYt1XlebOJXuGTazOQsCn+xOQaC+81jEUDhRqr5SW9YPAUvcyrkaO4Ablfb6T+SbfJhZtJz5t6NcG/v7gQlk7oVi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXAYXIQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXAYXIQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C799DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780805073;
	bh=wol8AhPZvwhcxYgdJ5uHSYIl2mvPloShNuwgK8X2Sjg=;
	h=To:Subject:From:Date:From;
	b=YXAYXIQnxsARNM7hSd7m9N7m9nfCQHX52LaG4VLkW9aMaffEShHleK1zFBga1Xkji
	 8G6OJda1sebgD6F7DLNn97Np/pvZhnMIxJno+gFu4B49yR/k07HvW9Hz61iA9b4q4y
	 s0Eb1L53dj+mglkDSlXE7IUPgiQu67ZmE71Jnna60C20h8N/r5fYFrQpg9b+VYIvVI
	 f2RN3i8vspcPk7CZhVRPM8L3ws12tlo1DC8xtRSc2yq2fiRmOGTk37PlSTTUV/kBCt
	 B6xRwdpFBiwe5tLDlyJ91LjVubjfiWU8LbLewjY+Hf+FE/kgAbtFb1pzyE5E7e/n1m
	 gWrN0eeV1u68A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFDFCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080507368.28830.6902273649678335071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb2c527d6f834405befa4a1268743e8735a00ca627a2fdce6c23643c9e3871e
Date: Sun, 07 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780805073

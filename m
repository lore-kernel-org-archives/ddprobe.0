Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15183305E1D
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757402994; cv=none; b=sn8CdDkqo1IwHxKWeF9YbVLN5JxzHHRxls8APrVE1wlOVxaZE7F/SnSiEVaPIo7GIWBJKJ5eyM6MCl/aVSV9q0D3YPA7dxfvYZzpPfkYPoBpJrdB63K2Y78cX3m0D4UmNbwTUUP3sb+7n3GQMQ1VM2/P1W/KeCJNPcMdPS4K3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757402994; c=relaxed/simple;
	bh=NcZ+7qBjlLmIWscZnNpCimoUo3Rz+lTnif1Tjo3kvVw=;
	h=To:Subject:From:Message-Id:Date; b=EGu/8G73EK/smlfQEssbyr2YiiThbTqCoGeR9e7v/s/AFb6thw09egktNehVhmNwnF+f9pCxA2rHkhpbqmZw7L2p/yeIvoM1hYe565Zmcx8KJGIY6GowQWRyMc3WZjmlPqkPLJdwLSh59JNbyNW1MpRU4VJHnZ8RsbmvHooDu+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXArMTAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXArMTAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AAC1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757402993;
	bh=NcZ+7qBjlLmIWscZnNpCimoUo3Rz+lTnif1Tjo3kvVw=;
	h=To:Subject:From:Date:From;
	b=YXArMTAmvoN//yjooahxQ8e0S6CM/m36kT2shSefLwsMGnqo/EHxdnjXW6Cs/PktQ
	 z7L0HO7mVdfQRKeeq4suTJD3zMFhXeYjmm2oje7/oejhojl3gaucR0bsJ1WD8tlFsM
	 gitfMpHCtXFLxgEeEaT93SoJ3f+F+WYRAElcLYTaKKaxhkvGzTn4d0uailjUHNLr3u
	 0+1fzU/8I1b/PAYjU7ihsz/HoR1ScB8UmVjZ8fPe08f51dYAhNfNZXW5nCBTaBF2D+
	 t6e1CAJkBokdOcfMtucz4YvbataqBMQrpyQZ+vb+UaaVnvLXPDDlyRvHgBz+7pMhJ+
	 KAuKABZWX+G4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BACAC589
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740299358.8582.17272823795150125271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e290768fffb0a2fe3849a13b2d8cc3e272e25e47f50e2eb91f3bcc4d238ebcc8
Date: Tue, 09 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757402993

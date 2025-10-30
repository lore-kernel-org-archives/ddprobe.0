Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B31423EA80
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761844794; cv=none; b=hNUyKtIHoSvxmnlfoxUyxgtKlCrEYM1mq/LE3J56BhWlX8BFtisAdCeZ4f+wxlqz+avnJEGdiHH5W2QmSeZlz8uDFex1vB8RKj7PP1PYHOYoaqSKjvpEobqW1b4wzlIjzAE8v6CNmi6WyMw/uN1KRVtqf34XoLDEJ4pNUbpnjXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761844794; c=relaxed/simple;
	bh=sJnIBGC38UPAhJYG7o13sl2KAm3MEPCqyFPyJTBaGZg=;
	h=To:Subject:From:Message-Id:Date; b=bFSNRCbawN1okRBrZDKDU0Ac1cmbRQ9Xl4eLDeu4cw+Hy3FhuYNO90nZcBZ2K1reRNHU7kyBeX+bTfUd2TnAD6iDySGUlXxQ9kLQGwNQuQ3sXJAiX3tQ7ON5d0A0zybODMIw+gQhOvjATGmKBRddP0BUtRxrldvvCeareePY8Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj9LfJMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj9LfJMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEA9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761844793;
	bh=sJnIBGC38UPAhJYG7o13sl2KAm3MEPCqyFPyJTBaGZg=;
	h=To:Subject:From:Date:From;
	b=Qj9LfJMcUEi+UEN+Cjd6FF2hQLv0qdOeuTYx3Phha37u5Wy/cSGrIQElQb0K9ZWVF
	 Fuu/ObqH1557lqHT3i+6bn86gEy1D2faA+KJk0zffhKQaT1UR+8SB6bsgMafs3SD8b
	 2E/cjIRPd+s3tWFXRPqIr4smjcntU+SIHNg2x3D1J+x080ygup1oRPD5oOEAcmhFHu
	 Vi9e8xjh1JUqLNxLwxZdLHeuIoTpvdQZMZLkpw/9/uaKAD4Ae7reEevHc5f3Fff60I
	 xm3NNN1XTuu3XoaKA7Hu13ekjNoTJ5ubA02COgVo/2dnS/zMp+/rz5/JQbCP5+0dwh
	 y9a4qCJM/gnfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F6CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184479358.5568.10901225287724713562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b4b1083d841da2a39e6d8e16086ace9aa59a86819f9356f4b05d62d3105195
Date: Thu, 30 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761844793

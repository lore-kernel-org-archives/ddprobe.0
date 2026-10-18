Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653AC3F4DEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792349434; cv=none; b=PTvG/OP7xY1+1r8cwO/zwdeQo3yng/iZ/Q7cXwCMrlzTDnzV5HAuTcOBxk8HwhLrFUq0ombrFZzq1icSgfsgiQUD7D3ZaCwZbH2rJAyHLFzUWUJl8r78LYKB5cQT21LKOqNOal+v3D1QkOeRI1ER9WpqblTPOX6GdO2J4UymvOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792349434; c=relaxed/simple;
	bh=ZnmlIca7clRpx1k6XlZU7qXDos6MWgpZGWMy4x7KkO8=;
	h=To:Subject:From:Message-Id:Date; b=dvtWs2pttC7Vs0yBVjn2DDCrk/J5WBlqtzvk1yREc190xyZJ3VloZ+RAjvZ/PyCyYUWKu8XYGm8Jz53vgEe3iOqg6RpV26eXC01PDQbsCWjiv5s3725Vzet7nTa6WsG3ZPXTAQcICfuSaPWCHQCnpCjPF4bUDxg0uqRI5BYK4Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R76sGr9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R76sGr9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82D1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792349433;
	bh=ZnmlIca7clRpx1k6XlZU7qXDos6MWgpZGWMy4x7KkO8=;
	h=To:Subject:From:Date:From;
	b=R76sGr9iEr+FGoXdjXKus0pj0ukz0JNpFRSC/RXzSEDJYmtgBsysM8qbGWX1mc7mj
	 lA/phgkdcCmbbHRx16LaRtxXwFAewkApJVzu7a0yAKybWpyNfOFUF/DJqo+tLwshXF
	 F2lJ0mfKm7lM9JgRqbg+RvdRyx61tdm/athjH4swQvANP65Ix/nVBR5mBbZ87TfKza
	 2lsJjeF/Zy4COjkR2kMoS1DPKO1Vkpqwg5mxewr+aou5ue5lMerVYdppRi8B6gi2eB
	 Cf6cn95BZiRJsOpXHl8+tuaSvHuNOeWiFfwLs6gQLwxBMDxI8I5Qg2inXJ7nsFhuyV
	 PE1+Ck0J+tibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD6DCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234943368.19416.6221426346333795929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d21522107cf5fd1e4eed06f5bad420e4976c7afe11eedc660601d38371779b
Date: Sun, 18 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792349433

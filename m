Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6871C2BD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743389994; cv=none; b=f2x+QaZexN/lgP2NgFMSEVZ81uYMqDwOmO7ejfVhHh+zEJPa4eZbYkJPGZwVW1xVwBNZU5kmIb9y9wZdzpD7ddjB7cXUnqzsH6GzCEC8LunJFkIlsdv2Ue7MesaN33E5zm5tVfnpnY+lII2SVYe+8SfMSQaDZ1Py70wzSjmlbQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743389994; c=relaxed/simple;
	bh=P3Ro28ojmAvcXJecnIT2+ZCDCi0jTgYfi91cRcm9zaU=;
	h=To:Subject:From:Message-Id:Date; b=tPAfB3i7G7c3ucJyvCCFpondkSA/1jSbCSIoBwmoeApF3XrDaQ/YezxEn0YzSOi8bvI/1few5EFkhatjW+FJSeGbnnpYtZiq+4foTTFQkXTgYm+qQVrhAM8h0H3FtjkwdJR+bGZ1tF6qFzMXU8BuQu0l/oJYHNLfmWsa+BRAiu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umK4rKag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umK4rKag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9826C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743389993;
	bh=P3Ro28ojmAvcXJecnIT2+ZCDCi0jTgYfi91cRcm9zaU=;
	h=To:Subject:From:Date:From;
	b=umK4rKagF+mQaAZabs+vARk6DG4D9YUHicG0M/aVVHSCBLiA2sv26OhvjWQwndnma
	 AkEr1rTMdMBY06PX+18fCASovHJVYvKwXGnYMxOcQoMpACbnzOO6XS/F9NgBmEWKm2
	 VgCzWNbYwQzSlqlvuJztlVmoC6y0P/J0Wr03ZQ6oHEhepT+LQ9BUR0nnWifx1MS9ZB
	 wVzt1v7syi8OfU3AjQpNyAF2jrMjVGWeKR3mocDzlEokE5FNmBD+/vhfR8C+m7tYSf
	 X4ycT9oKr2kc8cNRYv6lQDfXXK5fPhskSiMSACwX8epfE7LBRNT/JNtfRuisdVDf6o
	 R4H1GmRQJt9+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D77C28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174338999363.14991.5967679077081145749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0b997372f7d0a5f48dc50f92a4e350e04514a628fef40ce4bf127bcb5f3d70
Date: Mon, 31 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743389993

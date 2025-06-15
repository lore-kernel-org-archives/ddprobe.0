Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2073F1D52B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749986994; cv=none; b=G84UFMynB9MpBbd+YRdo174o+Tfy/Q37pBNSa10s11rPTW59sgPZAzh1vlFxT4/DXHWZHX6mAb5a0L00U9eMjRgF3ybRvoD3BgK6WJay/umg91q8kgn9upajQMB2lOGAwERr1ephRjtQ47hkKWHjbEdMmRjz5gpokcmMk9RwMBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749986994; c=relaxed/simple;
	bh=/LI5bISK2lAx26xpHdl+FnegqGjT/Xm+f0uMD1fJwCY=;
	h=To:Subject:From:Message-Id:Date; b=USKRcTTDLVw0Bs/oNxB0tLAsDmn8Nu8U5gpHTd2j+iGDKDvDftNv5SOJqXHPdOy79GzW3owxlDzKBh+Iy/tnx0Zv+GxnPJD5/5jRaRFyg0NXVkw2L+xTv8xMw53voq0rXioXKGVcGmJeuFKXV1PxKZg7zpnnXvm43kRUdS/XeR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6JjZJhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6JjZJhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6569C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749986993;
	bh=/LI5bISK2lAx26xpHdl+FnegqGjT/Xm+f0uMD1fJwCY=;
	h=To:Subject:From:Date:From;
	b=J6JjZJhgfDDyMUvH1ZWAht0eKpSZtfP+2kf0r200oqzFkaw7WW/4noq36RSNSRXVR
	 aWBgAYIKabRKUEyDUWnWFSeXppRPch0LdJzh453TtfZab3s0h8xoK+PuIuaRbb+av3
	 lYkm5KlZzWwJeCExZBtrBh542rAlsjOpwy+vVYrCR0JiPbPA6QSR8KFEPqfEhrYow+
	 EVqIIxPbEyeldBy9TSjjKSNwC09fa0l1uZMSpHyNbgu9ZNkvLyDAdGuYZgRwe7MYWC
	 VjNUyKKYwqibhOBT33MQ1vgxtpp0RR+NsWCsPPHxkZBFUebRnKJt2krR+q2JxUWLH4
	 GmgDHaE/kYmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544DC71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998699357.18396.15026796462834247907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd101c885693ea9882b8615a4a11ce0500bda0ea535c76dc3a2efd4c8779b314
Date: Sun, 15 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749986993

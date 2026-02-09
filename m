Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951B37F8C9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770651234; cv=none; b=VMKE6EHLQF1DMJG8iwF6rs4k4NIXDWzclU8M+mubqhaF7IyfdSbTvh76Yr7pOe6eF/4O0ryohvzkgq2O/BYCS6WwD37ejnmI/3KDgmRteyC1JiDwU3eRlkkezg0qbgZobv/BMzWA5wN918lWI3VIg64cjKpP73DsnBiAwjvZ58A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770651234; c=relaxed/simple;
	bh=wA6F9gthODNs0tYPcZ/0wQ3yNbShM4ATmrB3vnMPK/o=;
	h=To:Subject:From:Message-Id:Date; b=krbj/RcQN146pk+7JXx8ZV79xoKmM3pOWKITDCP0823gqLbs2W/djadBwdskmQxrnn/7Hnp3bxeXyKs8IStatTFErvRE0xHK/uA9KgDM3fJsWHQ57+IqeOk+NxVwr6HuBLwoaWrLnSzQHt53M4eIyBy2QSFimu7IV65XJJfYKVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKU58c1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKU58c1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BBCC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770651233;
	bh=wA6F9gthODNs0tYPcZ/0wQ3yNbShM4ATmrB3vnMPK/o=;
	h=To:Subject:From:Date:From;
	b=dKU58c1TwCF8r5+Eu66YbyylIQyGw3CfxAY3THtZRpJt3t6I1wl9C57QVGaH1hkzD
	 3GljSURRLL4q/xFiIp8WmtVYWggRkInvq4g5ja9zezqR64ALycKgCu+z/mN45rPCrF
	 B5vWQhqPjtNYltHh58cYPdtzd6ike7O5jmUmm3DvSAGbcO02T+JDJdZtpWUbCIRuwe
	 iUomrrBIGxBv1JpYbcXKFSe2OmE833I+dQae69Y1n2A5fh3PQCZpZKkPinlZ3I2FiX
	 lyS0R/3wRVpOdIE/p/b1BE97IyoExl3BqL8wf0AIH0ZbxzKsnf6EGAZyDWFsRWFbx+
	 Vp6t2LUve6Kjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5CE81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065123364.24450.7798287524592009600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d785c1a5d0558047c85a4c034533ef5c046f1862778de7ff375bb14f1e67382d
Date: Mon, 09 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770651233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6A25BEE8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751297394; cv=none; b=CnKgw89EHBSs65hK8NNFanFOAq86sraLOom2XJfRgQQeZ/pEkUzOdM/tIfzvmtABQDEa1FHmSglzDUVSBu8mULVxh+cxKbeQyGR1BJUs2a+CBA9rMHD8euQyVMRKBLiLeCvyqbFXdbSsLe+EFs5jpJg5IqZHKEtfPMDWHW9AvoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751297394; c=relaxed/simple;
	bh=LwCPK95U707XIXg1uBVFkh4sqlVafdPjbRCObd6cQuY=;
	h=To:Subject:From:Message-Id:Date; b=jnP1aj4JRYXzxM8aFFbWWflyOMn2bY16HTTO2kX0qmxJ5FWszyqlcC4/3FtNCNzpf7IyGe5HoOa35GW+vdtL8HX4Q4QBJeSZWRZQZS4sS2eqRcc5ld0KmtcDFGx8rimJ31tY6yKLVy0F6iYAmlRgSN/2BMuwTZESQGXajBpme1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow/dAMwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow/dAMwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0312C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751297393;
	bh=LwCPK95U707XIXg1uBVFkh4sqlVafdPjbRCObd6cQuY=;
	h=To:Subject:From:Date:From;
	b=ow/dAMwEjkWUYqcZelMkaycZkgIqz7G7kKAIHH2v8PaOIQE5/rhZWyQmAmjGO7Z2M
	 88hZxN8HwAS8pxcVB+ghaWmUR5kkyAcr0qObonR3JsOzJCGyu4gxdYa6zG76DLuJk3
	 7LG16LwtwWxnqEAhNUv1gsTC5r+GgJKItblj7ElBAbx6bhDn1IBojatvue2rjijyS9
	 az5rbpGLev3RZ4hGrrmT2460wGzYbnPVuHu74fR+eRctN5a2+XPGj3ZJyNPf3PUfxK
	 q5EqGA0ZdvF/+kYzH+xR5DZqRN4n9v/zorl+c+3lqVgoWCrK5TlxbbKpVKTjW4qzBN
	 +Wkswmy48ltWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F652C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129739357.20712.18191324732383968658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec96a26c4aaa16b7a65cead804aa7aa766697dc6ac107138a1ff60f2e4ae035e
Date: Mon, 30 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751297393

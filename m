Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A53179D0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749967194; cv=none; b=erf4rl7Vv7Xscl3BJIsCj4mWqvZxrk4yVl2K72hDbNablWREQ6mKCqgCoPjR2TnHVsG3NCe6+LtC5+R+oiylX1IDgyULyLiinF6E6c7SoqPkiTTGh+A+RZ6Nd5rpk2phbBFB1z8nScqzQTXIrH4O/CLBeA24jqvAk7QKf+rqwoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749967194; c=relaxed/simple;
	bh=GL/O5e/CWNWfJpA3OQ7Wv7guELoZzmDrZ1fMS6hW9yk=;
	h=To:Subject:From:Message-Id:Date; b=pHTnrn2FwySU8X1U/mUsUl+droiZxJucz6E7ZIzuvI6uGvB3LRCoipPWw8yc2pbOuF2I7PQ7LpiBOo3IQO3dxT5HBEcNWJ3hzeccVMN7MTrLl1mAeUYdMVEtnlv9SmjfxQPhCPlcczEXWTGRjnnejsVdDzGftrhwXlf4xN8qqJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEOpjAyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEOpjAyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC41C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749967193;
	bh=GL/O5e/CWNWfJpA3OQ7Wv7guELoZzmDrZ1fMS6hW9yk=;
	h=To:Subject:From:Date:From;
	b=UEOpjAytxrekaCVVALDd1PY/RclbkIBB/ci4Gm4ET45o3zUFM16DlmOzzYcqvMiSF
	 vJr8HJ5b82IepLqKx1PGb7BxqE10paMUAUkX6RFRIXhqc1eDLgLkATnDikoFf7iHUR
	 XQNA4nypGJesxLponzpanqlGiVRlyfD6GkghnFYCO+KNjLNgp5elmQLnfmoVXEtHkl
	 ymKf/mN24TE5OJkhNMRbK50x+KtTj3N2eB9wbTiOXzezYbyRKY5g1SK6tabc1RmgPP
	 CrrENcIAI0kpr7+ir0qqabMaqH/zilRCB1Cq7oB2hSdg0p+3ZxWTdlZuxbY5CoMeK0
	 fJag73TbgIdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2CC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996719357.1051.2314719279732996096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c77503b6cc02e898f14f23f709c9ee6b2dc52c9427afb6b8d16f26454b3ae7
Date: Sun, 15 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749967193

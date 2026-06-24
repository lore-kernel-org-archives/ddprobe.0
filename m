Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A2C3CBE80
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782331054; cv=none; b=YUhDnMYdZCgqBaDHJ3dHkzzO6AkoFJHI7B/1Q6JYbtyWCVrCery4orcIgiC2hMh6nlfG2Z2L+s6k5g/qTL+IcyHBKLsd3Bc7FdIETn0URF1JDqbTPx4rAUn37nvsE8Tdy4sXxv/wKFopI50XUSpkm1PdMuOdajhGbjgOnF1duMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782331054; c=relaxed/simple;
	bh=pjldNfZ8IQCHez5VlDK/U8U9ZOsM/vS9A9RZJDzeWRg=;
	h=To:Subject:From:Message-Id:Date; b=FepTUcm3pVr6BNfXvhuj1xSZgrLKj1PtgCX8KiufYZu48Z6bXDyCB8hiOvYkEIDEhJ7XgFblabhLDW8S1dz9AEbNMmwm08+RTDqQooWqVdepduC3A4ZqF5jhiJs/jlMNNO3PkEhAP/ymD74b0B0gBwou+rUVTxM57Ca7IvOS+vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcT+Pxky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcT+Pxky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D418AC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782331053;
	bh=pjldNfZ8IQCHez5VlDK/U8U9ZOsM/vS9A9RZJDzeWRg=;
	h=To:Subject:From:Date:From;
	b=pcT+Pxkyur9bQ7bLQvpqm0PFrgScsUDIV3m7j5Lqqwo9GseXMtQsQtpB6iE24iZbL
	 6m58hT/7R0otSHzDQVRCYNbGVCJY+vDC4U47/57pcZMR6NR4ZzuGCXkhRwx+oIsph5
	 Zd+IK2AYTSmk3JL/fo2uthOLr/SaiH2QSvz4Cucaf9GlZdqZv8MbF+ofrxoN62EkJX
	 mgRqInzx1ImStcOo3PCTfQ+ZPdHTACiYm0gtan85C9rqOvIUXjFzaEVt1KfQcQJ5ii
	 XmsO/8ZMO/e0ECMElbs9wLqkozzlhYN8PyqKV5pg0cx2DFjqD3E86o5u4r+Y4uenqL
	 c9xnYUFTNGgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6743CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233105373.27739.1942264726911586213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c45ed124ad8c37bb8668f8dad727536ea51f37618d9d3e2383ce5af81ab74a
Date: Wed, 24 Jun 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782331053

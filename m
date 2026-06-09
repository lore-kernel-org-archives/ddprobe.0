Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3863936215E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781025934; cv=none; b=WCCcxPYZZ2XU+koksQxyqbptlJ4yUp+mV5IQ9JiJ8XHBKZyuQhoD3RAPLSp3wXp5wm4a0Ny5X+Rjx2DtCsKYujVbZ6qdBXCQ0d0H05dvAo/TWWeNfd7bY/y+34kP5qcQrasWlhsZvT29SZm0KkBcnmKiq01cRgy44ALkyljW2w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781025934; c=relaxed/simple;
	bh=v7B6e2m9XpS8ntnYmGVDKS8aKvG5HHDOwSmmf/ANLVI=;
	h=To:Subject:From:Message-Id:Date; b=BXmO1KRTJj6k/1hFbIwrSBVwkwoKKRbRNU9kpM6KdZM/eNElYLy/SKOjpseUirr+fMNtMYp0sbb/s50Bq75uhg/eHh3ISZ160OIKKNLjKawK321SwFf1jled3mNMOZuF3TGwGsAZAFlNTl63K0ulXGa9mu58IBr06yxSLFLdJms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP9p9uij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP9p9uij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C561EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781025933;
	bh=v7B6e2m9XpS8ntnYmGVDKS8aKvG5HHDOwSmmf/ANLVI=;
	h=To:Subject:From:Date:From;
	b=WP9p9uijCLD7YcYxZoOlaA+sQ8QFlbzc3xtP2loAsyQWU9dDN/+JZehpT9uu6keN2
	 NgSDzmxdAKbxYOPOohehCByopKdQHCuafCuH4On9TfBmaD5iY46Ki+Ov9x0SGfsMPP
	 QysZhg3orYjwa/k8YJ03TNlXVlYWCKkn4H0p2+HpZg/5Bu5RC1FWyfbgfa4aPgBDgd
	 tfsQ7AfbkRlad1RRZUdPrpGOMLC2Vlex9xGgcVxX7ZqQAziHqc5gBfQ/+DTYgfmFAS
	 nd+IXA6+QRmV9mYrAIhGNUS06l1MgNTfXJMCdGhYq4JdGfI9dSftPb4h7HmqNp0DmJ
	 PXTYX22T5954g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07CCD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102593369.7249.17062657937530274425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e165f16a382cc147da3c8d1e7a8eb65a0302cbc9da760dd26778c289789e46
Date: Tue, 09 Jun 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781025933

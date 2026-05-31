Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B6E1A9FA0
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780260274; cv=none; b=E1pXqgELh6FS5OvFiNBWX2LeA4LyBKsPdvBtrzD/cUd3NFc3rUv9GID4kEiBkoKECDqd2IUB+qN/I4Ru6ZXQgIxVNYADim+XA3hI7rivzG5h3rq/qmZme0PFmjtp4MWm6FuFOPQPQgyx3j9F9tIeJqyOmvyhgajvhOs9lPsqRJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780260274; c=relaxed/simple;
	bh=6BVnjQcR8VpVK22KhFtwG8dGhrBtbjrIpCRSdTGA018=;
	h=To:Subject:From:Message-Id:Date; b=rst0OzCgJdtGRKGhG0nCLD2qzAoTS9IC6X1Fe9+WsUCS62HukOjB16kuK1c6GM8SSuELSmLbXec39DSH6Te8+Oqg8JhEKeNxUBv7rebQfikfirXAx7VZkI+b0EM03MbIEtUK7OmBoHZg47CDZ+V26BpNoY0qTAfnB4p88Wxdwwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovjrtIpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovjrtIpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBDFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780260273;
	bh=6BVnjQcR8VpVK22KhFtwG8dGhrBtbjrIpCRSdTGA018=;
	h=To:Subject:From:Date:From;
	b=ovjrtIpkBljM4OWAYyvTW/cIHgYAJgCu4csvMnFx/5c88ElsWo1ubT6qAB93YxB+9
	 DASY83eA1fCF7UoO06cTcpCe4JZYWkcIaqMWTOTdzvCHesfELSZasNJKyb4KzAxWVT
	 FqEOfe56x4OuSei6Ps//iDKsg+R84/oe69rW0aQ9jNQEH4VvcyiWZRZPTwdyzmm936
	 Y0KSzmntcLcyUWNYM8eEiDPNmkosiXi5TxwMxBLMScbZ/7PeozNFbAN+vTAALi0HZa
	 vbXsYJoZc4KdDHBkD+GC0Pir/dg2kn7/G09g4pCgf9kV6RCgyAjTz1TmNafgttbiR0
	 z3pXUN62BDyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82DFCD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026027368.22607.8429825956750800719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a28b8de45dfecfb1918b56ce27c6c26f57aaeb65aea3680006b178d41a5bd3
Date: Sun, 31 May 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780260273

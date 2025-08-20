Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEF224DCE8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755715794; cv=none; b=mBM/5Cl5SGIa8HBLHa6fJFFSPhmYOdHvEkmbkEgxTgr6aK+mZhBFLIN3uBJ5thf8zII72ac3ySEcA2eiEyjl9Juq/rgHUWOpe2kKFrFhn9EdCVCRuE30L+DcNKRqcHb9VQvO3FpQftrJZhnBa/V+VRIvycWlPknd0lb2Y1CY7jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755715794; c=relaxed/simple;
	bh=IcQltxPzJelSebL4lmcZ7owp0tx0kopHHUvlPrQV1rg=;
	h=To:Subject:From:Message-Id:Date; b=u2JTiXpUtq8zNS84i3GbD22JM5HN/qhrvwvTppqzUfl46wJUfvgYbYFc2xOMPyF+RQoiWSWUqHvFjObMnG7r9iWLAxBeV2lDvZNMuMr5KY2YI0brwTcDcdVS01cF+zXj6X2zQO3/tNaLebJ/VCy4xK6VGjkCYkXc+KDs8/a0noE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdBglxs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdBglxs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D022C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755715793;
	bh=IcQltxPzJelSebL4lmcZ7owp0tx0kopHHUvlPrQV1rg=;
	h=To:Subject:From:Date:From;
	b=JdBglxs8spY9WZrsOg9XG1EvBFONhY9uigh7yJoyDPIDL60c49zfeSd+j8c/QowgQ
	 DaX8fuLJ1sfmx6kKYUkLXDnUccp2e9IX48+GIQg1cNHjQReeO/RMPP+jDh1ixhQg/w
	 dw/HwFbpte110l/T0OIiBog62RFst5qpVfYPZ4eYvfPMoR6n0npm5jz9yKsQKQCtY4
	 5aoF6Fp4cg2g8p2mFL2PtCgKuhqxGfhXhBNV12iTps7Bk6HHE7CoyxuAja0KDgzjmz
	 N93iV2jkkGDNHDOWK+V/f6lLHQNlTeEgN78P0QW34h371+SNVVEeR8o5fzktpP2yh4
	 UCpFWbPErUq7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51ACA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571579357.13672.14714563588709253380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d6a98dc7ed72fb0aa0547c1a0aff5f5872a36d4e48b3ab439e5252ed9f6003
Date: Wed, 20 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755715793

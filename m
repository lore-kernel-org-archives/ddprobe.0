Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9B7347C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754707194; cv=none; b=SA2YaPx7pmn4sz5aCHToon5BAyOgrd7lQxwtOFXnkIh+/22rbw52d1BcTzBE2iEQLfHBJVUMKKsExuOe8/BHspk7hcrTCdvSif7vLhJnHZy0bIwtksOJyaODP36PjYacJKGHrZ3oV0lsApntvC/dtAZjYau2II6WpH1pjoWebig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754707194; c=relaxed/simple;
	bh=U+ptMkTvYEAY6MWpn+ynfcYBO+FVOulybdQ9cK+FagU=;
	h=To:Subject:From:Message-Id:Date; b=kN8hzJCJevWP3puOPDgKcDxweyolgNQb8hXJ8BWTcNu37HbgVkHLlJrchMZPOWdm0Tm3Me03cLBrbez4vV8sB4PIsn0NrlDrHSAtCCawfwkO2eTsGZcFowN60Ot2kiBSM86D9yKyIQXhT6+avwI7/gR4FfppMe17HPSS9gEKgm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9YzO816; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9YzO816"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C988C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754707193;
	bh=U+ptMkTvYEAY6MWpn+ynfcYBO+FVOulybdQ9cK+FagU=;
	h=To:Subject:From:Date:From;
	b=t9YzO816RBh7eEIrgqaBPf2/q13CwgKjWo5k2S8SU3MKmgOHmEjPvNGz9PqIjaoXb
	 znbaWpRIWTJqvVd/Qc2oHAfcseJ42XNUYPR5IWflPb2vaVCN3xoUBEy8qPiGWUH42U
	 beAUjDtyi8vat2gAhEE7rmz0/XQfAWdxjxD6m7NsTlp+GnS1qqA1Q5wq6foEXIcnXQ
	 96TkefR+B8GkI/vfHulPTIUd/H63tZflKHpZkFvIys9n7LxmHvwvbU712h8b0760c3
	 w5myK3EE1izD/PONpP8Auc4L56bW7L2RmCNr4l6XmmYSvvBSkGsjZV33bycY84FUXj
	 cXmgQ6iO/TXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1E6C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470719357.19823.15404341531526501267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7095875663720e88e2c5caa964f36b626ed38152caf1b8aa7bc016eb8c948cf
Date: Sat, 09 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754707193

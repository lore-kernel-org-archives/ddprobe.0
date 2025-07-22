Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088F4279323
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753201194; cv=none; b=cn57LpoPodKbWv2Ee2nd5W1x+tXlcNwg6wKScpykJIaJSA5uynoE4JlmagaQz3iT/byzR0Uv7idnY9baTvbcshRUQrFfwT8IZwws9oKXiHP7ZaE3wz+pnZ4xFEUqOOZFn52iColqbGBDuYiIywHM5QzA6rWHa7ZNR1PNaTyQZk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753201194; c=relaxed/simple;
	bh=qAKbcnvjEcGaq1GGZmV6ATe/3zBOQw075IWviSCClyI=;
	h=To:Subject:From:Message-Id:Date; b=HLyNep0KPia4IKkiUtUmEeu1ZwPOyTLc7FHNWvPtREtVgp/3SLqC9xQCJFMmQ5J5JTlz+frnn+uivLRpz2PDYrElyWVtFjHIxy/j/5G4U5ddRhGVtW3O77GoO1scgigOPQxAlgRxDDiIW0v0Qq90KMbPJT9nzGJh+jZMIcn224o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEOHH5Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEOHH5Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FFAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753201193;
	bh=qAKbcnvjEcGaq1GGZmV6ATe/3zBOQw075IWviSCClyI=;
	h=To:Subject:From:Date:From;
	b=XEOHH5WwQ0Kb8UcefWA2hR5IMi1HtJhRmIEjQZ8niEvReDqKIa4Byzrwja/zairXx
	 ZMDBnhog9GNa7WMUwwDws54hvvURxSUrL9GsHAdibAPHSFb9C0CD+njbZy9Mzvbwc2
	 K6c1Z1DX44mCcYvotHrnEC6V0EVORmRHG4oOs45zyECGm9VRPQXyL85d99V8ySApvu
	 fvJ9Z3fsLKMNQH19fzX03PlpDBGgxBl/2hAomYFDpbSMZ2b0Fw2QPf23nU/WbjgNdY
	 KzAlKY4IEzltmzAkiUFEC4o2qF5eFJK/CX7NsD/y+gqJ7+0ioZe2rVn4xA0w/H0V6N
	 0WzIQCQ6AxxOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8BC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320119358.1795.10156417236856008395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7912ccf4af8c9464cd4828ba67b99e8486bae02257f617b2965b6f62cc9889d
Date: Tue, 22 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753201193

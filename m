Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E422C859
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738612554; cv=none; b=DmBYLJDX5qSmmfATxfWZSK7+ARk6PWKdXxwpkTk7RnpnGotYSnYdnuVQ18RDYrsucA1FIlehdeGtRAzMay9cMNRcXoY9Zlp8ORYMw12cxnJqesWqLId8vUqB8mTvRn3j9OVi7p4DfALkpSdFFn2y2IBVQdvxy9vc1hncthM4mjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738612554; c=relaxed/simple;
	bh=Q2WYB8lrHGCqjNhEJIkgUvj5HA1S99hK2wz73gx9lf4=;
	h=To:Subject:From:Message-Id:Date; b=l42zfcZwvIUkyXtxmVsvClrkNM0C2tqN1UFjv9RrRD6syV0ZYfJmWaotvq4HBEbsWAIatPW6zICEIpTEm17D+9MebejKz7BGbrWyGPFwHGxPPNAvFVv2+oCh9+aquLHOeGJxjhN2R8aqU0p9GhqQIlwqYlb3L1Rbe9AyVDAgAko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAzD4E1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAzD4E1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AB3C4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738612553;
	bh=Q2WYB8lrHGCqjNhEJIkgUvj5HA1S99hK2wz73gx9lf4=;
	h=To:Subject:From:Date:From;
	b=iAzD4E1agnDNR0hCAkLrvu5BbUb8/znqrcufqUtubUtS5eLc6fw6rHmBmyK3Pyxxq
	 i5gPBaJh+Kfymw3G8Dwn3vFIQBy04SW/2x+J+q4vM4wtkX6qctZ9n0t5jr6BauO+yK
	 eNRg7jBIi4vX3zr/aVgh80pXDS/GvCdEDj6aJfz5RCtRiVyl3nb19HH9URi4udrWWA
	 +8f1kZoq4AJmAWb0tV3PkJfEFi/SnAs6j0U085h4ufWa5IdNPH/gEaYGE1SwZtiEXJ
	 L0tkF5lDckWjKb0yUELP1Y5e5AisCk5JyOoew65SMsrd0kmnbKbuTc8VqCzQQ3Z1As
	 zwU9xQb2IJEkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533AC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861255359.29919.12529789222158408259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6084baf8f42b68a64d449f36fa13202024f7c488c95ee397af71e9230eb5b8a
Date: Mon, 03 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738612553

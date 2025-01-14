Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0458A246357
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736843754; cv=none; b=n/Oyxv8zAREzsBv0KB/y+q8JWMPiYxI2YU2h1ajKHXCHVs9PJqrSEATSTaQh7trnOxf05ZOQ61qSEtAs4Prq90752B64cJ/TczP+vXAJ738djkb9fqydAv0bVWPMj1njeOhzoAxcdbNM/1PhvJGJT68aEmD+z6LP6ZqfaGFhGGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736843754; c=relaxed/simple;
	bh=LNdZ9MIziKE8NIbR/L/wHt1rEBqyqV2n+fIkczlegso=;
	h=To:Subject:From:Message-Id:Date; b=J+783I82rhqRILuqB3EkwQVZvQFZ7friAP+RvCj4rkchq48wR68wWJth7DnGGmyL3fEijzU/OPUmLbA5DCUK0Srac7o+rIGTWNTAWYekONuu8aQaavRf0CQZLYk/ccYp8qEvkwDwrJcfg77xxBwmVND7G7hyydvBVCyDUzGW2xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoLnTSpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoLnTSpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48F5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736843753;
	bh=LNdZ9MIziKE8NIbR/L/wHt1rEBqyqV2n+fIkczlegso=;
	h=To:Subject:From:Date:From;
	b=OoLnTSpuy6Yy3tAWWhYXLh8ZtJpdxL39ZBkdvmHm18LL34FQcmFr0bSJ7gbRu3qV+
	 Tpl19YqCkloZ5xXYXKnrYoAfcEGNKqRNm+squ5j1YqGfhFJdWyiOHTmrb5qgCZ1hwQ
	 YecSgMzFhx1K/oOfs3zENthE09IhVrA9D2Khl4JFsaolAwoaXqU4uhx+IaAx8lU8b1
	 CopfBR+NGgoXju83ZxF5x8wYVlMXiNUl8QqlnQ6Kg+/A8DtNgkunfH3aaBWgrPdOLZ
	 0UeN09ayHPTWlmRsyLdbdUwu8hJwOpxN5X1TpnuxpTj2xLsdxTfQ+SVTV98AmJ+pEf
	 1/ZDhIWF5x6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE535E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684375370.3419.929225152473346750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b4194f037dcfa89a46e2d7e783c6d59057485173f9b8a3e59cb3c270a0428c
Date: Tue, 14 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736843753

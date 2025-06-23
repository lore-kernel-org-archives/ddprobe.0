Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAF3277029
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750697394; cv=none; b=IdJ0qz35eHTpXktMXkZfCs4efmXA7zuyOMDODUbXc4/hURe8Xn8aghGS9vOppuZj6at72c6D/NC8mMHaYgpM/18Oj9v9/Wj7nvpoZEvZxQ5r3GnGfE/MDnOo7O6nGvhUevbk+s93mUf1IWUBA+HBnbr5KqkNDOZzGPujnF8qRig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750697394; c=relaxed/simple;
	bh=KB2ojQ2MSUZnLBD12kfDPpAdz0CArawbX0rDU8FhY44=;
	h=To:Subject:From:Message-Id:Date; b=OPokbk42hC1lth8/vCFk4nq7tDio0sBOCzaQ8lj6Q507s6WqxUk2hvHOVbtxYQm0YE10IEMlhaQELQstGDHE/sIdwD5dRlW774s1TSzjGf+kQE+JLOyDKZL80ehKg5/njlG0DvRWJzxvd/79G4t6N00SmaHKFAFObOSvT2bZHCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cebWwM+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cebWwM+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750697393;
	bh=KB2ojQ2MSUZnLBD12kfDPpAdz0CArawbX0rDU8FhY44=;
	h=To:Subject:From:Date:From;
	b=cebWwM+Kh82gW5kvE3BeR5VgPsKnIjMOn9gXip1P8MfQ9p9VIUsgHPIGwymaIelMf
	 OqmZoX6N/49RN8eSjO7CbtLIxFqPNuHK7M3u8s76DlnKnxddqwD8NIIZAlmy+3LJrl
	 3aaRCuXyzdWFSnhtWIBqIG8wTNsBLo2ToB0uBYGrNQqsH+wtNkO7BQTl4Lr+xc8LE0
	 s1I3OkIXkNdrt1O/OfmAjyE1lgX1wuoQX4K0Y1WFisciszXkjkQhpaDFR4ZNfgbisz
	 G6rNBuHs8pryLNe3Ro7rOXYt4gu+duR3+8ruTGqoHZwEdKyenBMTGWewb8uVUfdb70
	 qJKWan+BivBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E898C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069739357.22467.162486269292864335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73d54a62ed3edc3d341f02b416a1dee530a5443d8b70f01699d1e8a6b9af4c2
Date: Mon, 23 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750697393

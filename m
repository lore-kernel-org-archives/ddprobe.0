Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DC2EEBB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774812894; cv=none; b=tg1bjxi01uA0tgcHtNK2e3R+hjkL+mSvbTHr1mzVJbq52pFSmMJngTzVQoZpRmxtWOYRt1ul0AvyRFziLglrhWPB4BehDXQ+pGOpnGoPDDH6RcqmSkVvpJ/HwnqSWeQcKsTDxDsEZnd99bsCak2eYAVvt/IkWE6L4+ZANlPqn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774812894; c=relaxed/simple;
	bh=wk3rUnW9v+eZBXR3BTT756D+Iojn3/0xmsd31Anns+I=;
	h=To:Subject:From:Message-Id:Date; b=h8y0j/0cvwXGBoUJDjIfuCHKhX89SMHL2dfIPfnU3eSm0+RVS+ETs1gDncJwOw6wq6T7NuJ8LMvfvFxv+BvVdZ3Wd2zvxEjha15QSE0PRvRiNWECX2iTC5XWn4nPKujeDE23fD17wQpm4o93dKNxwXuohyhJnETuxqP43IjdMg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8KoV078; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8KoV078"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774812893;
	bh=wk3rUnW9v+eZBXR3BTT756D+Iojn3/0xmsd31Anns+I=;
	h=To:Subject:From:Date:From;
	b=c8KoV078GJ3W9cfAguLnqVRd/EDQm2Nxx0vXrngwr9F+9CLAAgCOBmM4A2NnZY7eq
	 NkiEla0Ojp343xmVTa08y+uYL+e5CYvpnza3aQZ6knRsa34hsEDO4/WJ7oOR1wEFKc
	 a+Iv9t1G5SfgktZqLKkzQDamIOHDm2Kzxkxk84ziWuI0c4ZvOSxjtGA99SM6qdJ1n6
	 KmB6piJG9v2YRht1pMIJ1Ri5cMI2Xa3T4EpH/4Ur8c3+rLVQUhkG6zYzYaeLkL5AXJ
	 61oaMFJDoT/BffHJnHLHBhyJsb0NwwkNDIaS1eTl9e6o+CnDIdlYR1y4dVOWy9/iE2
	 aSvvj2Q1/srOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95103FC97EB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481289358.10539.13644740251422088736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24aca2dc63563917e7526fa4c299be7398deaedb8fecfd1da49d66ebac37c92d
Date: Sun, 29 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774812893

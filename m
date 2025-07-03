Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135A7291C27
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751524194; cv=none; b=KPYUFMUzGGJZNK41dkBDiCWd7GYOTboyawHyiAe9ryWpKWx+WieeHZ6Ng/ol+OuxBOjImycmg+YwKck43BdxLH0lkTusWv/OHkjp+GaBvyUgx0tXULZwmHUjvUCOdbuY3p4V5/mAMCd6sSLwNgejuCcm0inOUfIIEqZTc+mP6bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751524194; c=relaxed/simple;
	bh=IG3DZ94O5FyCBnR0UufvrNMOJN38rJjUZJbgcCuhJ8U=;
	h=To:Subject:From:Message-Id:Date; b=owlQXN05klQ9CFlxZsSJAzVrA2gpb6yuYcH/HmEJ0zlp3S+Ozn1qZSv5hbrS48jsccp77YA7WKPMsMd/2K2MJKZ5R2FuVwSg4Dy/HdF5xEg7zzRDCMQciq+nCaRD88SBTgcRYwCE0pktj/5WAA+7MIOJPOuA8z0m+YJH+MP1Mr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz0brPE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz0brPE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5185C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751524193;
	bh=IG3DZ94O5FyCBnR0UufvrNMOJN38rJjUZJbgcCuhJ8U=;
	h=To:Subject:From:Date:From;
	b=Kz0brPE8s/3Uz3pNBAx6LdM8KqjpKq374mplLvkUs7L7RiBmyetlicq1jAwaaGR3i
	 UZtREAhGDtuR1OwbLdsU872p/UxRv+O278cjHtJCexMYnsMs2k/BB9sKbHag++TplZ
	 RJbeNCCLBZgez5KFx3CivRjfkTd8+8XrAFwAPRFJvkMrtHxIBFWLfWXm6lsz7/Kt+x
	 WlzhKqzOctfkCLtXhHWZNXpl2U9FrrNia8L1h9dXKBBm0TPb4pEgiPZqFTtPGvSZHV
	 P8RsKZI1noJgEcqsNX1iHuJdfmq8D50wld7zx1I0w4QtjYB7Dl9O6P+nRWXzObqmf4
	 /zDhC8uIdyoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C91C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152419359.25387.16391244812737485032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e9789bb066dc5ef1bc21feaf1a842b056191def5ad757e5f3eb162e3c1e73a
Date: Thu, 03 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751524193

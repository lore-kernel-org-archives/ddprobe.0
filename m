Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1270D3595C
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756256994; cv=none; b=BEG0NQSejQe7COn2BC9v/ba63HHWrqP92gK/H5tc21geoSHgiY823jrTdOVilUczvAPnr1FpJB8kuVYrNWGBiQbMHyacPswg+3hQ6TI+EQ+SWHx970SmHNu0mNCeVvdoIZKPwAmNRUASHqfYaBoVNCg/RZF9kXdrUvU0JIfMCSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756256994; c=relaxed/simple;
	bh=aAj5rnltPyoFEeG7BQ2IF4jC2m2F7Sm49RmWCJPR2Dc=;
	h=To:Subject:From:Message-Id:Date; b=G/BtuD6WNslucphWsOKdbGopVLWqaYPoMATBcE2lHxOEiTAIKkOsQv5RFwgZk6Tf9bFpRKuBqAKWmYpuJv2N3ZhTthSt5FSDBV/2crRvmfLcITl3tLQHiwK9xDkCz8pHnAfP78QGT6wZxh7Aly2Hso/c6Mg8VWqi5ebVAjRQ88I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdi7aFJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdi7aFJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD6FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756256993;
	bh=aAj5rnltPyoFEeG7BQ2IF4jC2m2F7Sm49RmWCJPR2Dc=;
	h=To:Subject:From:Date:From;
	b=Bdi7aFJRYWLTiNBPHOs5/XQXR2w9mxJ/CG249a5AuXlQLJLPvDPSJSnjbhKgy1PGE
	 /x9vP8e+yLxrVCpN5+Av2cyDmmonWMMTuw6EHsiF/dP+2Xz5vyhlvaRzIGCZLGGsK9
	 0eixFG3AzgisMMPv0nVWcxmS56PqvH5Vm+IfcD+M23WZtmhTk6EzGlyd2xII3cDWcX
	 WIzb+s0uRdHVGG9nvMZeSV4orOHadBDa1Xvfkijotx+fENwbiRSX+JP/hEsshqtTRK
	 HkHsVCoYcSyGe3fDP3QBkXgIaVAA5EqZWMhZrGtksgLAdrTAw0qgKCixNCug/XIoo+
	 fM/2O3S+IvyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF21CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625699357.8937.7914696426863078004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9f2fe903c4bd3beed61b11f05cb64963f74ea49276ac97f5134c36e76c637e
Date: Wed, 27 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756256993

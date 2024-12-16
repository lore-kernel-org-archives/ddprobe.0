Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB831C3C04
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734387954; cv=none; b=VfbkA2Tud2s9EfwgY4jjmgwslqfvPfstqf8/W1INjfMf7b3B+R7UPjGOVSO4xRFk0bB3VZf0NHxwP3brI+2dwTAOwv2ZTwZZ9iLIaXj4bRmCczkqWJhH+mVYld+21KgGnY2kOrbDm/sgxrhlgXMsBLZITATApvay/ri8GeaYAp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734387954; c=relaxed/simple;
	bh=0f4QcD0ZkpYQOhvZojqFeFE3cXUhB+0TdT+m+RGt3dI=;
	h=To:Subject:From:Message-Id:Date; b=vAMS1tfc9fxO8IV6JFNR7+LcTOIlO+Cx9vlG5CjnU9IHNFn+VQm2dlfB4ss+dLSwyE66Ld370S47kin7ZzjJ7FgZ4XhbJ3oTKWgB2QEkgd2UoaelKMTpm1nAJDzPdeUsaBeks6Fhnff4Exw55BZ3Aq1Khtlgd2xibRqbhmjaIgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaBJ73Pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaBJ73Pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B1BC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734387953;
	bh=0f4QcD0ZkpYQOhvZojqFeFE3cXUhB+0TdT+m+RGt3dI=;
	h=To:Subject:From:Date:From;
	b=kaBJ73Pim7A5hGdbwUS4tpdJj9nGq9r2Dl01Ur7dhvfWWoHRoEYB2GOnHK0YBuctu
	 UOBb28+R5dCH0dNR88tToLqkcTSq9GtDki755v3HwQ+4Ip3Z0iV5D8V0WRcPmLSJXr
	 PA7onbquz8KHb3jg6DEQOh6YnciNzyImosYKWY2rxgA6D+0y0J93xkYq1F/nUAaBGO
	 Zv+XIM9/x0aKGoQIc/x7XN50k6Y2dQ3cWwq5o/45Y+xJgxcDBqYHOqFnD53FZR8SWC
	 7+eL+zo+3lELboOinMdD/9mxY5H2rSLb3ZOrqILwp3cP8qsZz8OTcNn9TArsE3hN7D
	 G0BrdZQXOPnAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C2E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438795358.18597.7258874955083207750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fda93da9adf53cbc54b239d12e680b9a8c8d61483d2731c8949b596777f719
Date: Mon, 16 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734387953

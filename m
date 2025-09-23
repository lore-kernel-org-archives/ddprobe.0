Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE45224F6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758623994; cv=none; b=AsIlcE5Hk0Wlo1Wuytbx8sTpjDC4YAN+VXwYs8hmrhsbek22uqGBFSMJIdF+Q+8Y279TkAmBj2eiqxU1BETLOHvNGq3V76KYTRjNI7u3t/dMeittBPmLjOJlgdZ28CiF9FqwAl07ycweX/NHHtKUA0t5uxjUOgIKbRXiYf338Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758623994; c=relaxed/simple;
	bh=DhXbws1a8EOlxWmdL9aHd4EONmgWLvm2RJ7IQu4kDkU=;
	h=To:Subject:From:Message-Id:Date; b=g/EZM6kwT+BZOh93Ji8OzZUyPXi5zh9PfK4k2OcUARSBjIkkqsoy3a7d0GH6HWeqSWZ4yiuz7bINtwmP9q0Kq7P8mBDoe0iky/W3aNlFD3Kx1fU9OZYHxd0kQ6dFrwaDSUgoekGl1gAxXhOvGaJ8eg3KggOk/cC5vEkPEMrEnfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoiQPKyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoiQPKyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A845EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758623993;
	bh=DhXbws1a8EOlxWmdL9aHd4EONmgWLvm2RJ7IQu4kDkU=;
	h=To:Subject:From:Date:From;
	b=CoiQPKyO3P79Uu97DvCt/aS6Bdvoyd8diFibXMDx4XzlI1oviSzbti55wN9XYhSVu
	 MAQc0S7d9bNPphpzRXcSQLhBxyYMu4RDWu3NcvIYNhIUfy5iEJaA/Ji8p4OPJPeH1W
	 53bve1j6B+rWHoDaoXN7sNhsZgtPOQ8KZ1grl6oaY1Ww5K285+8g9ePfGS/MiIkfri
	 0LilltbGEp+4hD6kwv2/5VszUwgAO9bf7ye7i94E+x57qovROVBZbsOAi3/gtzzCON
	 ebK2Zd/X8COmZ1p1cVBr0Uj/e/lTBKmPhCHyn4++rTHwdvuF6auKroYZR6oxmF1jSm
	 OJLZs8RfdaSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9921BCAC5B6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862399361.5427.6819243499099077631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cac89011e3514b341710136c50b395f2980c8fdd0b824487e0e30fa7461159
Date: Tue, 23 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758623993

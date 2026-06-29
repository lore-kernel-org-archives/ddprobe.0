Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD663B6362
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782747514; cv=none; b=FdcJLb0D5YFdi1I8RSmchXwaNWh96J/nrgBCVqrYo75eht4+CdUTzppSb3GnZ6WmRlRjHriccYqDuwGA13TG8TNVvEuEbdayIAyfJilNyBL7Iiby3XvWxmpoIMqtaFCNth3IKRkJndYbZ1o3NIb6Ahdq11IAxCBfPGcIiXCGcnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782747514; c=relaxed/simple;
	bh=j1/8pBkH+v+3XNqYm5L1in6fm4DypGlPTi1neAR+leU=;
	h=To:Subject:From:Message-Id:Date; b=ET0W2zEeAJYrUc36h9BQ4sXUkdQ7oXqlJylh4CYT+z3WkdoEmvGWS8mqqMo4aiOdGtHgyTiAqcnDwt8f14bsnHDO3nSs4CmY4bj+n2kJFHtRKgqVgQiNa7DvT2Z2YwXPnIy+W+y0Uu3/Ng4u5GYlE9VQbgz0LqcnGR8AetIxKf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewtu6R4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewtu6R4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4307C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782747513;
	bh=j1/8pBkH+v+3XNqYm5L1in6fm4DypGlPTi1neAR+leU=;
	h=To:Subject:From:Date:From;
	b=ewtu6R4qSS2g4krtmASV5LQ1CKIhzLOMmLJw+A8NGjdtNeJECw6hpts7PDX9lGTTb
	 wECpHHaaqYm8fTTmdm4RwlIm6MWo/LOj5MfFMggwdZlxAtic8fjpb6j6pgB1Jc8iQT
	 wRU9wY0ryh5DojpMRB7EfUmeRXqxdAVmWScC9rE/lMzKm2F2yoaOcy//euCuuWK1D4
	 4HNTvp1LJezy0SjL3EICLsA+K6wvBR7X2LgltCFAPmWtRYpqg/5CjZU4McJVdisTaa
	 56TbGh6/+3mE+nx4Rf5U2TrxeVpbTYBju42k9kGUSNNAgOCmiG1TrFpGJCAHaqmS3+
	 3CQFSm4x6cdhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA897C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274751368.30683.15035181589021982955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f2a5780a1fa72a83f93bedb3661c434c156150aeab39aa8f819aaf002e094d
Date: Mon, 29 Jun 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782747513

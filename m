Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340017552
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717547183; cv=none; b=m/A/TqMEk5Ab9A8FI9nWJzAzKErt0iiO+w80I8rHoEmYSyTyPI22S3kY7mMs0Pc9c/dfQbKUB2GPHA7eZ0iiHsrcDezBlGLL9/vLD6Z6GIYfhQKad4RZAf8zTSsVO7QGcXVBbXqrBDTwxZDMKrKZt3zumJTstU6Zol/ezwdo/Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717547183; c=relaxed/simple;
	bh=uaCx8y5iTFPQ80ODOxUqdqBpeW3RzAdfEY5ok5YHXMw=;
	h=To:Subject:From:Message-Id:Date; b=Vg/umfrCSHznUZhnzx5eZ6L0ICwyBA3D/H0jHQ5O8LNEVS/Cb/KWIw5roUPm8pgzISieLXuWqfQOj9MSuu2Jy1LFYVZ8siaO5sF0J57kXix3/U3gzYfoYFiFo+o/mtZKETRehkUuXQBDxGgRTvDLAu52pVORatFC3/P1M6cw/wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V690vG0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V690vG0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD466C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717547182;
	bh=uaCx8y5iTFPQ80ODOxUqdqBpeW3RzAdfEY5ok5YHXMw=;
	h=To:Subject:From:Date:From;
	b=V690vG0HIRO80JThVHtg/FKhRB4I79E5sAY+79C80YenhDVqeOAlx3heDOsUr0D7z
	 alkiRDfba+p2aEAMrkvIRlsWG750AdzOzdeqclSouCY/6DPzK/QNMPhEpcEhd+owvE
	 Tw5W7RYp826TMmBnCf3qNCRCnPAbQf8nZuayTlaXUZPhBycXxY3lsTK/mvmyto44so
	 JSy+cUAGq1z/U5ZQxlOOIWvp26T8rp8JbA0i+piSB5U95F1+zsJj3rrBrvjav+a1DI
	 WZBy7pM73ZFK87MBZbB8w4xYPcRnsRRA68iD2J46aMdIMJiKfuzRuIIN8hJTA6hB+r
	 Tbt+2BlaDM1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEECC25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754718282.21167.10245875905104870978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97995ed39f38ce46a6599d425b2ca0229e83f5cc37313bd8bc61dda7ff31203
Date: Wed, 05 Jun 2024 00:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717547182

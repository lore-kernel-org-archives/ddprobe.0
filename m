Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0D42D3231
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766836434; cv=none; b=Yi8irNfNDgOOt+gr5gudyMnobTCRGgXNuyYJAQvJdKveRTVPFV1+MztqnlCK5P2cJITEe95j8R676NxYrQHio2yUY2kxAP7DYeUCqZuhPwPyEPPjoO4RElEum7FCXCVza4t4UXD4gghj+VGVzpNo8PGUa5xGR0Cz0SXGqdK13IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766836434; c=relaxed/simple;
	bh=MX3/480yfvLN80kL+eZvy0XJpIBOF0C4H3WaD8FIHF0=;
	h=To:Subject:From:Message-Id:Date; b=jr6QGQ9yBd2UVxQhYhAtm1JnowjpEbJXIPDhHx17vZ+oGZTKhtid5hwSCyskK01l8m7qbxQ1ZLs4K/T3ARUCj6FfeL+8k6CyTQnELO5YgYoUNoqUwvwEYchNTTdLv1KZEcLyHSIlc34EXlYzAxAGzsWRsesitp8VIoGCPf2ILw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPashztv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPashztv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CD2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766836433;
	bh=MX3/480yfvLN80kL+eZvy0XJpIBOF0C4H3WaD8FIHF0=;
	h=To:Subject:From:Date:From;
	b=tPashztvs2lxdB6dkZEQY0DA+Lk1WdBTCykPQG1Ng+eoCROEJpwNd5mwjpvRsETmB
	 1pRgA2cE+Ur33aUchfPAXOYJNTT+M0ReFIMDipVclRWbB31zz3uGWh51EZ/vGS1iTf
	 KL6FwJ0z5zwxkPfrJwGiB4kT3q+2uETjeebct3K+6m8EEI7E+JDgusX+DJLeLo3U30
	 cV2ogVMJXriPAAEGfrL3Oruk2BUQwRITLJ5wGxH19gICIRS5ChbpiBRopIs6u32J5y
	 28aXWGaUONsemPs99GC0k7/1A0uu+IghKljF3fjfScVPHFuDz/Xet09Zs3/CMKRADs
	 sRrx1PPXx+FXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20BEE92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683643361.4972.12095823273222190566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f48e08857bbbcff7a0d847cf0417fd5e5f8fbaf654458d7011bbb807597351
Date: Sat, 27 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766836433

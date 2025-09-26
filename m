Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926E18C011
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758850195; cv=none; b=NssWwuRcJcOCNgfa1DK5zzuDUYLhKja/J+aqSJqtfqzQ5sxOUMK/3hPebW2+LpCcrxAkbIemWthJ4Ii2GXjMn7bgL8FwhbXb0UYPcB7Ws04OMLMalmKGTPIqOXFwmN/4f9d5QSnZqA9GaqAb3PqHks4mlSpmaemdEelhBbh8Jpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758850195; c=relaxed/simple;
	bh=tpEqjfqeIsYj0sXaU8uBF0czKMz1E3qhmDt36hFxSmE=;
	h=To:Subject:From:Message-Id:Date; b=ONRY7GM9d6C78P0PJyfrHdqR+//sFyRvMCnG+Suqdf3c335wqq5wM0rXJ6/ex7d9YHUguemD/5VdxgxJRHT3dPD8YqCM55e8gocrcNgVbscPxVEzPwDxbwyet6keihOVQTNyhjOrdIIY7gOqRW2U86ARhN249qVM7+mm+271fGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnuJlsV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnuJlsV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB48DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758850193;
	bh=tpEqjfqeIsYj0sXaU8uBF0czKMz1E3qhmDt36hFxSmE=;
	h=To:Subject:From:Date:From;
	b=YnuJlsV9xBdiGGvvYvY7aD1rDpcP72ifoemmeg+ut976fZU6G2t4rnHLpbQoHd/Vy
	 TsDxPD+5hJ7N9JgUDS4YRhi8HgwJo5yz9gmCMfr7US3A0JJ+0EsE/9jw6kpGwHPz3e
	 iWHRZ1EyLH58F4j9077jA9v2Z2Ps4nppi/lpevfJ4ZRsNh8rjIPfSzHPg/Clcsz8eS
	 Une84Bk75AtCvCc15R8dYdLiRPi5FY6zBOLf7Sn8Wlg5lzUIq3MQxAskQdouxbSZUk
	 BQjg2KWhBeInsXN1R1TLf4SBFIOBvZYadgye1oTejNoZXLdykUkKLdnxLo3NAhxJ5d
	 xsVi4YesfHCKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97898CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885019360.400.338308842557960530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88638d13c639a9fc5034d9793307cb1ed75d67523552759263ef8c1c35497224
Date: Fri, 26 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758850193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A76A231858
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764324774; cv=none; b=dd0qeiGHtOIZITdZWaDEwz3HNHaUXuTzjKPQpYrTAGKKSoCxCm+j080dmtCps7disz501PFpUoSJ02px59sGRxQ23ndCSP+qW+tY3qi1eD99tuNbNwKfAfGowXbrsBZH7jPyd3D/o+1AUDcArOrmYSAtEPCSlxRqPZ5YQ/K2EzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764324774; c=relaxed/simple;
	bh=G2ULBTc0CXJNirmBHypNfl8PsUoYA7xQ3T0CTvlAybM=;
	h=To:Subject:From:Message-Id:Date; b=Dtk2lBF9KmdoxIj5lpg+y4tajVzdC1+Rc5E8MMNE6vbNzw4lslp3HcU7TPmo0FKcKqGrhOBYYhjwW7ZprqY05f7I7m/rMITORVmtw0pmzcLA2NbFF5a/8WHzLvA3J4bdco39p+Sr3B6hwI7LQ05raQd24JcYeCqEySC6+p6v1Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBB7W6Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBB7W6Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764324773;
	bh=G2ULBTc0CXJNirmBHypNfl8PsUoYA7xQ3T0CTvlAybM=;
	h=To:Subject:From:Date:From;
	b=KBB7W6Ek5Y3o2+ODI9VbpFhGgEV7koUkb/WF6KLcFtbUYcGpfwO3KT9q8df1abCTm
	 VHN0+aQ73hnHphQcgi2oHlhN2mp/aj7u1dhGkonkynWpw8wbtx2ohiJeNzYyw4QGV/
	 6awgxBo/mftudVO3I0M9qfqW7t1cbGlw4jr042quWbVsVCRnBJfsCnTjVWMmmprueB
	 FKOfdcJ5+WwbJ+5QFuNneaXZWdn8wnbCnn3utzL0cQmwIAT4XjXKDJa8oDAMX9qEdX
	 h7yA3+/dR3T47/ByLxvI4a/6TeeV2kqZd1iEhI2RgIPSIMmhxIab/OjtefIMXI6Z+N
	 cJ49jrs5bEGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE04CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432477358.28118.5698594815369919450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2acf7dff56ad8bfdfd796686050f985ac1819bef3f4071b6822ee7e9fc1edde2
Date: Fri, 28 Nov 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764324773

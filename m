Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F6237F8C4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785809435; cv=none; b=WtVgnV01ATGuTNUd0PT43HxbtXrLFahNf/LriC9fBTONKP/hXjRlFV2rx5DNgRvvc/KzWI9MQjl9Q+gorqgAzwZxn4xLxYlhxqn/SRCyp6l7zfPwbS6eGwURtWeBN6bstcmJplDjJHiMY0mJOcyskeG6OFPU0zX/vdoLoK579BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785809435; c=relaxed/simple;
	bh=iNgRxP15ILAbWKym5TMKPsvjVgQ8yIAWRNgBFohAUJI=;
	h=To:Subject:From:Message-Id:Date; b=WW4tgNTUabFASM7gr8OOWgiKvejoSEiIW3hOzxjr7NOGmjiHwvKWw2n2bLRI55txzhBs8TitJhXU80606bbRvVdK40tFFacBx36Nd2ep5zXJfWJPj3Xs4HF+kYdKSimI3BG1+3HADL7a0w08zWSOUarVhqIuwwqrr0dr5Ez6fV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn/clMO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn/clMO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C31C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785809433;
	bh=iNgRxP15ILAbWKym5TMKPsvjVgQ8yIAWRNgBFohAUJI=;
	h=To:Subject:From:Date:From;
	b=Kn/clMO/e98QlgUb7HINKufbckrscizZvVVcbC+5HR8cHGEu40hS2Fwrp+QoLzh/Q
	 p8xJvyPMVlMgEwWLIE9qrP7u//t8MQYBTaqITaBIFgOVZdJORtq/E1bdxl4tkMWg7Y
	 iLj+YPUOBMjlXciMSX6SLGhXL1wb34Y8AeGVgVMZuz+vlTG+440h9oCj4APwQbnSgs
	 cuBb/gi3TXj8rA6vOKZKUmvfvjB/azN6n32emYjQwiFPGHcWjJsVPcGLX36ACZ3Nz7
	 aA9SkJyeipUrZDXWDD+2zDUzteRgEk981pHaHPnZC6ZPUEpQsylS3lF9z+s6posD7q
	 7l/cSJI4esknw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A13C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580943371.9254.16707469801367202497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f62d3d9faee853b69972d0134f5563a01a63b3240f93d0f24b3460e03f3f45
Date: Tue, 04 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785809433

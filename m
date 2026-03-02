Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F4B4A33
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772418294; cv=none; b=rm3XR5iUKWvgiiAbxaiSgak0135pSRaG4lMSdrfkh1/rNTu5e4eYsC72cD3ywpwRwSD3YEVYrfLJciIdpV5VZ9Zj7kZxMJf1E6U06XcuolKHRtJIDJZ02j53WadM3pyBBHlAbGF++j9n7bajbAygmwktj/RrSv/yZUgt1CpmFqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772418294; c=relaxed/simple;
	bh=BwRQBnizOjpp0utN3f0SNCBFDq/sxKu6/Tu8t99dNGc=;
	h=To:Subject:From:Message-Id:Date; b=ONvPIQ0ahpnF+Ycu3uUCi5RALQZHPgQw4ndYcds12OePqDezUepFNbAP4UFdooaLfO5qjHGGcPQp3bbPYFzGJzm5MePgsJ6g9gQm2NdepRpG0RJrroYxu955JPV01vGNnsARD+T4KDhCeqBTSIU+Fe7nEwmVQC/mB/jGtVON+wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE1fPhMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE1fPhMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D016FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772418293;
	bh=BwRQBnizOjpp0utN3f0SNCBFDq/sxKu6/Tu8t99dNGc=;
	h=To:Subject:From:Date:From;
	b=AE1fPhMBc9NRV+DsIHADO38BZsHuDPYCwGoWngA8cPcsPtSnLbKmeOU9sUFbJj1dY
	 Jc9cVMUb/wOwO0osyIZJfy3B/+NKeKofABNdJ/h+ANtoeQTn6wQeLWXGq0RbD+fZGa
	 hJqlHznd8f0KjGhRhRRfic6utHQErcF96VUdvN/SleoePOi1cvnfHv73LpML9Gfxxz
	 g2k3UCTiahnGrhI5Q0e1YTf9wu90Y8QZFfrzryuTweX3q94T2LdWjmGgxdgni5Vrzc
	 ggmo7A3Q4CwP9Oj20f2ZQZGkye5OQ1TBsOKXBOjllUXd7USfmYAfFQrxikL1IUiTmV
	 9herCmO4v2Jdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6D0D58E47
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241829371.30368.15845393873856105133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351f14ac417d0cfff8f5daef92f2a2b1d5c2ba20a80e8808b1aa808c23ab5c4e
Date: Mon, 02 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772418293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EDC17A30A
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790899834; cv=none; b=EFIpgbxxb4voYacP8NSFqRwf0gnzHGmWccSpSIXlBYSFCfRrnFY5om5zQumxhijN5AcLaBLORrcWir1IVTMSHOIpgND7WNcLaaydSKzrtqjVq/XK5V1P+HEPKK4G7Un/3pxRrzSeFEew2Q+hOb3LAnObxZcbucMsMO24LH3sSAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790899834; c=relaxed/simple;
	bh=aeaUhe0Ei/UzweGjYT2t7YHw4fngGftjl7k2Hzucg0I=;
	h=To:Subject:From:Message-Id:Date; b=uLOaqmEqKLvQVdBXPYZJOz8DuPzWJNL5iToy8ero0KUbQOX7DHB4h1Mwl5Trj+58fUEw4fDv5SlXagjD5CCD5OJxR+ELsZFja3YSMQhOVyiGGKL7B6NgqdxvAuQI5AbL1UBSgZ/abPYg1fZYAWm8QrLKZgX7oMzMIPO+EnNAP1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POO3MVLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POO3MVLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2275C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790899833;
	bh=aeaUhe0Ei/UzweGjYT2t7YHw4fngGftjl7k2Hzucg0I=;
	h=To:Subject:From:Date:From;
	b=POO3MVLIbtWvXngGl+Wm7wM+cckdav2BCEMWX1/tOfPQBIeW82VOdNTdQCobZI7Ed
	 XduKJ94/WEiKvE5aT8XCX1JCdUC9kh33NpRWsNA6uhmax/gBs7PdhdtPzoyY2sEvsM
	 uCp5Y3rynK5bgdne0+uHL7DnKnHEYZ49BjTHEjgrzJLttLvN4s9ncrnqRMJC6cYrI1
	 jnM0/plVGF57S4A9NX0Pjjm8eXN35oTtl4WkGTg8JgnJu7DjXpmiyX6WAc3gZJwhN2
	 KkmR4JpQ1qfjT0kpZ+G75VEJrkgQRpaDZU0ZJHpf7L+v4eIybgUMAj8w8wNynokceQ
	 dESzkwh4QVUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB03CA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089983368.2960.11925028847599165752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482593596d8e2c14ada7827ea64129d8da646acd79266b08ee74e3917c1fd87f
Date: Fri, 02 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790899833

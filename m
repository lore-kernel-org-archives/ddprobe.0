Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5406E3A7F69
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780499074; cv=none; b=g9rgt2xzqkplzml66peb8F97OPjW+FuE1VZlKFz+yjGv4vWv7X772J4a+UIsoJ0SSxOVOXlLvnRq7zpX5RySUKpoclAVZjYJFwo+ctO59A8+ma6T2oMVOV3WgsrLJxbTqTxKkiX2RLpY1QOCb/4+1AQvf+ky8zYhDGrRpolllWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780499074; c=relaxed/simple;
	bh=GwC2Cwja5E9PG7fjw6qFWncWJdYiTynCXjSADa3HpQE=;
	h=To:Subject:From:Message-Id:Date; b=pYMqdSPUYp9AIGuUU7cPyH2INapr+NYaeSF79K2G310/eNQLQvhz7HVzuGxn18WOS74fDFQFz6IZH8KGQEwJgF6dpCbTznt9ZwtNVSbCQ1CjQhGwMg2atdB85SzTdUXpPWTJ69ToX49tpsbiOppoP5QuBXeUlDjvxZ4QEuCZCrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhsYQo8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhsYQo8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CB7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780499073;
	bh=GwC2Cwja5E9PG7fjw6qFWncWJdYiTynCXjSADa3HpQE=;
	h=To:Subject:From:Date:From;
	b=jhsYQo8ij+304uGD4+vXh2FsJ66+EOMUGTv1LGCVAoCN83JDTR30vit9x4Eyt7a4u
	 mFYMsm4YyfWs6QrJmnwhij2EEuMWrAxL0I7g2GVS4POnHoeEjm9BjNmO5+kZn3Ygu7
	 8me61Zp8UmMqwlmTwcY73TQz7wu7LnUVGVKWEDWfmO71qK1rCfCbezS8MPkqVMtOVJ
	 MBQpF4AjNeExp6Y7Ass5AollJBRtzHjIo/7+i5FgtgdWpW1TScQrbv8Sf0kZCV2Z6W
	 fHOhng9EvcXaKT+Oqw05RRA8JecmIlp9P4/ECJJ4r/Nz4h8qrCuwLNDt7ttJfQXMiu
	 Un1k2XZQvX28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDAFCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049907369.21316.12257871827177378904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b7ea5b9e48893e8e3aeed1b5517afc04dbe3a4b653859142362efcc5a4d757
Date: Wed, 03 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780499073

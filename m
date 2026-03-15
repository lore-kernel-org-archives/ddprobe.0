Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64C81E8823
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773582294; cv=none; b=NfLgb6kH1t9s8zFPHPNIzBb2RZ+HcEy+7ZqjEGTRqYyLIAhp2XZTLoj65nVDoHUw4FdMCzsQav8BtkiC8OzgFQIalLOdxC4htkBvfTk+y6cVgmoFiTOQIxs4aXcxbnLncyPOf59ZMIBRsZ/5gxCDRu+cqwdOuEymHS/2xD1YRkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773582294; c=relaxed/simple;
	bh=McGPtEY+ELaHddCKmYQsHtjZKx0GCrFD+dRgof+zhUU=;
	h=To:Subject:From:Message-Id:Date; b=HqAr7q8G2Qw3cHrZVEewIyJDCpHpffDVi6N7o8I6REUjxNestK6+EvDuedtoy+KNrCO5cOOM8VAr1pIkGCcVC+H2f2voVRNqLGJRpqcmuFGt9VYrypVQoDwZ/b7ZMONxWj2rnylanM3LGO1YFxxomzqsjCqQx0E8JmaHm6ojXJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvyYMIzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvyYMIzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA55C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773582293;
	bh=McGPtEY+ELaHddCKmYQsHtjZKx0GCrFD+dRgof+zhUU=;
	h=To:Subject:From:Date:From;
	b=WvyYMIzdSE+0Ffa7Qmh/A6JIpob1BH425zjPMEnGe5YprOPeEk1E5dbOmuyqiRLkk
	 7PLbpHxnexR7F097qumtYfbmiMqL7prI65PR3mFmZrQb0XjD1vkEOOBETDouzbnMva
	 8XiUquptYHFQrY13J9li6NeOzJ/xNnz3LqA+QVF2vq5NkjefhkL4+0xb6x128FdtFW
	 KcUvJuULg1JOTz5kwX8yyLK3BbM/7gM+yWbxaRmrB35Z/75E6TBO/0/9m4Htb9U/SK
	 yrFkk5+uM2/3TiLmf2WPO50e6tTNxqk+BhNaB+1Dd2J1J5XsD/j2KFSLRAuBT5B+t3
	 Z/+tR7uOFxXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018BF30264
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358229358.6673.16404589957323970310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8b2ec7c6e60d502ea2374485ecf965d397e43ff55eddf67e86f7530b5bb253
Date: Sun, 15 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773582293

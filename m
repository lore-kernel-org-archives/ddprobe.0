Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D218AFC1D
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756212593; cv=none; b=DtJmEWiV1Z0juA61lOYovZs9Y0Az/MeogNWbsYz0wysS7xsA0avmtt3ZnWgrU3Krrjabxzxcxuz5io0z9WNhnlMBkT5WnykDvfnN4vf2RmviR/tC548SC2Dx9ThrZclyPIatHNKz7rRrGjxpx+LB8ZlKP/nYi+SZ1yUTSIFaBOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756212593; c=relaxed/simple;
	bh=oBP3nR6Xb+z6zDMVxi4IqD8Z7kuyMZijv16zfYPcJXQ=;
	h=To:Subject:From:Message-Id:Date; b=Kg1FlIxXXRjpoh5OjjzzLn/QckebtOocSRlb5kJNgmz3uCI5qzhqP1qCa1V/rvBmH2z1raL2uHLJBiKSbqtxUBdlcUekv9CjDudGtPBkzn0Ra2AV9MraAiusPRrmJSO9C4qapHlZkP+Chn5TE8qIaIShsIsHGWEz145QXNxKXdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX/mmfQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX/mmfQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D2C116B1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756212593;
	bh=oBP3nR6Xb+z6zDMVxi4IqD8Z7kuyMZijv16zfYPcJXQ=;
	h=To:Subject:From:Date:From;
	b=QX/mmfQOOQymO19mEXGH02UTK2uLMsN+/34V0SHghXpc25Er7chF0ZjcyzPNnfaM7
	 xQfk1xPVv6B5AwB+YNogGP/ACC4I/W+tVawDNsop05dj8qSRbre0Jqvt6mjaNkNEEt
	 p2RVFyKNPKoGR0qEHURAMZIIvwb3GSYMdxvxYXt4Ced0qpuyLGQewhJRv//raSH0sZ
	 oldUYmYb+Ft/lAwlvlt29mblB38coyE762KQIeDsN62xNnNrhFweoTxpxk3m+5qVc9
	 nmap0DECGqhUKXlqPr6Bom14EJaKNIyKmJl/A+YuBdM/Zex2NJD4tirnbBSos0YxYS
	 wqbbMc+y90aMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF91CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621259357.27532.16858015644925114025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3befa003aed5e658a522bb6e7508458b1fe83d3fab86e286cc8937f9d0459d
Date: Tue, 26 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756212593

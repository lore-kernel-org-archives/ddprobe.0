Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C81A275
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749190794; cv=none; b=ToUnY+cpOv6f+9Z/xQSm2aZWvUO0qwRMyCiODOZf4T3iGrLK1IB0CQ0c48EQWPqjdNVQ6YKng85TgVjlRkDh9f7xoRUmpmwESADMwjDWhWb9OHi+Vi/5fCRotHVoor4JDHVrA3zBshdQ3FEOGW6rQ5k7HXOhUkEy+gja4HcMRFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749190794; c=relaxed/simple;
	bh=8P7cYKl4O0/NZcnllmx3MZONbxcJOFc27NhHJBYAQOQ=;
	h=To:Subject:From:Message-Id:Date; b=R6DpK4r6NcfSbAJJrWMwGN5iKWdvftgu7OTXQ+L0c+la2L2/pw6a9b5BPoTaM6CtVSxOtpw5o2FoCxgiJzNVNsvD7hazQZa5+OerGGvAIcfak8WQStuTcbnJrvSbPL0Aus6DPTKQ+zPr1nNiqMYV6Nxsbw1lxwht3F/WsU7OR4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOzoTJb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOzoTJb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C7FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749190793;
	bh=8P7cYKl4O0/NZcnllmx3MZONbxcJOFc27NhHJBYAQOQ=;
	h=To:Subject:From:Date:From;
	b=XOzoTJb8zqnkKJgQVQJAuQ7Ms5KxUBA6jRn3NX2Qi795HJmrRRFTRVCBmrHJi/KAo
	 sMlMM8ROAdQZ/E1SNIMCZS7DtVJmDp41iPEqOGFPm6tG5DAlm7tp60nSwHllo8/NqM
	 fp7RPgW2NqthyJNwXeqxt23Cp0sbqVLDbVs4tMqo5UUQGuaux8EqaYtfd1R7gVmNsE
	 Z25sSyrRDuDvlP1RF8pT5sGMdV/F8Q0J9eubWpDcPaqdujiB2ROTDRLBNJMFvL5++I
	 Ife7DAQ6SdFv+rmFSrX/AGmwPrPm85FrwMQdagkzN+yLOCZgWkBC2OKP5X2s3NuoWs
	 zE6eudhDBG53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9445CC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919079358.9107.10001261533244331411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b724793502af95baa36ee9c38d6267d2c0b9f75f1629b44b4b4f1b63a74a95a4
Date: Fri, 06 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749190793

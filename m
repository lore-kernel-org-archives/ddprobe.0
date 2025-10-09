Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2281D221F17
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760024994; cv=none; b=ditSpOnHeIWKzhXIB0OK7/LoGkHQyQnZvxbj7fZsmABLvX3295C15KYm/7uZ6Jk8TvQq7SzpPHmULoQWRBRl5gQ3FQvRRSYtPLiGQm00cxKbDe0eRll43hHwYDg7SGErBgliXsFT1UuRNtIrvGifeZBATUY7SBVIbIpuTuk4chk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760024994; c=relaxed/simple;
	bh=Yakx/TI2lii4Y9gFfAOxS1aBIS+A/C0YzD0ip93tMfw=;
	h=To:Subject:From:Message-Id:Date; b=lC2ESKEm57dPM6plfBRNDPQG1Ja6sq/GEjU6SF3aXtaVtjTMPdKM6d22weKos3t2BgS79lZoyr7I3YB4BQveVh4URQS2zTBDuZXNMmDmGz9geZRMB58NbY/ZoucoMBaysN1kP0UiOHqGGrKp9FnCLRHM3PeZUVSCNG84v8t6QlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC0cpsU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC0cpsU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4883C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760024993;
	bh=Yakx/TI2lii4Y9gFfAOxS1aBIS+A/C0YzD0ip93tMfw=;
	h=To:Subject:From:Date:From;
	b=eC0cpsU4Lo7EgusPiIYP/3VQ9F2ViGoo0IrfPxFEpwHV9BsodmpVXwXwVHIAYTJJ7
	 saxSGFL73azoDtsT/Zc1XIxhzIdgURXnZFxRx7yhIu1OdWDpwzfxLmcSldbDvkfwtq
	 khP44tRzAFm8/avXJNFI3xOY+IFxW3TYJS3aFO0zgn8pQZlOZ44UGe3ldBRxRAZKvV
	 gwUU38pwrVmgbHLS3AUOMO+AQMI30QZLOuUXOb++GqARfrPuFSsUPiEaPfMXNlZN6r
	 FuioGBtkgWdFfJS6RzvqmnsAfJ/sKd2kxCUpDlPdUEbnJ7lpFi8kub6+avwKxWBNR8
	 7VrYjtI0RIZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DFCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002499359.27892.14765953621230304756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069e4b1a32452b9906c18c5c0ba003e97bcf22662e97811b7dc650390a0055e4
Date: Thu, 09 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760024993

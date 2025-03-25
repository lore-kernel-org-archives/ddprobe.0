Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA841F17E9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742935194; cv=none; b=FQkhGrr1OyM1wYDmpO5uR48P5DovqIwSWlpjU8KvVVROZPwyoXY+1GmDm0o03vDaKhs3uX8XlDgZvkGGfP2Z6EnlyZz+4eoBPRPpDZ4vPoHJouDBx5BBGspNvlbQRrciOL9pAJlDDvf+/+pfeOgzWYNpD5U1fW5R7MilsHHtsf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742935194; c=relaxed/simple;
	bh=Z8iFyCAe6BtKFDZxNfAGQWBCMs/N1eblqTSTS0iSoEc=;
	h=To:Subject:From:Message-Id:Date; b=gKIu2oTdm+n5O40QN4gOLzkVsVQd00CchajbMyOOcELwaTatJQGyYpuo1QZKr+B+vSMtHL68VKONBnfaqAPNgf/IDUtziTzbS0ayN41C6EdZe05pO7EjPgEZKo8VSO8Jkpm2Hi4KNpyAOiV4FiMzCmMRQLyveAhFR3QKyWPwUxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmhN209x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmhN209x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8193C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742935193;
	bh=Z8iFyCAe6BtKFDZxNfAGQWBCMs/N1eblqTSTS0iSoEc=;
	h=To:Subject:From:Date:From;
	b=WmhN209xNv7CPoHQyn3ou34mGySbFiFkY4v2GGiLBlfpi8OYMiRJyXdbZfOcs28Bh
	 RLhfE4a39bEPElA2RYgl5nmI0hFybsDqAnOSZuBYq0PR7j8euTb+fpcc9ynspF5U+7
	 Daq9ETblR7O6ZPGOx95Pek6nxKiVFWbORgiEpOo06YafbkGhuqvAT37MgbXCd4aWOB
	 0Rel5406FDNoSntpzpO0hgatj3MAASRMcSVZGXBgtQmt3CGcM5oqz667TjbIlP+zec
	 AZhV7XqXlW94wNVzCTslfvpm/ZIotisqo+m7VoBGtkzg+Z2GfjNNuADDC6HoiPcqmr
	 af+ffxJof8G9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2B2C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293519362.21007.17549189605099022844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c795655b64d01bcac0b0aeac107926f63ba7fa01c8826151b30afbb63f21294c
Date: Tue, 25 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742935193

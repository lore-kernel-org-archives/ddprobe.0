Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F61739F172
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779430354; cv=none; b=gosseg9FdJYHb6BA00ecRZcETNVUbrRndxipgAXXobVMto6icqq4gbD7t2b/LD/hhiRDxXIUMSv90cvB6WytCnmtEissat8OsM4/VHq3/HFJ0WLFp+oU8kkKOoEG22C2RM7DLQnIRT/7b7mH+n5v/8WvTgLBjb1deabizKKmmqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779430354; c=relaxed/simple;
	bh=nGV6voIq6OH1ZRHyprh1eyI5siRUdyA+ihJi5Pyc0BI=;
	h=To:Subject:From:Message-Id:Date; b=KNXDY1Pyn9Glymqek/G6trVQ9WF4EqMSfuSOZ19+rPtAQs1Vd1D21kJnIoxXytGsUWy5EwDZ9zkHCXvm/pTNOL1csyyP/VeaJ1wdXCIc4iu8wDQJDQMqx4xlLjcdGosQppcmjh/HSALm6C9OD6298uOrguwXLfj49r1V5m/hXJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9JgQg4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9JgQg4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19B0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779430353;
	bh=nGV6voIq6OH1ZRHyprh1eyI5siRUdyA+ihJi5Pyc0BI=;
	h=To:Subject:From:Date:From;
	b=M9JgQg4RZzkMumMCZX6V2ePz7dFfgddvvlbMRIJuWvZ8DbsVrXyHtPqgoMW4+xSOE
	 0e3GFAdSDuC1vPId919/NIOg1WYnKdeNvaR+UsceXwyhbjTqfgW0gVTk/80OrL2UtQ
	 BLJfSZHkGkKMBHSZs3MPDtwjyZL5hrj0vaUzy59iIgYDj/qHA0F0wY4ZCynyZwCgl1
	 gtrEiyeBFm4Vdi4ShzEBBI+3mAn2xi+qEKtrWMi4Lb3gsI48m6SHGrMYiZn4BaavOR
	 Cd2IbZmONxMhKRdYFh4xlXhMLzeWBozJ0YkuGXhvv9Do0RMIufas1VuOkCrAkAezaV
	 Nmgkbr2/Kzlqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E47CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943035368.24099.6430414940946025765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c79f263e3bbebddde01054a8ce9c6f710deff0d9c5e6cfe6351e262c588ca2
Date: Fri, 22 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779430353

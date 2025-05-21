Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314D2482EB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747796994; cv=none; b=JOvvXiyshOl9Che9ZalnUKxcbN//CpCmUCaO30v9MFnjM9hPtfxdXIrV3KLu9WMVCROso7dYnfevaW3Wrr/Qnv6ozV6moy+18Ox/qq+NUr9B2EuFhRrH3r3ujeIjKrRPUZDeRhaNMSKV/jdd2MQuxttflokxcMusHOd5liGV1cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747796994; c=relaxed/simple;
	bh=4pRG7wzJtCkGssvEn7mbrqtRuidfk22kKaBq6NuvRAA=;
	h=To:Subject:From:Message-Id:Date; b=PfDhCH6KxqGOzP97ncDkTJow7l6vL7R3AeqEQtJlPdbjBFdbXA3RKdLMPwG045dH56cYFf79/Z8ETypEIfvc6ow1Of6dBJ7l86JGRVwRWxYrjG/I3vOhZ+YZ3skAH6VlPV1uS9nbSOWCXDCK91ryDI/RlaWovlocDBSivHMuCbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPyDBOGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPyDBOGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43ADC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747796993;
	bh=4pRG7wzJtCkGssvEn7mbrqtRuidfk22kKaBq6NuvRAA=;
	h=To:Subject:From:Date:From;
	b=vPyDBOGEuJ84nUGx2HOQv8egEW5RQakTsjFRMmJRI8DAXIR3dc3O13fQ3yey00bKD
	 QnqHkBXYW4FBbuICLAWY992RZ7u24prNLnxhxTf9oZPdSLbLzES2uq3Jmx5eqTP1md
	 aq9xJ4peG/aLEc4czVlZ0sr2W2+ZFmXRoz42pRCfvydEv5vI18G2QBZchBUDzw8W0r
	 duOVswKsOaoexpvnfY2p5EsTbD1PvITu1Hfdh3hsWbYbJ9wYNbY6Ve0Yab6kusntvo
	 ROwpskHSzOAiALoW43QNo4INelzAYXRnpAc2yjJ9NXn8G96D32jXETmrYIOSZJ8mxq
	 4VfBAZKE/GsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94846C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779699357.22875.18375235462045152411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d12230fd891d42db7b92df00ca6258593711c0db1930c296d790c8423c81b9c
Date: Wed, 21 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747796993

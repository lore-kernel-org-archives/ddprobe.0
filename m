Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8DE22307
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707051497; cv=none; b=EebZz+zmbjqU/Szc/+rW7WwpMOfw2cSiZL6SRU6jqJLOvwri6QKs/T68NnUpPmp689f/TIA596seg+DfV8mZRI/GCJi/271/AzT3zXleiAXI/x4XTzV2IDWdx3aEUyzaq7Mfiw8aQNTV6MFmN215UK8HyJBTqPobdWo3WSN6BE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707051497; c=relaxed/simple;
	bh=jauTPSrQVEJOcUyPNjSHGg153Hz5kAELmGNX+Ti5rsQ=;
	h=To:Subject:From:Message-Id:Date; b=VaH+DZC3aBTqbDTblZ8ETfdNsuwThpmJ8mer106cFGCmlaojz8sOvHXptRgafhnO2Jpz/Qn+u1+AODT0+PZwGBt/FTutoDSjI/4CtZuWfAwVZ8wmp2is+xKQJzrJFODv2Ug3Z6Y0eoT4vVCd7GQK1d44kNUsfR12csAXY/Z04Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TueK5mLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TueK5mLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87970C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707051496;
	bh=jauTPSrQVEJOcUyPNjSHGg153Hz5kAELmGNX+Ti5rsQ=;
	h=To:Subject:From:Date:From;
	b=TueK5mLD53wZYiqDQ3EByEPp6LdYLsIXWL0govX3zqgzK55c2aGkovTAxk6gWI1o9
	 pi7onen1FSJeUkpQdXrZYmZjR3/5ZIQMWPcpmP4C64ToN6c6csn3ImW6LtVGIBFcOr
	 oqIAy7d5E+hH+yj7RVlb9KyFiuZefWDX4GzQ7Le7/St34G5X/zEKNVtJcS0ha5J06q
	 YL79FKvJ7qK7Az5+CyJUeBz+XzFg1ehqTlia/KWPhyB/dpLXTESQu9eayqweYjBT2o
	 0hpuexFFnGIN33B1rz0wLJ0Tj8dLidQBt8xf5d0HF7HqTdjIEK7XKl3yIPGCdOsFn8
	 c9rRTYByabx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697C6C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170705149642.32000.16147371574937184117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34b5d9a8f0719f55cfa3c0c2763a51ed212d1fa4fde0d70d1912e7a9ca1d09b
Date: Sun, 04 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707051496

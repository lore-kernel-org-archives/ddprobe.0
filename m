Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD331A317D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781660794; cv=none; b=KclwDkhs38Lr+hHyKda8aMLS8uJA49Cqau/f+oSYeXx3nUSI5La1al5fxyQUlRphRjl4P7fjd8KRH4KeQWaDFeC8SyG8ojRghkO18l7CNxpnLtPZTn8yKHbJ+7hDX5PbDJu/pfBQ/uEWNE5DQ1r9uy/lq5yJHeV7iU5mS9AtTxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781660794; c=relaxed/simple;
	bh=WMycZ8HTLGyeA3qKJbKe7evmU5zBcl7Waq1CkCYX6pk=;
	h=To:Subject:From:Message-Id:Date; b=tbJ4c9q51scylQ4XpgvvD2BIWwVW2+2hdZYUI+mWlEV5h661dk7NJ/AiPMjxsXDKnifdkvgUb18CtoBV6iEPaZYSSoyhL2eWBYq207A25aqijSCr5j1p/bAs67A6XWPX2sWUSrwM8I7ek2si8QIraoJNA2sTGaDEg1BPK2CdoXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA2lPDSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA2lPDSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88D3C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781660793;
	bh=WMycZ8HTLGyeA3qKJbKe7evmU5zBcl7Waq1CkCYX6pk=;
	h=To:Subject:From:Date:From;
	b=hA2lPDSndKDncsrzoIWEYuuCYQ1E03PFe7NvCMw5IC9pVDuPlUSoAgWqZN7BKh5Sp
	 CgMqDt+mRaeiJ41DB9RkpM+VISXAE6SSGPG+33tlhjZO7MAjbq3iSBMUktgg3WDSBp
	 WsYN/f8DjTBD08cOpkfMrQ/p27F0v36G75sqT8APY3OSvqV3pnQ0TOpXhmZpkJ+4rT
	 qSxKVioUfOoWtZxcwp2uNKM6+UExeVE9dpc3PK6cxuf83wYBqJnAdzpa9U3NuARYFJ
	 SW2QYjQ2eq65uJtCkBASU+slz7b3hCdYEkTooGvMiyMQ/X3tM0oEaMSASP05ZupazC
	 649keVT1wUBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBD7CD98D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166079369.2070.2067669568979338206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16221faa9cb198af39cf02e78849444eff481f1bff960e44ff8b98e7b50dc939
Date: Wed, 17 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781660793

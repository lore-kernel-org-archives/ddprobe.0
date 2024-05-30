Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87EC947A7A
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717092263; cv=none; b=tXUMbuvHL0H1RXNR+/2YUGpg0ANUK+OZPMcMZpiuv1fwQjV7LsHqwsn0PKz1feklRoJQBPTVxu/0v0NMyBp4iCSq1TX7uxTNVty24G/upfaXrrX/XLGSvza0VEkhkUIOOlCFL5f1gi1kb4wHrRNvUUdTMdhDfbp09aQOb/Zb1Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717092263; c=relaxed/simple;
	bh=mQLMhfyrv+yPBjxySX1BS2iiCcn+iENWwNaxJdu85Cg=;
	h=To:Subject:From:Message-Id:Date; b=GdSs3qSNKUfHVftaxwhK2kwUIe4HB9/sKbCdQqGB2DfVij2WOExsAmJEPZLfbp5d77SaeRcvEH2sEXmoLEWuUPWPtDTUCQMQNuRRv5cyEdUJj00wY7X0yGZJPI/TH6Re1qWMcL4LeBsqEck+PwAbtf6t/OtvlokxWWREUwrapNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULd6EWyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULd6EWyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F282FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717092263;
	bh=mQLMhfyrv+yPBjxySX1BS2iiCcn+iENWwNaxJdu85Cg=;
	h=To:Subject:From:Date:From;
	b=ULd6EWyf32HHyxNCfzDM45f6uboaKGyIewC3Cm/gWCtXe4EFvaPB5jN33j0sLg9EB
	 glaHRf0j8U6VCYxSe/QPH/ejalEMw69kVjR4DwJ8HbvWARGjy17PE704mCksqBGph+
	 Z/5QnO688f9YK/qpW93IDJ5EIM/olxbYwCRuoFOXPRYntbmcPzdsw8NOHqjdt6LTLk
	 uN4UuV+WvUv1bF7wKPl8FVu4wll8alT6hVpgR8Jm6VN+QE7kKMWHQVm5/IkH//pqH6
	 t73t41HeZTrktfziKLnnuC2L7U8TEN5BUNMqRYCSuJ63Ur0nP+dY8vrHvKEzIno+69
	 wi250t2ouFr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF6DCC25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709226283.9301.2778666058536566171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2592bf6cfe985e2d83cd8e85c24b0b0f49b88f8f75e19483c4f82c2da82ca2a9
Date: Thu, 30 May 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717092262

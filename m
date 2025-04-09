Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAD027C160
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744225196; cv=none; b=I1bR25fwM4saj+TkZaMA2pRXqU+DadDVT/CRfWDoktr5MFVBFr759dfSEWOWUF8gVwELlkSICEc9ii8mMssUQIeJcMB+0pzff1MJw1TqzzCdQJp2mwTkFrEUbhRFFSKFlldggDfnSoErwfm8x10d7XsDbiJtl9ZJJLdYfTkPKXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744225196; c=relaxed/simple;
	bh=6txagSg1wqUdlwPuzDXEtlNc+RyRalAt3NgfGigV4ak=;
	h=To:Subject:From:Message-Id:Date; b=kepmIHa67doRsVWdMUCFP3UShrkHZ9Ufo1jPIr3T4+ZHVow96+/L4g/eRm3XFSxbSzjhnx6GOD/5Hfq+ZYwfBicthNuC2xegSq1gYrpvM1qel0hNTu4kvLpHCpCRyKwXL4vAcqvYEviv06ISiue9D5hHlVHqMo3OT6zbMfmXbXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+LdyQW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+LdyQW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D6AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744225193;
	bh=6txagSg1wqUdlwPuzDXEtlNc+RyRalAt3NgfGigV4ak=;
	h=To:Subject:From:Date:From;
	b=t+LdyQW1lY9UnKao+vqqTrKj42IZdDj9sduna+x77RLJnMAIGHJm0JePCP3oMWIy+
	 e1qUYBroOtdFDWqb5NBrDTQ+3oPq3m83vi/Oq3CI9zEhSxnpLZrIv1ZKwErjI+OQ8O
	 zcbmvXZ5seDZXU1jcgHIqnHnxqRM4vh/heXevksSZ1u8T+QXmI8XAdYOOOX3UKqKxK
	 GfbDKjvcNPRn1iqyKMqDMXPTFvqDuGUggn1PqLlsu+Equ4DNKtTDz4kxO2mbVp7vTr
	 k5KXFJacK+NuJ4q8YJP2EUu1u0qeA54B1z6lR6sEZwPXEzYvaBjX+CbDSdmJPS2uh1
	 CKQ0L4sZ3Hlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90952C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422519358.23466.994412918329057945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0400ae3d5cd1d1dd77f5abff2a51efa38e92d6dad8b5cb5ae5b3aa901c91dd10
Date: Wed, 09 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744225193

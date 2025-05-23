Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6AA13AD1C
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747960195; cv=none; b=t63G1uVlwbSh/ml8riGsvPtkuK/n4G/3X/uH/kzF9KjzJbBOUy/3K6GVMkJVuayrgVn024fR/brOVJMx93IZdZVCKLc+oB+/urATmlKOrSoU1Nl8rE1LkBNp1gK8VT2rmWfIXirawRdnolwwyYz/MPyRfWQRpwK3lapWNDQ2JCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747960195; c=relaxed/simple;
	bh=GsKL1k6Qw6HPVX/Pctib0lgQ90SNHu2zsOsjtzN4qjo=;
	h=To:Subject:From:Message-Id:Date; b=BHAtDLTNaJIoLDj0rVyB3E78BV4ots9HsFSX1KnQRdVt6K+AztuqirdkLYjTXH6rXMV8TdW8jCQFmNAf7hHugE3uk3dtbsBeqIWI1FWDVYi9I57iGtmRVqak2tOEVDigh3MXJTeJVGj4GufPz17Fg5JX4pA6L4t1RJMv6MZbct4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q29ELI1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q29ELI1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9300C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747960193;
	bh=GsKL1k6Qw6HPVX/Pctib0lgQ90SNHu2zsOsjtzN4qjo=;
	h=To:Subject:From:Date:From;
	b=Q29ELI1uQ11aCGfMi9zkAg/LlzWYpsS5WiP8bS0GXrANvLZTldjjIYPjqvj6PPHFZ
	 ThpXCtu9yYMRQ3KEwSMY+2Ll1L1MOiOl2SMTXvzpXAc3gjF/MDGEJX1SiQtWgBMX97
	 0ssw6X+OiZiywJPxS2EaBr9Wk8wWZ5sjeKeFkh/8iqm6TWJ52RiN31gpt0dpNBp7E2
	 PDNB2/6jQs5Uby/BeS+dS5f4Hi34dpaZInO+lC34jbVODlv3aLCUQmqtoveQMR1HVu
	 5VgZYNzmL6W9T3VyIrLTAbvLoOO6bNeOi1ss0E4xn4B9T841HMm7Yv+Moq82qdID0e
	 i65LmE5Zhvf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9321AC54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796019358.7234.7063241911009367227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2a804ede81cfc8dbd8aecf1d6bd4fabb7ee98dacd443ceffc72d06165ebcc0
Date: Fri, 23 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747960193

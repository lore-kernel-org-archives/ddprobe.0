Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1752F7AB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759237194; cv=none; b=Kjx6oegH5BxCj46Vh/x3nYiq9BfkfWv5u1mT9qhH2LC+i1DClp8RRiYiR29nrVxlPf9FYWJy/mHZWkeSku7fASenklJGzMehozz4fMQkSnDSP0qqtAkBn1FOG9g1tbTEjj+o5Or/Em5a1+1FOWF2vgyumQwrzIg+n5rXPxjUaQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759237194; c=relaxed/simple;
	bh=v8GQKeUZ/80KZHX/5fs85ZcbU1F2wfyx1eY5zlfeSAg=;
	h=To:Subject:From:Message-Id:Date; b=BuVTJTAq2MlxLCeiKkd2nO977RWklmr3LNoyR7rtEBVNJO8OrAvnd48kNJGds0bVcG8BSfsVNbIOZlV9Hqjl4dV1SZzU+8Wj0zaZdzflWWwsyEXWebnLv93AsrBTUEwgJGsur0B6AvfJB6Hn8vSkh+Ro16FEth1K6AQ0Bn6gf2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y138reeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y138reeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D450C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759237193;
	bh=v8GQKeUZ/80KZHX/5fs85ZcbU1F2wfyx1eY5zlfeSAg=;
	h=To:Subject:From:Date:From;
	b=Y138reeJ6sMZxDJkfSIXBs/iz06dWYWWc42v9lORfbAvNYErmzEBX109nddtsMidK
	 tVms5Wxn26+oaJ8Bl3uItd5muSd8hK41D3wAa5dCB4QVJB+p1WWfhzeMEX9wn2kHRr
	 agBVXPl2NQZHPXSfWth9d7GaJShgsGZE2MCEd14H/vIArgYogdWGLwDCaghgYpR71g
	 EevRmdqj210MyjeSRzefN6C7xXYluQ8TMivrcrgsg0FxWjgqLc39DvtjjhnIB7+o43
	 oiU8R4khYV0Q9FgMwh91klz2VEcm0cEWw2XSo5LdXC3ddnyTAGWINaEszq1cLfHODu
	 wXxXjdzSf2XiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F022CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923719357.9753.8289769181984965374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621081f73eb82012339ed636e391e707be5d0ec14e73056fabb6f4d22d1606c6
Date: Tue, 30 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759237193

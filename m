Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BC82AEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714046483; cv=none; b=Mw0r2P0HgxByfdC234Mu0rRKR8WJ8UEnv0SUHYd89sfz3t/1tcBQHhkpcEYEO1sfrnyRiVnotpLx69CKzaG7uFrancLJAOMSPbdc27daa1ow0INWMI2bY+xv7crAjXuMW4/gU/bh75770cCmWtWpUtKDKJ1ipjpZYI1FJatPkig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714046483; c=relaxed/simple;
	bh=KwcpiEH/XwDTYfzMvkHWKH5o8otH+algnJGy6khmcYM=;
	h=To:Subject:From:Message-Id:Date; b=Z982uW62qw1PszapvAKOnAlSs+bXn05ZZlerUJIz6YMr9oBfUzIbe8RFcG03yAlq1Y0JEHV8xgLWr5gyexgYWOsROe/OoKGHrEPrPrBXVMP5wiyTPrmE5ni9TsqcE+Wn7zveAXimbMDoC902Xf5LFSPxFkTLrobRoGZOi5Iq9hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK2fWObW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK2fWObW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2403C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714046482;
	bh=KwcpiEH/XwDTYfzMvkHWKH5o8otH+algnJGy6khmcYM=;
	h=To:Subject:From:Date:From;
	b=PK2fWObWdKij/IezDSWQrCoRNUsffmfzgJ1g+hRKsaSy5Tfk2YpTTbMtA1VsrYkaP
	 OCUFQp9pAVHx0j6v+0ye96v07tXWnUAU1k5fC/d3DEDizXHZkfQV0sJ70fUvAmeCp8
	 ZRznqD7SaTtHnf9Uu3827SlzMFnM7RnJZ8ycycnNAKTpsdCfQp8xHsNWX7/XXxnzze
	 PFelC6rZ8XeMRmLYrfUVI+ZZ3mda3yc1Mik9ywlXe7JfuhFpbjAMKnYQ9Y7/XjCirs
	 RVSE4PSOGidxoNDSDA0nN6hcqm7VNE7D8h4dybjIPrDhJdIy7qaWhT9ZHaY7IlFm36
	 b7hmYYM9NcCeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACD3C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404648281.13385.3423170304219707583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a80845531fe074adde0bb6637f5e604ebf3d17602c6b04f7a3791191967058
Date: Thu, 25 Apr 2024 12:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714046482

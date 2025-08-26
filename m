Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D002F83B6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756243194; cv=none; b=G3HKl4RSM01ZEjKk6S9gIIEYr+ZSkmIWm/tQIn9nQK6O0de4a/F8KKbeKxO7w6coINkMf4jQDx3zmli1IwyxjMD1uqRpPVNXiu/2GrD+1ri/BQ5JVCMBN9Dx6LncMXQI2mcYlJ4BDq/auLVhrIpd0JMifsRIfhOh9ttdgD17uPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756243194; c=relaxed/simple;
	bh=Ob/0j0tXp/G7wmLvKASJof2b/XkaSi7hI7FVyVqjkqk=;
	h=To:Subject:From:Message-Id:Date; b=meoqx1Cr6HcCUomAAEPRKOzI8mHr5jRqXZRfavo+6OeoEglzHMIkyGCFkonFq3BcaiDd9aoxfc0OOydz8UihvQtIgTkttprHw6ALL2F92afMaW2U4LuhBtrg4wjQOtIAs5BXwtsqsgorbKZ8a29bwOEFmAHV8gS8uvcfSvb7W9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBx1beaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBx1beaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A069CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756243193;
	bh=Ob/0j0tXp/G7wmLvKASJof2b/XkaSi7hI7FVyVqjkqk=;
	h=To:Subject:From:Date:From;
	b=mBx1beaOAPKFCvzAAHpPjmoH25k0gAt4dmj5RR0HMhYxK5rC2hyw9NN3q7fMRQGVI
	 7RkGuLGN1yEkBf8nsO4j/952WqArLNCctk0XJ4/bGgYLSbeAShLUcvU80oPXRUKQvB
	 r6dfIK7baJaJ5GrgeMjYjWzkYnr/iRNCnRlioO3LnAdo5DdmG7ALmnDB1mGgwxjQ9f
	 mtbUBTKkUjo8OQ2dhA4/vVSP9J/8+vtgHoFBlRmS4BU9/rtFTTrwRCcdVsmMpXtX2R
	 S1wqhf2424NLPFIzgLkgDi5wIdg2fdyQBU+tAn9qKkZE2o/OKS285uYC/742gYwy0o
	 IiuvhbGzu8iKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71DCA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624319357.4234.1609571570552838208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cc947ed29c5af1ed650cb81edf82118bbca6e211c292fc415c854f106b0be9
Date: Tue, 26 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756243193

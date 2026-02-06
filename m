Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0637C33A70D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770356634; cv=none; b=u0WTi1AgVVF7fz+DB0PAe7XLwh5u8s4ffwoXlY2NEWJn5dc8yC26GHIZZSiO57y+GkKJLSnWzyIaZ1RKZSbaze5rbvUHdcTBumACJF9e1cHGAzX5eWwRGEHRHNk9C+JJkEH9qWS4CkY3fKOFHI2m6tRd7MhhSc6qNdqEvbKhIxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770356634; c=relaxed/simple;
	bh=MTnfTl8WqVB0xRiStT2xH2N/DOUHc72NecDJvQZryn0=;
	h=To:Subject:From:Message-Id:Date; b=XrsLnU4k8qxVVEVBotTU+UOrD5Vmel50+mExEl3omarlDyKtRoFQuQ3iW4TKS0mD9rP+w3nFl3RsWnWyjQFWdXUw9tuEmshar6zyLE9p6Mf67AabDi1NnwRU94D6kEsRCwPAqOv8iR2o9YwKmyoveIQjdzC5PY02aYGJ9QS2KHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOZfBefa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOZfBefa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77BEC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770356633;
	bh=MTnfTl8WqVB0xRiStT2xH2N/DOUHc72NecDJvQZryn0=;
	h=To:Subject:From:Date:From;
	b=qOZfBefaEGG9zrgZ8CM6PvH2IUljy5tGWqcFgSb+WR9YIMi1iXOFtSEDRpacwMAJj
	 4UYhkDcmN+w96Dz8qmjWF8K9OR3IqHpE3lFu7fMRhE99mEUQB5au/xlR76ScoM2MK6
	 qsUtd55iJCPbdRJ/r/GR0JAUnPcR7rVFYYKA8pV4rwxUSNS1q29kAyj8KhY6XaSzEN
	 n7kVsFfHh8LEg8QBu/fgJXaySkc3YaEaaBOxeT3ptv5kGug9UXgpXCw0JuuLxQB0H4
	 nWiENshDP8HmiZR4BPZHdm7EEVeqjtqy8bkpcdMo3USKbDH8nu3V3jX59b9+QAMn8B
	 GPVrjYh3LZXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95014EB28CA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035663359.23515.483126403715632520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e11a9e9e47ead02abb1aadac2a155c551f79152499251f703ac0905cdd411d
Date: Fri, 06 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770356633

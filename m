Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297C1531F9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754929194; cv=none; b=kiB4ARKdP4ltpgndyJuZaH/66TduKzLSR0lJ5orbFCEm0kniWxDGv6m2wHx0+09OVAdGMQLSu6/lI+knPu7PQnQ3Ccaffw/M6kZuPixeji2WYmhi4kprqQVeWYPmJlZPRJ/cuR1Ga/PlNbqJLEp5+B42mvc8XupjSZzjqLRHOzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754929194; c=relaxed/simple;
	bh=3QtLTMDJHkEsSplY1PMjstNcw7bDZmrs8ipeddWHCc4=;
	h=To:Subject:From:Message-Id:Date; b=UzypN7tGot2vJmTa2zrCdkBISKzFfXZBFGVK9mwbC/8r72VTsCNkG8MoyBnDzaF7/SAkAeh71ZBRcZ60NnKoiHRBcWsOVaPiJuTFw/pfO6c1OKL5CfGAaWf+Lh5kfFQh89TAyOrPXmRMN8PN9zv0MBrxQsmtk7vM8uDwlSNZh1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYKifofM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYKifofM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0EFC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754929193;
	bh=3QtLTMDJHkEsSplY1PMjstNcw7bDZmrs8ipeddWHCc4=;
	h=To:Subject:From:Date:From;
	b=XYKifofMHyOcywRec51NCFBVdUuRrZVfAGMKT6e8cMokTep/v30BZHcnh4twQrgVY
	 kGzuhTX1BONhBfMeXe5wvZnOjNCeNjBaHIE/ULwYM2v4LYAmiAJmDpnhiRrg4hFj7x
	 y0w2zjwyK0pyHpkCo7CW4IdOm3MVv9FOyKd4WC8k0J6jwfS5+zTMEpeb825rIwHug/
	 NljS+v1BzEnNZKQFMXbjaamN1U+iE0e1ZyPT7KBNFWx4/vqcO529zc/aNkWYndiWhv
	 J2U/+bpr5JVu0UjDXgXf9p9b3YIu0BkzH5JSNHvqVKRNAVA8ALbb3+dn/oIRWJiulE
	 vDva6ChPyVRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073ACA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492919358.27209.12804430732136931099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8a689fdb232cac1eda0a995a1be6233dc8dbd2e9a6d3f875fd59cc7fba95f5
Date: Mon, 11 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754929193

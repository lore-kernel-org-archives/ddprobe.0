Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8974688
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716600203; cv=none; b=Wg+hWZA1y1NIuw8tMdOdWOjavUwhGCF+hXcMgjbbx3H4bCoUDvAAmnnTM9AGzCz2s5+XqdYzxFbTBIjIgmID9ov4OQ+twiwVIAu/VVBIqYiafbFCzxM62WhwRDjnv2zYCSPPDe6qn6pZ0f/yse5jS4STpjj+KIFWAihG7N9/n0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716600203; c=relaxed/simple;
	bh=JqKnhTjqXJIwC6koBFiFx/2J/IssrL+eWGVbcgU708Y=;
	h=To:Subject:From:Message-Id:Date; b=K3juk9AK1386ShSmB98bi0p25M0nh1UOpzjH5PCX6tNjO7tjIgkdK2v9RYPJ1NywJhKROlw/u6zzMu70LnCfva1vN/kSIu4exOtveUreZErpcBDPvDHFRh3cIAlnCSQztQgJqNm2i2Pl5o3G//oYp1RpHJQ9b0Bq86rg6ycp7dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLXBkLaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLXBkLaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3528C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716600202;
	bh=JqKnhTjqXJIwC6koBFiFx/2J/IssrL+eWGVbcgU708Y=;
	h=To:Subject:From:Date:From;
	b=qLXBkLaOBWp6P/00oE2T7olw2HHZHkDnxHzbFeOkNMWp8y+3MOSwzVjuJiNMA3Rge
	 kGYQKu6vARInjbexRrlCQaukr1Ij6g4+84LIiEDOfYFnbnxsO9VenbO6YbG046Hz85
	 i7Vsd9AwLU+4JuSWITLqoakHoO9OSgleMfFuu6bw+DlmmlRq9C5GwJwpWr0qG2avJ+
	 BtSsMuVj406pbuuaN/xc183qTfrMOe5uZcO6M6GrIfso02HHqlVZn9Wg+tvyPlfT3q
	 2f3kpbbR6zVGISmOszAD+MUFqTPBzqP2BkTFl9k1MBl/MGeopP87nA0aTTGf5hREya
	 BDVJUG/mr1ELQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCBDC25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660020276.8810.7951749543453138712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce28a30617b1d4a24bd14fbe487f1d10932433ef0fab9a278c48ed88eb531809
Date: Sat, 25 May 2024 01:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716600202

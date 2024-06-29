Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BB3803
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719655463; cv=none; b=YkJ24lnjeFk7h5jHdPO88/NCIwwzjQzBmGEV30TI6JT4fQ6GGAaDLcyBWTPQBUWnG8EK4XuWeCY9yTX+3COmpiCYpb6yjZOPv2HcStCxX7XlpWQ+FyhOXGTBs4LleWroHwwHWtg2SFNv94FpXlOrUc9qU7mbzRqjOLvMYfLA/9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719655463; c=relaxed/simple;
	bh=5y1uIADdc3O0JWm7WADkVcbBQXvfuCpNqKpiUozqL+E=;
	h=To:Subject:From:Message-Id:Date; b=TB/nwyFmBZ4X0c561gW73p6MomE2Oja02d2J7SDQK0SLv9UekCnoBkznX9jgByB47Twx2EsUSL5EJNONdTfVr+LRVzuMwF1ynCO2l3CzLXB64Lo8wVXdfU7UVvEq2N/WIMejG2XdfUu+O2iMQlWrE/y4ijjZwXOPDhJVF2mImhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ4zNJdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ4zNJdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8C7C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719655462;
	bh=5y1uIADdc3O0JWm7WADkVcbBQXvfuCpNqKpiUozqL+E=;
	h=To:Subject:From:Date:From;
	b=cZ4zNJdDow7tYRUGaBcUZW+nK7/4HAT5crjv4Nf1zdinyvHuy7htb1Tid0kk3EOWq
	 basq4/8HTTncGAu/tCL3Sf5x93xOLebjXhMj5NeZBg8eisja3xEGr6gGHB3L+w47Oc
	 YLX8YL5TEahZJuDpWdf7dyIdsZ9RwyLiOBJkwazAx1FNg7mEcZ9Bi0U9qZ7fyEUcTZ
	 pJqlHRstol7Kg/WLEO25zLYqK9XXK1N8keBKKsLTlhwA2BK9EPWk8QlaOonbcKwiif
	 obWyUu+QPnHdijanOQVOy0v7IpU86i4xwNU0rcPWSWKWjbw7NaUWIDRY+hqvmlPH8C
	 TQA0OLVP/u8dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92A1C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965546278.2342.8327342976564115352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13e5a83eff96030e2cd99c525d37830f0e02b967d8c9e9d5e10d1774422c0d1
Date: Sat, 29 Jun 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719655462

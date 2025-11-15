Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440552741C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763198994; cv=none; b=vAq0DfnfqR4qZfmQE5bnvnL59bpgB53xrXMdS7sH+B56FpttllICNLRtw7I9V+RLFPcWatpoQd7GX4QA56rS/Gtk6S/+iTTvfjmv2wusf6G+vMgbAy075Mrx8C51dTjnr/9C0HIcjd75tiedU8eI2yBemh63CCZHZ64J+zxPL5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763198994; c=relaxed/simple;
	bh=S8OFScGCAjODyFamI4VDb+bATT5TAxaL7tnetjI0YTM=;
	h=To:Subject:From:Message-Id:Date; b=Pr6ltv5WmN5wCgRfDKOBDhNktrmxsyI/XQ2Wok2974cLxaeEtpAmqM7MYdgfuJ4l1nqQVDv9PJqhmAhMBe5qo85V3jeMjLFjTXk7A6zktvDe+IktqImWrNs2uu7UPqqdUuVo9QWUWEaG/RbXqqjvAr283EzJtMz8SK7UqZTq4zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI/Ur4g+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI/Ur4g+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44BEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763198993;
	bh=S8OFScGCAjODyFamI4VDb+bATT5TAxaL7tnetjI0YTM=;
	h=To:Subject:From:Date:From;
	b=MI/Ur4g+V5ZK7snHnUrYlsCPq1ppDWEOsS5GeUn+8HEoC5TWFOmHPUpH6qfGZR80N
	 UpGnB2aIEbZfzV8H9pU+DKT9Ro09KEbpIxs8ls7j0N1KnZBYGPdcVSSpMkVlUS5bFN
	 e2mDwUSSw4eH4JPW+aTa85rZx4wpUqZmXlgZ84kawr0UaKq8k3rbjAF6oLHnuzsCjd
	 8SuEagiFaNXOKHCx31/R2SMQOQxij+WLisGs4LhpM1aeki88g7P0+X3w2xhtesqgnR
	 lnb9J0TWbuYA+D5Glwdvzl6A4+mX7CtanJZYbECgI/nuglHUC7PdFMlylyYmIJc9z0
	 9daz+tpFxsOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D982CEB2C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319899363.12472.614157833535698273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5537c0cadaaea6deb659a04cebb1375c95d7bab089d0ed63875e2e0232d4b9
Date: Sat, 15 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763198993

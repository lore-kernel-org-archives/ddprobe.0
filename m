Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380AA3209
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749086994; cv=none; b=mvJDtRjD6MWfr8f211hiD4qS72Ts8+1kqwZZENmHWYM2dTElIgaSACIIKSEl/Xgb5jYj/zZalyXJlD5T9vvrhtd0xN0YHUTbfxn5Z97HS9FVrnVthMc/7V8GGiRc+KJ8dGKguKUxMaIebzSFgIUJtjVzU2ENy6pky4K6QtcDBBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749086994; c=relaxed/simple;
	bh=0lVAVYaCczKdOsD7T6HOsNL2KitUHuz8Ci10RToEBQM=;
	h=To:Subject:From:Message-Id:Date; b=UnAecftVPc8W7Lsfi+r5HrXABKpwkvFJ4zyqiRP6/5ewf/tg80pbUe7dG+LtRj9YtvhmV/3gPb+jH7OYZSZTSyxOMSfC7PHlpXv2qd/v+ZgaeHsyc03Y9VYyS+ft1tm3LWHx5ndsy7ccJaDH1VrMfn9fog062z42d+doVDSFJNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI1cHDdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI1cHDdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749086993;
	bh=0lVAVYaCczKdOsD7T6HOsNL2KitUHuz8Ci10RToEBQM=;
	h=To:Subject:From:Date:From;
	b=SI1cHDdBFC5wvxb0VDmCzUuHLgOiKX5EG4Cqr6ADlaBxPzgw3TfDLhFhxhxHkJoea
	 ed0Kgih9F5TtrtobWNpXMIesEb2u51BqCvkJ7hBrS0w+TQA2nBMZ9LI6+y7LRPggDB
	 kEpE4HfgYhm06IRkHqfUGts3M7ExKUB87IAms6nzGm7D1FQlh46PFTATPnLC22QKT5
	 E9znOZdOKn5kqm8IcErD3hRwDCPooZsB+9vVGOSPMgrLEvEwGYJWlW4VfoI/5dAYp2
	 4ZWpzEZchFJzHa9id7IdPFur71OLNjNGQGvJwhkVn8oGPycKzptCfNT2sGrlvMQZ8o
	 Fpu9L3tzZVDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC20C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908699357.758.12687860466221307320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0fa7fc4afd193a6921d2ab92c5cfad13ea0bebdcfe6a875ec76b5ab9dd548b
Date: Thu, 05 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749086993

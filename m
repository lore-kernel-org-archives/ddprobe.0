Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780EC38E8A0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782976714; cv=none; b=XFAZ2xQAJRLiWkFnb2g4wMeYyeusdjmLwOfVz8d7IHB2a2OPbbp1rfqOcNSk5m/821/aW3oXksb8yOk6+lo7WwdewZjdEwoW9gkkyvt9Lka6shNbXYZwUkGgWau6i7IN8wx2I8HP6UG17+B2mZBPxmzNuOWL8HKoyyi2uqWfBRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782976714; c=relaxed/simple;
	bh=mmIF+ZM9r7bJs5+u2HdR1oXjuPqTg2AmM+AQy4l3HnE=;
	h=To:Subject:From:Message-Id:Date; b=lTO7HWVY5CCR+g/F2HONVjnv1FxGiypjZvkgLKpyqPBHkKb5JMdi9VuO5MTjuZEWi7wQBbDFjlwcwRiLbbvmm/hPJbj7AI7Lq16SI++8wAu7LGW5KEq1KoclV7sZakCZdr6rw5aCJBnv4rTEx4SzckGor/IojoPxsmXdBTKWt9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDsfDAv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDsfDAv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96A0C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782976713;
	bh=mmIF+ZM9r7bJs5+u2HdR1oXjuPqTg2AmM+AQy4l3HnE=;
	h=To:Subject:From:Date:From;
	b=NDsfDAv5naoVlnBGTugztR2TrTK9rmeSqb9W/gtAy2yJz4/1bDKBFNsSxP88u+9GC
	 ENxb5SXboSKe4ByCsAXFa/Zv+T0+96UrToo5M09CrSfu5YN5xgRnW5HXN3KNRdkB+J
	 GTh8Spe51xgTCBqia7avLTaiFjZqGvNX8vcxuMDdXPnrobsUYS2ZwPQBQAP4dbg9Zc
	 wTeOHKtKrEgHKfGnJS8Cds96VaSXCzuwLaTCyfK1sE/KKGk17pnCUAlBR2X9jh1fFZ
	 nJGRI7IG6uzg/ZzwFC/Zsqo8GIIVp6vCCAamhYJE7mZcl0A7IMPeAF4XfRaU9DKJKG
	 7ZU/PbXqsBkhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A8C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297671368.20520.9095774803950638557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3ba53735b8f6de0b8cced14f085b74942a8db846b581372c0d5cf2a5066224
Date: Thu, 02 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782976713

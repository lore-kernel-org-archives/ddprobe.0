Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B33513D893
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713975083; cv=none; b=jhtnBgr1ZeV6l44Q5cuVBOt3It6+iFXXEydlkYTqx9gR84rcqcFPN/G7k98UZI9i3b48PEUGFHPlo+boP+vlTXnzcxiyHYH+AjycbUdPCPGXi0eZ3NbDT7Xauf/9+nISrdja2J+ZUElNIbepNEtJJ4p/2ZFz056bmytW+2qmr2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713975083; c=relaxed/simple;
	bh=6i9aVTarcDk6S45OE/CEePwvK2s4Zo2jR7+t6Drb/us=;
	h=To:Subject:From:Message-Id:Date; b=Dg3F2Xj9pnxtsPFDnpx8M3w8qfsm/VYto7AbQ7V4yW8rkrITSw83FYQ3C/sX0V9mvzSIYq26cMKLpg4EAqK2YUKaVU2FL8LpzvnleeY6XTLuPsuf3bRYMZGHoyPEWqa47o/ZkNEPFyJc6qcR89b4xIsndQqmJyIVfuJTgHrxGw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Sf7tSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Sf7tSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F26C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713975082;
	bh=6i9aVTarcDk6S45OE/CEePwvK2s4Zo2jR7+t6Drb/us=;
	h=To:Subject:From:Date:From;
	b=U8Sf7tSbC4T8/ZxJHS8iWx6fMdPkTHnb3hXoMNmM3ZUHypG7lJdXCn+m+Wi5Kqx2g
	 pAOOx9vvsxcKPsWY4SQMoebLnVEPA4O3PYoW8D2Ei13SvAAOlH6limbIKJEfAD0PD1
	 /lOEHdD0Y/gNnAzgpqP6jb/6TD03tTwf7x0HcoTtuV78tCbNP67jAgWvNTK6hfZmBI
	 4sjnD39AFFWk7TMh1JErgMhM1ZtbT3/rXky2jmO5UrUNASy4xEnqwGtzsBl6vGbYgJ
	 DIuAh3h46uk/e6n7RVJ3qB4mKs01clj3N5g1mbn9szmu/8qYsi1GztyYf/597VKARw
	 HoZITYAiyCrVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0559C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397508284.21106.11888478210210971506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ee4d78e7d786e6e41b3cc31fe00eca671643023fa9e46a1bef811b576a06f0
Date: Wed, 24 Apr 2024 16:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713975082

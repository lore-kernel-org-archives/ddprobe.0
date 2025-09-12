Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCF327A47C
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757716194; cv=none; b=n95hyXpr2EP6NDqOgfAqx3mBlnrhDa9zzFvCFfJHUGEaJ9Jn1vV2SYcqV+I57xhcQvB4m6YbOokDyYbjVs5pRaauY8pvdHLXLaYbDFOfmExvbiOKa+UO8IKbvViOmh/eCIbOc+mi8ctAb9MLyuFKPn65HjSPucrLHjEdn39Cprg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757716194; c=relaxed/simple;
	bh=fqF84jmmbF4y0Oq71rd1ZVyQVqaPS8ykZvOiUdg6zCk=;
	h=To:Subject:From:Message-Id:Date; b=gSDntTPZCqcv1VcG7X3Zk8V5ySfVrWgG2dlt7LMGcHO3FmrQmkRYm8EyBwJJsGzRr4VL5ZfPQkRdhxXqI+XwdpXWJRCkFDWbdUKqR6YcawB+x/Mohy+SxF/WrVT37Utx5b0E65n8uVLusR016xuyPkLF1IxUM2mpENnta0FO6eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWs1yZcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWs1yZcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757716193;
	bh=fqF84jmmbF4y0Oq71rd1ZVyQVqaPS8ykZvOiUdg6zCk=;
	h=To:Subject:From:Date:From;
	b=WWs1yZcEKQRMBkldiIfOqZJgrakFPizYp/+FB6dDj3vO6O/z9bv2UGMK40jKHBIrD
	 TuMLLXR/EaXWsG/0lnQTJgU0Q94owoura+fyErMl8S6AyyYxbh1Suxa925/aGKruaj
	 v3MDsybc2m1oSg84ufo+cTDIbDwBJwbeuisXZgujnnMRmcj39A00/zYWrHlTYjRxhp
	 3+BWe+rEFgtODk8v4RdmHowuRj78kXquCJL39E2CYu8tvRYMYHpEuj85Dm2gqHoVoc
	 3M3ZLYFWStWkhZOu04EtkGqRwrthe/wd9LsAIbKvg1DBOVXkssZFg3iDJsnZ36TcoG
	 Drk5jV0SKmi7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE60CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771619358.12572.11518583741735913049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d70aa51d7e4162b13a64b2a89a90ed9fd78b89f59c3b377317682f064eec6df
Date: Fri, 12 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757716193

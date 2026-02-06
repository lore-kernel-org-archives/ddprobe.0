Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131062D5C76
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770376434; cv=none; b=JUaVHx1NdxOtsoEkplbQYGbMYYthiQRBAt2yBi8mDK1kCSe8/ePXQhBbKaZKyaZdWagMZNqzMHjQI8ycB+ahhRajYKrKUpg9Hq83iU0eQuAjuLA3tMQDWOUY1D5dkoe9pehykZ3p1/JeNFuevjo6DJRtiTzNWHV6tgzLC5GhSAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770376434; c=relaxed/simple;
	bh=dvjMU6nnYOpCJaMjJmrJfwpGngmV+AK6WMBdvcSV8qY=;
	h=To:Subject:From:Message-Id:Date; b=XgX4pCqLveg869aNQaSPvV7ASROBPcuICrFvvyg7fo5AjJEl8hki14IySSjIf/uqose2YAad1gj2YNO7A3aWS8HSXz5++eAWy56dRytV0XM4TdbRwVmnFJoKhHoBwrep3KpiKuyAixdiro+vXNosuJIE0B8iLhBgw9XMFuJg/bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpJveLFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpJveLFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4982C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770376433;
	bh=dvjMU6nnYOpCJaMjJmrJfwpGngmV+AK6WMBdvcSV8qY=;
	h=To:Subject:From:Date:From;
	b=MpJveLFZCeVtIzDvDEqgSAKvDdTiUG99HCAe9Lw3Tq7XoLCMNOaiA0r3ndUHhPnQq
	 uAO7bTBQl4OWO3G3cv7gpdbtJt2SeTGql588AH0nP5meRv9mscSZmAJTWixuT/eZJL
	 zK87d6gsAlGbUkFHjvAQupaXydVU8FwGMaE042jp5eJBhjHCqRQLeV7nq1RhMI3YX7
	 siPKkUFgBpyScro+QDItOfMKGKoOdmQ5hglo0hks8A68sdlSD4TVi1ta81AsGnpJld
	 MapDaaSfpksqJop6K1SKv53dd7h6ErEc+/M5Ece7xwAy1b5ywhkncJzauARTg0lqvN
	 2rymV/pa3DMOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236CEE208C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037643358.25966.17068556321709668742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b848dd554fd5dcb1fc5ef5fa7a074b079d44e11a25ab9f73ab0219f781359409
Date: Fri, 06 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770376433

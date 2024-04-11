Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9047F13DDC4
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712819296; cv=none; b=l1j03JLuejyQulhn0IzwylPOdieqfgBuM0ZPaN1ZzHEOutsSZvxR7lBuvDzDUhXKE7Qyk2FiqAVMpK6yEBtXptVk94wUDcbQrxZpN9u9jBpgmMF9D5VklIG8lVgT2x9vYVX3XOto7qJZxs+XcbSR4t1WdRNpuWTn7iGojoTLQgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712819296; c=relaxed/simple;
	bh=vGNsTras92/pLa4mdQHnMgPsoBhb6CfeIdlqgK3F0KU=;
	h=To:Subject:From:Message-Id:Date; b=WujwQZ+baaTVHNa1MDUj2iCpXzDlV1r9i9a+LESe62/pFO5LYrYZdhh0oYKSsDWltnXx0PRGEJzODv5LJHD/sa+04VlrGmCxZNT6jbKAQGBMXnZVuW/6JYwaAqXrL5D7Jgut0KHFFPxvTuaCcht38GSAkP4DdqcQgOIJVdMewyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXGglANr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXGglANr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7260EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712819296;
	bh=vGNsTras92/pLa4mdQHnMgPsoBhb6CfeIdlqgK3F0KU=;
	h=To:Subject:From:Date:From;
	b=LXGglANrgiySGczFOffC8Y+7oHwMS36/2qqrsdrdO5844VkhfH22nOhQMjk7CdjjO
	 vx3/Yjx/DzbxOaVvTLeyW5tCERCA27QPS0deYr6JKXIDvzWY3tFgYWJjf7Ppw1PFhj
	 dAqgXMIPBmkzJws9oELBBt2wDwiUogO8vAjVHQ8VywVMog6Z+yIMeNYR4sHyRO8Ups
	 meCci9JZI37THJQjXzAIYnrihEFXltUQkTDNJxPXhDXMTx/JieCpccYt4ZzvTiTnMW
	 y1ztn0xjMIgbntqQgQgYvgmiOFnEVo6lbdjYRgpGjCF2OIVsRzT1OZefxxbDnUbIQk
	 yisrzuL/BeyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BA0CD1292
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281929639.29442.11541082060304829990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1585be07bbdf36cff88b9dc292a0ee5c39577b9a2ea13d96cfef735da2359021
Date: Thu, 11 Apr 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712819296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E8D1FE44B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754321994; cv=none; b=H2zHMxH2kkw4WU50cAhKElRBd1HYVoPrrPMO7XTLElXzf099FQzRYX8iyDChu9sjHaoShY3rY0SPWhksOp5AagRzp+hbcVdcml+EMdQ4jnXk51j6ka+076jZIoXrq6xbgV9STH+VIna+rlDPZSC5Fl7750rmWBZLeohiEc8VQuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754321994; c=relaxed/simple;
	bh=VQ7lfc8lCjQEbgAyUXYsy26qF6CmMD/v/iy8LOYWxcc=;
	h=To:Subject:From:Message-Id:Date; b=Txja3gknWNIUtlSpeXBtoEE5hGwWCtJtOqMILM1Gw0aLTEPx+uIL1ebwJ/NsczU/PjrN604JK/f2IEN6Fbxs74VHZq+H82hVnLW8C8BwuP1f6a/sAQrrgUDZlDOSqVEQSY0khltLOEmALHFxnLLT3BtFzMhFjoiJY13zY5cfKdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opYADos4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opYADos4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23EBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754321993;
	bh=VQ7lfc8lCjQEbgAyUXYsy26qF6CmMD/v/iy8LOYWxcc=;
	h=To:Subject:From:Date:From;
	b=opYADos4jDWSspUIdz3oMORfs7Z+dmhjAakXvad2FJK7SZ+IVcqULPBtFNeUVs8aW
	 rV8e29Jf3PCbNwnVsp5q3rKm6/Tiw00Yqn/ab+ZoowXeD9pjdzfIvqQSTmNtUUxWlo
	 JVmkVOb8nNK9SWCoRVzhDPimFkLAsZpQ4VP/OdjJMJhGZz3PiB529eXapNmpuAqshp
	 r5+cqbl5JYiwIlqKC5bIjVQqzYUsENbvcAbZbMZ4Cal9kKtHPjhiIf8wXpyYHkMr2X
	 QUQaBtMQl+E9YA7Aa+mF7wYWE8ZrkjofRvGeWOw7csgTy1bJDaamjuoLC0zyMQlruI
	 D5F8JT/naYQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA41C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432199357.26454.11712281343690482185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12eb75e1c1c56088416f80c452aabae46bc0606304a7088f5cf15be2925fbe00
Date: Mon, 04 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754321993

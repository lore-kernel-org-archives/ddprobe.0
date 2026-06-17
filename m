Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FA8375ADC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781717794; cv=none; b=MvWBtW+UpzEP8yG4q4QOUS+BCbZogGdy6Bcc/sXzjJ8FLmwyKjCkNRQq0E67dKi0mTpet7GXUigJkNdWCZfOz4JqUsgzgtoBXXrMCNfeyeruRdElpCh6hcjw0o+HmH8gPKbrZRPQOsM2QIeYlT7sNz/yPxxsbxhZGjnXJnUrFRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781717794; c=relaxed/simple;
	bh=/dQ+ENSOcJf6QHxSV/UMkG5JweZZ7pryO9oxF++DCQM=;
	h=To:Subject:From:Message-Id:Date; b=aD0yK6OM5eKV/QTERSBetz/a5XsS4h749ypE/MO8kdhALFpsltP9LzrtYuYrJ/64nZkw5pHsqiomKEfiyHNkyq5QlALM/sRNQnYrgleiF9mpR1vxJO9W0PIdJypUQdDcoi8ds9igX7nvnMCjFu3CB3OHrgxU01BArW48taSOONk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnkdnGCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnkdnGCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3ABC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781717793;
	bh=/dQ+ENSOcJf6QHxSV/UMkG5JweZZ7pryO9oxF++DCQM=;
	h=To:Subject:From:Date:From;
	b=tnkdnGCL0UESJYvcA75xdagmt/tj8KU+y5bdu6Gxsv9grbOihDNTL/3ut5wS0WoDF
	 IvVxmOVzE5BKexs0MHTgWhlJoKPJzEaEn/uUNAa2NZ6J/6DxANMfCYQ0Hp9uR1RHmV
	 JB+IeON0HGrvOTyJ9SrqUSbYZCetXZhkKzqG2gYfH3CT6vQFouek+vkXwqL2MN304o
	 Rs9yreJ7TsOSLfPs7yYxHUsHS0qNuaT65KUHZH4Tqis5sJR0CiAN/RMw03iDB1V+MA
	 6/zI0ohPF0qGdTX3Xwzotine5Oa8F4dUtAP43e2elv/JdEGKLLMMW1yauTbw55qmhl
	 MCjZnYC6gGTXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3875CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171779372.1947.13680593718260843012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c662a420d6a1217fef9aaa35666c5317a806f4217b53355305d62fe699bdb942
Date: Wed, 17 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781717793

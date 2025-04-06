Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BDE4A24
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953994; cv=none; b=E6Gw4nlZJT9XV6n80T4I8KBGDEqmOio9MOKaUtvED1gYD8/STxjR3wiEOC6Sz06wrzs8BcsunkBso6r6GcOq5OIO+zelKaDOY1msPpXcF/3Qla3hBqjeF+fdDa5XUu6D6TL40ZCuOCOEa8NLXK6n5Ve+1tnvV00UQH0RsSL11sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953994; c=relaxed/simple;
	bh=E7Tv7vlEZpbVs3rfEHLZabTWofIiQjgXwgC5YfMm6co=;
	h=To:Subject:From:Message-Id:Date; b=iq6BziNKpiISfM8u/uyeqi3+Y0haGR7+nZb1Xl5sSM/wZSnjlufJmRACMsNjqhkz2aN3hs8H9KDKV2up0pmAn3e8WsHgQ9GKJ/AOkc/HtfolnEvYj7o/4i6b7Sh4VOZ9ZgdNqkB04GKkJm5AkWWWO7esAaRH73N2SrOUdj+ym5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMQzAkhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMQzAkhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743953993;
	bh=E7Tv7vlEZpbVs3rfEHLZabTWofIiQjgXwgC5YfMm6co=;
	h=To:Subject:From:Date:From;
	b=SMQzAkhsdEEqo4FlCXiUmYpBK6INp5jbHy0tV7DfnqDyPOP970AH4eYkjpAKf5B46
	 0mbhaE756ZKD2q54/HpamOBIpzMzSEQh/Q9Mnkqsgc9wAwepS5mOrVR/y44xWF/HNl
	 l5ZrzZHRYiPCQ66sgGDDGpbWhb7X3yjVGsbqjp/cvpDtmrjkQDtgVNwvD/3q1M0lip
	 W+rF8xDqSzdMhJr4CGphKCt4yXEjcpb4r/M35IIlCL6+yPbEuRUMSTEF7XLOGiTmXF
	 rYXpvbdRooi/HMonAGYrotXULvhzQu97l/b9dJ+C5Qb1zlewsg0Nu17vNOlqyJC4LN
	 mo61/15RuDoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93238C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395399359.4678.13361896489490029332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7a13fce59677cb6989146a438197aabfc5f0c079ee83ac11e554c405b3af0d
Date: Sun, 06 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743953993

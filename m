Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415BC328AE4
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751618394; cv=none; b=X1OufhTgaeL3332xePG4UiCmh1k10CMC5iVL7VUWmlXsSleLLm+kij8E483ooH0KMw3tueHLn7S/ze0BHpvER2NZafu/50gKPUHZVjGH4pI7uUr9+sMtrWTfI52hREDf68rYyhSWNbo9539/qZj2yqxiBe/NbjqpinJBuaEhyow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751618394; c=relaxed/simple;
	bh=jGTN9lPlwo0D2NCqxxKstgWCHKwytXPuFmo978/TBDc=;
	h=To:Subject:From:Message-Id:Date; b=N3d8N7Cer0zdGpsff+EJZ2offxd9t9cqtsO45dXWzM7zo9oKaEISUnRsJ1vdihvd+OLywBPNX6opOdOmhMZveiIiApZM9g1yHzk5rbgrNPF7WtahCkJ5AAwXhJECJBCeps/qcEeHOGHQHoZR24BReb+L0w2q1pfXp6b9JGI9zXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYkYXazm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYkYXazm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A779CC4CEF2
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751618393;
	bh=jGTN9lPlwo0D2NCqxxKstgWCHKwytXPuFmo978/TBDc=;
	h=To:Subject:From:Date:From;
	b=PYkYXazmc0WHJxTN3qS4eT5roTdoOthHP1pYXeYQhrcdxqNkvvb0b6mCI1mWNdEuK
	 I2yuDjLSI+/jnWSi5Sw1RCrYPedoth63uYM0Z8OrlfHLwIhsSSL0Qb4L2PRrDPdcVs
	 RiwlD2oZ/bQ56NRzRvPGz9pOG1/K6dRl0FxhxH6CrOLYlLpz3n5u78F9P1bfRMl1Tg
	 NaLy0x3ho0VKGg0X7l2q3VcJVUNXGrjKbU92EdIqtVvniKrcH0vDQVfzXDme1neS7Z
	 LqAbfKT6lh1Vd29wxlNN4vyXUuiQVBlnJH3hmmG2iXmkF6o7HrTdlrTNQ/NgbxPh6n
	 TPRQoBPjVZbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0DC83F0B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161839357.25329.12682374017500083358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceba394f01b767bfb9f3701d716c237ab781089d2d52e6d706075bd897ec988f
Date: Fri, 04 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751618393

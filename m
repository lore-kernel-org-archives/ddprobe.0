Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411A12C11E4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785010234; cv=none; b=aHtZOLMN9dBl/JMzyQaHfEXPLqEx8QlajaXrsNdrQ7BeCtRL7U4UJqICScUHQL8i8T+tATlhe+wGsr69HDbJfqTu8NQc7bYoJfrV+N4j6Ae+Be9DmIZFOz7qCKTo3l7O7v8HUw8FMZQfOQLgRu96RD+tVdQVLGlDgBtGbi9NIks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785010234; c=relaxed/simple;
	bh=o25zPHJbKckOJk/TQn5xtlQvx8JiioQuQ7l0U4w6WWY=;
	h=To:Subject:From:Message-Id:Date; b=Vu2wsk5+vzqQTvIJZaoQMBRaNBU4XbSUqQgKjFWKgh/sOP78B85xuiohtwuMcckTAvOBKJri9RqI4hy7FQ7YepixHdbu8EgG9B3crzp0BTrz/2b9dM/l9g5LEcefvKY9xqOYNiRSGtykh7lTrf43lD9oWUDvbsvlpzA8mLCFlQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+4Qmt0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+4Qmt0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1647C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785010233;
	bh=o25zPHJbKckOJk/TQn5xtlQvx8JiioQuQ7l0U4w6WWY=;
	h=To:Subject:From:Date:From;
	b=Z+4Qmt0T9M93X5+8W81Uapc5OXSnlEPkmuJBqwb3i2sX5plSECBirqUJ+RUZRNFAg
	 UKH2Kz3SgilyLBMIe1szJY5u4C+GehxcHpqPclQDZV4RSKCwlPUQu9kkvwCv1/CNFy
	 vw/H15LLitWihl/tXPeAy5/3t7JuxA0/13C89nhhm1M68TlPd+/4TD4ABQx/sCKAMc
	 z60/w91gLEH0MSjsotEVS+ySAHKi3EjdFdA45JzjjvfDUd4DJ9ij6jmNBlN4ASQW0a
	 JB4xGmaC2fcf5iSEpxSbnMDlSIAWgPwdPxwdyFyF/E9o0f2UbkmvF1O7xtla7M/B00
	 Mq2NK3xa9RShg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B7C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501023368.13391.4070525102623799865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96054f01d0ec296669ec865c52938e6eb16c42fbb0f474a3d1bd5b91968bb2f7
Date: Sat, 25 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785010233

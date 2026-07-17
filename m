Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4E03ED5DB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784287714; cv=none; b=Vi3V0nUELmlsN8Zix2DHwwABTwTPjl+mktbZpSgX9zs40WUZGdJ50KHp56IYapCnNmf88iHBrp8x3F/om3U037ayB5yixLj4uqY8sS/R0qY0r8nzYYY8vZUiPWMlr2OW0cTrKJK2MgnYsHrEO9UoLMnwh0H/RqUogwtfOs6Qbtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784287714; c=relaxed/simple;
	bh=fBf2bn7X6wbutUfyhR2Cm0XvjzAudUzbn7mTr09ZlB0=;
	h=To:Subject:From:Message-Id:Date; b=C2hXhIbBE9058AQ7Qo1A7XefBWTAlAcPqtZ2aAISvJv/hLrFv9XNAkeT2MRabx1NivXxl0MxBYCIqr3ix9aG/HElT3CMjmMRLcp1YC9vTwYsmZxE5raVhuZm7Xwm3WnC2Ue9W8Czvsd8C6ajKUyso6zonw5Sc3Sc3amfvGiF0no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnXVvmTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnXVvmTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9258C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784287713;
	bh=fBf2bn7X6wbutUfyhR2Cm0XvjzAudUzbn7mTr09ZlB0=;
	h=To:Subject:From:Date:From;
	b=hnXVvmTdgV8EJYpJ3TVur/cFWhfHBwlFKgWiGRH0LMa1XrdxvdqXRicuH+rNWQXOR
	 FKLRkWRr0VyF2P4pwfg3RlWsVx9DAhMECrGy65x3cgp/lhMa99b5vvKqudOzkweO7G
	 01eLWzAL0Vho865XIx8/iiXhCP9uj45MKC6dwjUyNNpCCdrUcUTLG+awlANcGDZfZT
	 VRvV+RxpsOx26uoRl/q8H7OOL2/VeQjyON4On8UbTfvKB3XwPk8cHavK7s2isA2/aB
	 RdbasQKGY6bAj4bXkGgJf+QzRYr4fFp7CrXPTzYa4gkd4tMLQ7p5KCiMUFPXqggV+V
	 DQFFyOtW8ydLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F43C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428771368.1464.1453638923577010305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d615a0b6b2acb3a5ba46d508bdbdc3a526b5cc953a85503b9ecb915d8ad113a2
Date: Fri, 17 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784287713

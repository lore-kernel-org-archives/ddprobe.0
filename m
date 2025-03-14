Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5070A202C48
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741974534; cv=none; b=Z/6jvcRplVAtU1TiwUMcqwYD59xavexVhYGFkrVWBT4VfX2Mxtu6SEd0An0ScWqpuLqIdAiH7CYNV/Jsp9ydjQobKgkXC9BEv/CzQqkzHgEF/bLkZKrZUNQh2bompBtBrlU67Btq2sE/jnvZhExXIVt15/F6E0YxmLRJ1p3XDjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741974534; c=relaxed/simple;
	bh=s0DFqn7OmVz0uo4z9o6TRgLHorHcJalUPR+Z3sXe3Js=;
	h=To:Subject:From:Message-Id:Date; b=mlS2xREd4ndSYCNmkwkRT1c1fTr/+iaNfxUUX6YtxOeLtVvvNY0FKHY5Hozj84uQ5oCfozOyYbDqt4Tev675+Noxodj2zOAQ6pQcUkZiRytlnuUtR+EgXMeCOt9as2T+bY6LduYzrwqJMr2eQACTLEI1eHR0CxYtfOHMviyXGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVdOLNeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVdOLNeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDA6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741974533;
	bh=s0DFqn7OmVz0uo4z9o6TRgLHorHcJalUPR+Z3sXe3Js=;
	h=To:Subject:From:Date:From;
	b=jVdOLNeuA1Vr9Mz7OZazhV15HgfWab1dsYvgGee+CpCTZVLI+MuKKIBQOR5rjRCTp
	 V9vPR3S1ubfQbRax3Wii+q9j1b+aapPmiR3a4U+CIqEKuKTEgh4zd7Xesb+a29fLeJ
	 S07zEXX0CAGHFvEIZUkGtC+rqpXw5uNTSXM6vUKwlwHqXenSIfSpBbN7N5/1m+ULOS
	 gmCoMaIIJb7DdgTQKwVcbaL0xhL4FIMrq9nDmbj2iIkpdeCGYWfwJo9d0kTlJCuVQy
	 HlDYY79cWotulPtJ7TcQJIvKqj57pLwDP0gvmyaW2H3y2saETUoW284Fr+RXE7mZO0
	 0HZCuAdvZ4Y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C321C35FF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197453362.11751.17417593478232812214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fd7d97e294bd28311497de9575315d4ab322291551f2ba31d2abb8b24f05a4
Date: Fri, 14 Mar 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741974533

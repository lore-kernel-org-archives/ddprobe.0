Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F95F3E5ECE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772661894; cv=none; b=g+Zo7vWvxXS9cZ95e4BOxQqZ3YJbDCR7NWfcMCDVu7h8F4mTgGIlkmmT52SOZDyTl7Ia71Is1jxhX7KO3KLAkYNTunGGg3U/lC4BKmb6x7NCKNN3a9rp8qf6e380hU9iYtKQ1Xyb7+BhoezRvVhiqXqu3YLuFFlC9MBIrv+cM5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772661894; c=relaxed/simple;
	bh=ohHmn2PwG6tUSajRmD2yWjUXtg5Upc7J1iQkxhnL05A=;
	h=To:Subject:From:Message-Id:Date; b=UR5UcN3D8L7P1dR6Cr/Lvon52hfESFR8HH8Dx7SjO2SNXZl04rbjEOmIwlxXRhziZ5IztBbumnIInroDRp02401mV//karaCMl2fwzn8ZB2Q7ue0D0Mv1fygI5d6S09Jd9WQs5E9QsqK6M4Ei1duCybUivqwpAHZiyYQFdB50n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oO/yo4F9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oO/yo4F9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A9DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772661893;
	bh=ohHmn2PwG6tUSajRmD2yWjUXtg5Upc7J1iQkxhnL05A=;
	h=To:Subject:From:Date:From;
	b=oO/yo4F9u5nSDYwGXsOUoWrDiv9IVZ4qVb0uC5UkUf+BicMEf/Q6dCc8HZuT9bvJD
	 gg+Sb0C6wBe9kdsh1f7txSEnYC+RnK/11LO5bbc3w70bkRaaok/QaFRHp8UhNP/eSF
	 Txmf8zrjx2HuvYt+NpPqAqJadQodEfeDjgUJ9YaJkisFkLwdwNUj+9rBgI5LS0HCJN
	 TlIo3Z88j8TQ5ArbVAjNrKaGyLp5olqrcIsSr9nzR/vPFw0NP3h09hrEu/4WSrhG3g
	 n9ZMtWIMBthbvjT2I9phz3ptUeMdoVnGkuM/OzlWZjiE5AI8Ae5cjslReFaQO6Auzg
	 xGqjC3AlfX51w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD77EFCE4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266189362.29762.18148637700307384458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b15c0a70522e4fcd41b2ff7194f247c4e1f6843eeb9817586f787edc209fb0
Date: Wed, 04 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772661893

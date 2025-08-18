Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8299322A26
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755523193; cv=none; b=YQ6raDnePVPQDPNS0AwfLnc2ioE39rCZUgUGbfy91LqKsZfOYWDqr2imuEKrWe+VlXJPWHpw9B4WSLumNEf9BMHIBaNwcThIUmDfry0J+aY92/oW8MkxyWzOOSHf44Pmgqqz5/gdOKugzCP2Q7dZ1w815+5O+P1CTnvjNT9ElO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755523193; c=relaxed/simple;
	bh=AdW3k9s0kBrXGhRSNMocTOMxQ7+6B9OuJEOVq6ISXcs=;
	h=To:Subject:From:Message-Id:Date; b=QAniACuY1hoNqd8tBwSinmcIaMAXLAyNd/m4iPV/wnkcNhnaeYQ5gseSloqQC3SNrlcEN6Rkq5Cdr9CC5UezzUW6ctrHjhgbQ6eGv7556Vdj98zU04KgX9kORnhV9YtDn/rptPBNWwpdnVHs/luv9f6PQWGWPESsjDKSDtrSYuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJHUMXy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJHUMXy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3F6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755523193;
	bh=AdW3k9s0kBrXGhRSNMocTOMxQ7+6B9OuJEOVq6ISXcs=;
	h=To:Subject:From:Date:From;
	b=AJHUMXy2aYXtS8RgjpSDHgLottW5soTQX4JNz1qZv7b6WDau2aHAPJF8LLK07nnFx
	 YpS9sRpERB8U8DvAVKQW+BTOMpKGdeAWnirXuEFcImk9p1NS++gp4Dh/3z3xZHrhYL
	 jVE58aNfwRVknpGBYemjfXGrzfXx3Qt1TT2B/HutSq4zjL47N11H5gJOSxjx4yZTcr
	 o5vA7yenv18wQOgGHrLOa55qDV+u46b8KoSQW0wYWMuUvF70Io0Blgp+1SziES+lfp
	 P4hWQ342VQvGiFlRa6he26NbPEkik21zdqBLD1u26XfkbOIH4JykaIGeO7Dsdgfl3a
	 43CZxbZOI1/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDDCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552319357.12672.1886898143957885873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf50f8827915138b445a9472a01e08f684843aa839c90c0ff410f8f71a1451c
Date: Mon, 18 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755523193

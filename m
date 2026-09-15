Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD423A2551
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789506034; cv=none; b=p3ojqEIYSi4ONh+4Qg90MWg8gL0mgicjHbiRpcaocgyyhH3xepfhD5yCdGkyF0jrfe4doRyCwMlV43VbJ0XaqVJ/n0N5Zo/oTAycEMwHSc/MdpnL5SBHkUKPIM5X/L8NKVAeCU3RzySqYKUWoUEv+voHNUkO/ahElao1yiaMKIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789506034; c=relaxed/simple;
	bh=TdScS6k12CuhFi188kB3/kcqzkeP7ZKqu7jpTH+wLbk=;
	h=To:Subject:From:Message-Id:Date; b=U/FFw8vhMTlk/bavYa11j8QDiBATTBF62maujdkXzl4EZVpDlFp7KgCWkM41Kn33XNopz+Yjz0exY9RD/xbXFMfCa7RwDatqgWqB46+o06M8B/rgWgFO+Z6y3oDs5ZxGxJWmmsynvQVelDfdHfLLAKs9wOZu6i6BOgSBAK/o0KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH852P1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH852P1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FC3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789506033;
	bh=TdScS6k12CuhFi188kB3/kcqzkeP7ZKqu7jpTH+wLbk=;
	h=To:Subject:From:Date:From;
	b=gH852P1goyhk9CG05/9yMkI6i1kE0WRlezllp0kldarF4HAuygGwZBeg6OWH8ZrPs
	 8tOhdlskxlXkMQslkOf6K1xh5OXgJ3YMlp93OCafGL4fqcnNHO8oQGb98G3NaP/ifx
	 KZdzQAFyEaAL0bIavQ4tUbPKPtgjoejF6Lv+3PhBRihksYTcknHWCDI9AymyNH3uC5
	 2Qr00TUYOr+2PPnxcEIbyMgUNT1FwVRfBfJr1ODpCHe9m0XgIyGp2TnZfa5rmhsGMl
	 e0us4b84+x01BlCKpJQY7X2nS0vU7rww9WTs6u18CYjUNNeI6z40ZLlrk+l9cbKL36
	 Zwwb7JuPIIs2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA19FC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950603368.3982.9262577338237852483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6ee71168591328f7b8f5fd86e379e015d5d0d783193560f0ac4c67a1260c3f
Date: Tue, 15 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789506033

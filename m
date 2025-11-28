Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE982C3774
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764366774; cv=none; b=OeFfZgI57FHIt1opACOKCYTny9ioQzyrsKLW0MMGUIRTQmHaoAy5SsooW1VHa/QvxwnJiVnzkIP1t/YociF6CJVI2aGFzXvfbTWxzGqD4VA9+HTTXzW4UYeUfxsItkQ2wsdcHfdxpDbxgkiM87A2bh8cuieGYkiADU8QudiDJS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764366774; c=relaxed/simple;
	bh=jXV4bGlqUn5ikVOC4u/Q356F3Iwts62rDqPhMmd4e/A=;
	h=To:Subject:From:Message-Id:Date; b=czvMODCKsRsdakAMVoY7n3ApeDRe1FSFkW5PbiTrsWxOPbRbGMzkUCHQlA90AQCsdcCgFb9eWfg0IPVMTmlAISMdmI0q6RRxnAk3h2qbd+lfJLA7/D37jMu1OiuWAikU7Hys7eJfe7CN2P3NAK6m76Re6Cm2bUGyqPoi3QYxoQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAGtpIKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAGtpIKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764366773;
	bh=jXV4bGlqUn5ikVOC4u/Q356F3Iwts62rDqPhMmd4e/A=;
	h=To:Subject:From:Date:From;
	b=OAGtpIKOfo5nwTCismlYBnmBguni1+EaBeWCXeZo/Ap8IgHgojwLP4dzfVhYNOwPb
	 VBw8cngW94TsCclzgzcb2u0InolrYzN9hAeDmAYnXrkJqEcSu4B+94ovsEGtTZW92S
	 YkAB9unTmOkt6Wh2djI8cf/nSQzitJwHdlLGCwYiPawfEy7BoM+GP/6unQIpd2wwgl
	 Os0TURmv5o6XqZc/gkVjcSFfWxuuZAShJBIeHFoXJs5kNS5s+eWT5OGPOwaQzFkwNl
	 zhF0TOewTr/Sj13u9s/3jclMRDfp6pQTt7AfQ5BBtz0oERNpPBVkbqbQRRB+k9UK5a
	 OhsLCu8qLUXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A8D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436677358.20325.14248638379995895378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d61eed2b4cc90554af3784f9570cedac891d86ff31a5365493262c2806749d0
Date: Fri, 28 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764366773

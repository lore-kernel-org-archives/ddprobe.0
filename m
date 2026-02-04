Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DAD23E35F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770245634; cv=none; b=MRih3TdOWBs1TtboBlGAbQ80ACI7BX7Aw8LzaqxY5m+vmoTijv4pzAw1zuUuC9JDqSD3MfyS8d+BX/xLT3OaoT1Px9eCk9LpGFA2vINqsq5r2ElgFAJj71y8rEJ7+3IW8lIAvkbud2NqPL168Sy/Do37T1m42TYerAMyQXnXrwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770245634; c=relaxed/simple;
	bh=ZIlS8cUfXQQW4+gd7S4zPD2LFZf10CMPmhgvnEmNkAk=;
	h=To:Subject:From:Message-Id:Date; b=Ve7wTEL8wITsIsXWZF6dJOohQ7TE2fcCA+25CblwU+1wwQwsUBAtqi3tdN3MfM4z8iovnNoCI6GQRRRKG81zK/ZngvQWWDRtlA02TaMQj4BxfHTQ9EiNJOn2rqPIFyuCCb+lwHxWChVRPS1DYwwapjqVhImEmEyn30h1t1wHwdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPiMOWCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPiMOWCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A46C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770245633;
	bh=ZIlS8cUfXQQW4+gd7S4zPD2LFZf10CMPmhgvnEmNkAk=;
	h=To:Subject:From:Date:From;
	b=gPiMOWCGRlhOhm76PKST41HyJe/Uy2zyZMTBI7tk0/JEfh4rukf3toJj3sxYEwVVu
	 tJdw0cF1uymWclWEOFNL+Qbz0a4vodg6exQaKN5l8l4qPC3dv3e5ixQXpJn181Jycb
	 BxLXQpNp5s/Hf2L9tRjaZ99cODPTqPTjODkQvM2jGAdnxzPB25TRbL6azHsRcTDpxL
	 jEHk/ys3SttCKtW6rYdCzeRvTh0gcpaadJLrvWD7TTzms+xwH34xm+89/xYs1w4UCE
	 7dYaJ9wWHOXmsu2gNW3xgBo+hpRr0LAa1L41LwsoeP7bEH7vDT9C7S/oquVFJcMYUz
	 oabL9MoCKdSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6FEEA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024563363.27797.1293601749582172739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226204ba82382b7772a77b1f6d19df3db6f956fea4934199d979a01d2d8412c5
Date: Wed, 04 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770245633

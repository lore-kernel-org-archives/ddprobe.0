Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B58717C7CA
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732563354; cv=none; b=tYkw6WS6NH5RHTV60l1nH1jNGo3yXibwrgU1ArhM/iIDa4WrxzQYyIdxaSKNINfJ1aqwUDcOEjWegLV0reHdbVsko4LJlI5ayOQc96aCPv4BgskNK5HoEjGAvnZqMAfEG7ZZ3u7Y7cosRW9b9KlVMDaAVWYd66mMxwwHm4t1J5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732563354; c=relaxed/simple;
	bh=HAr8mV1y3YxpF/6fVUSvz5s5a4RGTiMD1I6jakZLD2s=;
	h=To:Subject:From:Message-Id:Date; b=SjbtLXGwbL21Y1daotgPIaGuKX0vLkXhwP8mmt5oOku6SEYhAed8MnDq0GlY0LIfl4mSjEGN1O0eZUB3mCJIY7MHxvgz9sTufc6cOCcnb2YouFYaMiAiDsJZMegg75RGxDJgvqWLIP5qWkQATJpWsG5nB1fuOo/zgL5mwnnWxZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUXH2zxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUXH2zxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5A7C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732563353;
	bh=HAr8mV1y3YxpF/6fVUSvz5s5a4RGTiMD1I6jakZLD2s=;
	h=To:Subject:From:Date:From;
	b=DUXH2zxGOsSYWruMrch2K8tD7/d5iPsSRPQGS7Djh1Utm9hcJMulzv0Fedl+cCavK
	 gDQyPIruHBR7tYwibqeAvNtDVy+VtnTy6X4wesbrM/Q3OpsTLj5bhASMps4BshzRDS
	 yw0rBiLwrgmaEJuXAyEIg+BcC4SNSyXNTQio3nF58MGxFTKh43fjwIKlMTrqg+NSXw
	 5Ms+ywrkR9c4F+6H6FfUpittVpjap53SXWzAXQUAhYX4NHb64wGnEuaf+U1G7qjEwa
	 /n2iXrzilmZcdG1fo4DI9UR2LLb2rp6LuEhjJ1WN47LssFqbWN91KiX+GkX9c/W2Ql
	 zXwhuFnVVWvxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C72D59D60
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256335361.10614.14343450686988911116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf45663595a37037454df027e9641cff033eedddc9428b3ae61e79fb665b8be
Date: Mon, 25 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732563353

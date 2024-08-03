Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BB7FF
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722657954; cv=none; b=ZlVAvEAqtEV1JMwo2mKOlMfG3d/OF5UmOBxJipbyAInJzhOebM0/bEOwfy0NbX/lPsnxrxL2pHvGJJOWXTlt3ig0i05w4v5EHrHFJqPE5Om90LR55ETAO7+f3bx52zBzI2cUsrYqCTmm/Oilvxp/GQLppDMqJxI1N8jdvzLmW8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722657954; c=relaxed/simple;
	bh=B3KKDr3U2F/l4EK7fiQa9X9zWuqZDkBuk4OT+iVOeMg=;
	h=To:Subject:From:Message-Id:Date; b=dxf2ZrxMKcB7OUBdl0JSkXKL+0sDHAbOJDakjHIanMROPk7rIEUEojZ4YwpXZIp4jBeE8jd4YD8juStGbh83ni7xrbDRWxDL/kjRKgaJyulaCW1k+Kz8WUx+SqBI0Ah8jdgh+2YmjgBTaYI/AHjmhqtaldYYMdTzvPc6NSiCUqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q46cl6sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q46cl6sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C01C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722657953;
	bh=B3KKDr3U2F/l4EK7fiQa9X9zWuqZDkBuk4OT+iVOeMg=;
	h=To:Subject:From:Date:From;
	b=q46cl6sxgvQGMafFDcVsO2Q0Zw0fYS6c8U50u5cTb0VoFFchusnVWk1wVMAiQSkt/
	 hJwJiKvScMqv7V4cFv10C8dAekHjkPoWIhqkDAlwESl1QlEM3NCsMeIdVkKnMpiBIQ
	 By8U/Oj7ZhA0F/9mqRTFU0AJEFEZsCZpzvixR8AcFVAgjSBtqtgaNFSxEnPjhJfyok
	 YgoSDH5zOUIr5/Pst18CdEC1wGJPg2NAU+1wXr3fkXZC7xTFwEiKrCFEWfebVaXg+C
	 voq/Nh19WATxyhe/BpTKQPybdHS5naQwInn/5bP3HVQsm/dxK65DKwVWljhPi4DC04
	 V0cOLBNXZz1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0FCC49EA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265795362.25158.17945849904144867528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59229f7854f4bd81e63b6882f1efc61b2bc573b6cfe719311cc7c1950320ff5
Date: Sat, 03 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722657953

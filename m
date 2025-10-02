Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102D1DD9AC
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759399194; cv=none; b=tpqpGjHqjsBg5vOHChZLSUqtw0/jgjVWrS1+k/XBh65ixgdI4e7OfE9s4Q0lv1xpq9PujBURWQWMjsTy/9fkGPRwd2+0XxJLJevhoEBIOthiQAS3GIz/ceZm6tqhRMek+ONkuZ4o6v4OMvAL0QAHd2cUqMr7PKkICU6xNZa1YGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759399194; c=relaxed/simple;
	bh=63hp8lmC0eI1i7Bu4ALXNpzBh5tzY2cvA/fQWpQQhQU=;
	h=To:Subject:From:Message-Id:Date; b=hB2HDArG2TwqAG5cAM3+l/iSgYdkW9wLAWsSt1zU/RIJTv1clxEVqIfUfPYwRsNyWQmfI/WgY50PnfptIEg2985pItXHTvlNJQLq6+/Eh0nged02VpWkZbpWWjLoqr+ZmelcoS3bkEFS+cMk3XkaLD8w4/CIenXPTp41ft9bn34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUqRvDqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUqRvDqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4082C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759399193;
	bh=63hp8lmC0eI1i7Bu4ALXNpzBh5tzY2cvA/fQWpQQhQU=;
	h=To:Subject:From:Date:From;
	b=WUqRvDqVwo+tkXAm4jWqkt/yIB+TdK9zESs9JIk+ELKvrpaBvYx+dJeuL12Fqu89I
	 CHgtH4YJWwrbJnW8XNk8pvCIfReFxaSpDTRwjcZLahPloCbmi+/8umWy6f/elfNFLK
	 c2erUW++dqIKXBTL7fPJMAgImkTAyBoHd5d0bxA0O1wDOb5YRZlQMAtlBsIflANpx9
	 aFOSTF2j8I/WqzFoctnyCflIqrZIIiYEonmkGMQsjJ+kjL94gbtLtWLVmlD/5RDVt9
	 u4XulUijYElyxJWtNoSpLvHJ+kYp/plVvoNY2iBj7YpIUrNafA7bBEN9FbUGbQ1TP9
	 N4CVoWI8/vdmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F1CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939919358.13935.2485445341131076195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9461f6ff1d7ed61c78eb29ff7ea4178c8d82c0f1891c288d83082de1fbc989ff
Date: Thu, 02 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759399193

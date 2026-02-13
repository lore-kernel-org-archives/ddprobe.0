Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B942263C8F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770960894; cv=none; b=X/4rw8/J3lFPI44e9myIDBZ26PCSDqcIy934mG65MdIFb6DiL7ikm9BOTxQNWPnb6C8ck3TE7yArjascgGjL5kQc0mxpTz46rRjfuapFWaW5raikv46YOEX1nuRAmtW4oHkr/8SLHPmHLvYYLz40LJ+V8JVF0/EBrXx7Z9B7FNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770960894; c=relaxed/simple;
	bh=lK6HkZKlmNz672ZhO/vmRaMHfLUJ3gh7PXL0gB0iZt4=;
	h=To:Subject:From:Message-Id:Date; b=PrfFg0ptYb964aNaPFBxHjyhPpkXx3Lr5dkfboFrgK9m0VmGqK5vkHI0Uf6ncQ6L+bKMBueau8daansMJ/jRyU97uqJ/ezbEFFUDOWC4fb0htjvRTfSl9GWJWWo/BUQgqiwjjZdzxQPKCgBR7kC9X0zjG+4rAPrqmRXmkYKCMSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvvi1hb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvvi1hb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1CCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770960893;
	bh=lK6HkZKlmNz672ZhO/vmRaMHfLUJ3gh7PXL0gB0iZt4=;
	h=To:Subject:From:Date:From;
	b=Rvvi1hb4OMblFhMgZa0BEp3rvTMZoVEPr+xfMrMoIb39BT+Nd6uT9zEj3FLwPzBs8
	 4TQ4zkp3QytAu/66J5O+FqC9R7FqMLKHoxli1gZsT/65mMJMaxYWVgJroMVfs/EwUZ
	 P7lhGIF9e33/AIcCbqtyacHfeut549CrLHaVcxPdgi88xrFXJmL10eyetOsRHC2Y+y
	 4g+TRJAvh/6x/tpEqnRWt14QWUAeBDnYBUL8IMmblDLvOqM1/BWrVB5SVa990vlx3I
	 FTqJYzzxBwZfBIYQQe77sx1BNku98oteRtnOxf9eS1xAiz4kG1ralfrvHtd6l1NqPL
	 1w8oa/ZntbgTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02F6EF48D1
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096089370.11537.16888992403867465720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b030cdf883ee613e14d29d2608e451158bd5745b0a2b6aa98073e952a3942b43
Date: Fri, 13 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770960893

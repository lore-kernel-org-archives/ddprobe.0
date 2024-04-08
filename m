Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F6129CE8
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712561297; cv=none; b=iUH/P3s/B3ByaJiYF4jguTSY9ULl80iY8nZNiy6ftsu7pGguKwg/MOLRG56HsFd5cZLScNoDPjx2NKT3IOZWa9U1BY2DagFRz7jhicK9yub+wO9U8Cvlp74IIRkAghM58D0zl3Nlsv6V0knsvn2n/iPk8TmguyuSOkQ1O3YHWFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712561297; c=relaxed/simple;
	bh=9uBLf3WZ2qH7A8IhxrDezaCbfX5oe5LzUcPh+SDlaqw=;
	h=To:Subject:From:Message-Id:Date; b=Dp0dLFY7AiXgr15VpBgJn32qbpOjyGa5N+hKheIU/ouyKJhDA07P2lFAM2Foc+BcWIKD14KjezajNoK/IeS7vWnXcsjlRhnavpU1ASxoLTsU/jinafX+seVVT4Gr3hvW2g44Icd1dvzBsE9dMqWSuh1kORKWMKCxfsxoFfrPfkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha/5jOAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha/5jOAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F74DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712561296;
	bh=9uBLf3WZ2qH7A8IhxrDezaCbfX5oe5LzUcPh+SDlaqw=;
	h=To:Subject:From:Date:From;
	b=ha/5jOAZwa8kD/ifwQaIFG3cp3mTe5LvAj/6/1s/I0+iLwpn8Lkha8iBqaESH6GES
	 WONY/1jFoBB2GZ87EInYK8K1JE+m3XdN7JMFipCHBNXeK3LPA8yFeF8HSGM5Lt/mGC
	 3txbuCmF3gk4MqiWuYvPwTVmB5TIHH4ZKN1hvc1TZm8A+Hmxpt9js5xWYvbPEBjTur
	 9K1Dga4yA9/j4yfRdgOu9G5JoKgpffHGkb3n54+3ypn3BdxJfoNaSi7koO72ESG0tA
	 mc+OjUog1ZeecGgR6suD9bSFtsTnJYBPwjXAiW22ela2W73g+aWS2ewIgIRyjbzcwd
	 5RNxKRrMEjxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60411CD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256129638.20381.14750418583454534469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077051729727d17ad4b62a79c4eee4d656929d9aaf926575cd5f31e4f228e555
Date: Mon, 08 Apr 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712561296

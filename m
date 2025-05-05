Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ED81A5B8C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746425394; cv=none; b=cYFCb44RF0xwmfbg8RmaGPzCQQ3vlxg8SNvBEmkH/yavRa/PRrALHLiuA3CdSYe9ZldxBCjdzuhwCww5XZrEhbFPqOrV6pEIytbJinaB4Zw1CfoCREOXE1mnNXNt91vTDw3R1dfrPdwYlj+b8rC3PVBOY9Jw1ZDCnUJHflH7m24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746425394; c=relaxed/simple;
	bh=SU5nuEwt3DSQbe0iP7MbNc2RTJIRQj8pihL2jcVNE48=;
	h=To:Subject:From:Message-Id:Date; b=Gl2cXqIDlnNY2/0sGprWCloVKb34yuUF7BDLsoS5EiWli/Igh87N8jPaxefQKWkhtnBwrM/1y/t2/Vy4rR+/Wn1g7OBz6r0qQCbC5xy5PRkvP/jfpF/W+2Fkmtjoz9Gt7ImytR1eHcFvx1FULI0Np9H/0HfKFJ/QAog4Q26rqMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdjLF4m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdjLF4m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D62C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746425393;
	bh=SU5nuEwt3DSQbe0iP7MbNc2RTJIRQj8pihL2jcVNE48=;
	h=To:Subject:From:Date:From;
	b=RdjLF4m9U8uA5inzwh4DPG+Ag/UEcQ1qcPbZAJbFJSoEZInzNLA5jTQLtEYWgImbd
	 mxeoygOBanWiLXD87xO9RP1MFhnzXE/EQ/I5yqKnM1a1iSltNsC30Zd6ddbKDMS5/8
	 RYaRB/T+Rjfmp6VYaZAxgjcyRe4kSY10w4RrVHcc9EcIkei0D40pSIDcP22wFnNGXr
	 xUMQdyjZKOI9+nMaZDMYMcRrUHAqWbKUlA/vizW/8SI+2fpW8mIgOcGrOY37M6H9wr
	 aIT7THTatfYR+7kVKeR9xuCCtPIpLJbGc1CdTUwY6qHzYaCH3x7wIUn+SPH3Vj3y4a
	 Acey+U9Tfr2tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBFC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642539357.29636.1457174210696597149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b752696a6f6f203d39c3f27d3ecf8984c0b944fd0a4ebcc7932316234769f5b8
Date: Mon, 05 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746425393

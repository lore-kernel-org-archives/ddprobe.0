Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3821520D4FC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791405034; cv=none; b=FQLYerdQboKSxalQFyOtmLYiGWJxMskTYzGGMcoWWMo8l0HCnK6tHvSHM1+NuaeAMDITwtaX3UybBkSNn7pRgh6rzDL3OUDTX+MWOShMHBK8kxy9eXjJIx/PMShRIi+rzOu/I+y5W902zfdEFQXloYOp/y++YYQXVxb1HTK+WwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791405034; c=relaxed/simple;
	bh=dwfaKRFPccPr83BbB+A8Jtjd5jhcC8Xx4RqlzYIT39k=;
	h=To:Subject:From:Message-Id:Date; b=lcvD+x6aVmTnZdF0bJCRfqDeQFyc/SPQ5BqDsAxoYPvxmfIfJo824LJZdtdZF87iuWZwaOSmRFkhVURmpUW7iV+9VTCaES0Ns8fp7Vk84ytRHF7fpvO8b04DGgTdPHvEfY3NXdvWlSSXkEskZiKhqhgXbfjuHgFwjMZshaQZ9NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIdhAGpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIdhAGpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF32C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791405033;
	bh=dwfaKRFPccPr83BbB+A8Jtjd5jhcC8Xx4RqlzYIT39k=;
	h=To:Subject:From:Date:From;
	b=hIdhAGpOblhzlzbIgSNwji/LdLbxyyFb195mkmbLISWo9W/8PKFDuZoOQIFskajAU
	 OjIepHBtIU6//r+s3pMCt7GsR7dWnhvkDI9qpejJsP+0GFcPfz1+G9SdAdpqo0hC9F
	 juCtR4iTekpgAQQcIi6aJhqkH0pEbCe3f7Whfah0xqxLRZYjPfim9WFhCLzrOXhUhP
	 VaQKM9IkCOWT1eJ5LmeM3fvUH3ioY5xxzOyc14N8Lei+pMTOmHiWuAVvyzIAorH7gf
	 waUcB+Thbgk6KvXFtX9gQrLLikNZTGkPw/d2La2ZD6WovNL+/JuTpt6vl6lwroMqJI
	 LKwotNAVMgU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B683BCA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140503373.21465.9357424018812122098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba67cd451a99741c31df9a4045b1de7ba62d73f1d165e5164be471ef4c82fc93
Date: Wed, 07 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791405033

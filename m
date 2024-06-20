Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E451CD2F
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718854163; cv=none; b=ob3DxEFbWdtlmJr2JVMl0lL2Pwvh2rOB1X/EHru5sDgulm65TO+VP8HziEROIz9upwY0Wq5/+yZiM1V/fbCwJnyJwIG+JknW+qb6HWppjbbf10FVqXzmkUa4cEYXuLTJiS6kWWX3y2Dzg2W/L23AkfWOHyNLWwB/aNwdALtXMiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718854163; c=relaxed/simple;
	bh=Bgumry7i4Y0HkkKh4bbYv8+eMtdFldophNyM8t1xvwY=;
	h=To:Subject:From:Message-Id:Date; b=RPLzqVJntu7h59CmMynYZrD4kjNaCOXblcnDNurElZuycgqCDfYTru5HF5oaVSvdbdwnLGOOVfyQD+xhw6uMBCiT2d6tUv26sRDwOnyAo39HIAEEfawyxr6ROkn8RlKp9FL5xytum3E6QTWPZ7hT28t9jw6kczi/NXD8MYIii+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apFC7PS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apFC7PS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D650DC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718854162;
	bh=Bgumry7i4Y0HkkKh4bbYv8+eMtdFldophNyM8t1xvwY=;
	h=To:Subject:From:Date:From;
	b=apFC7PS3AegGdehqkXtDofDScn65kf7mR/RDkQ5CGVouTd4BRRCc/EvdProVo94k8
	 t053vHtjNdqebwbNGBMhUOND/904pC9qWZioAdc+BPI7+PYoDjmQPDctti+iEIKpNQ
	 rnekK7wxkF3WWFx6zTcySn2NDZzmjxEf6aCA0Vz5jv6D1D1H18xZEvJdbmeGY+4aKG
	 5Y5T9dbekHO81vdvs/pjJ6ULm8sBBGnJA51FSvMjZX0AIUOyM601T2sG3GeQMqZ+6w
	 D3sNAXQJ1BAo7jgEdKMvuL0tQAjjY/NIAjzOJCVoHUITRXt9CQaDw0+JxcT+5r8HaJ
	 nuUeKhc+dGf1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE751C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885416277.24893.2255434153585809716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c81ea59ef4afab002de5d06f6bf7070432e47b86fdb04955246a55afb0c4f7a
Date: Thu, 20 Jun 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718854162

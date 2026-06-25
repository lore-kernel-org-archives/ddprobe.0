Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A422882BE
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782386254; cv=none; b=K8KFD81UIzKaK+MdHmsl11cofaKttaJjWoCtBVOw/msl92mnwZmrRsbd5n9rLdu4h2rOp/h+zhSorm1uHnfXe0fRBvGLiu5ScfXWMqooX9xsDFc57QOSqLPqoRrrT8DEuaUrGnVyP7UhQAtcvDsfkykk0os1Em6YETR08P6g9xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782386254; c=relaxed/simple;
	bh=Ed1NzFKvKElvYiAUepDkXtGjydT/wF0PIK2cOOK07hE=;
	h=To:Subject:From:Message-Id:Date; b=fTdDI5ZEKdWuH+54Kg9MM6CDK3HWtm4J32TAGMs6oI7/bjR8vfvni2mlZ9weFOcFBCY8uadpaAsjhupUPFDURaZD1kcbc6aHMy5vmPSV0FDL+Kc+D6FXoZ9CmMv2Tn8UIpTkmtJtqWt1UEDTCGjKWHdtupXF/C04hHg2r+rROCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9zK4NXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9zK4NXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F7DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782386253;
	bh=Ed1NzFKvKElvYiAUepDkXtGjydT/wF0PIK2cOOK07hE=;
	h=To:Subject:From:Date:From;
	b=G9zK4NXCdyomRM+nCYnioKT8UIfjj6Y25JHZkMuYBTXprBrxh3jYXyoBUpqg2Syrm
	 sVUyM0/TSUGERmJ6U0nvfd2vmnyMVdg82eulYXdEeyFlBx3BFVLdMVm6a+oEwA3fZ3
	 +THKRKy4nFvhzRw+its577mV5gJlxmPJye6qKwRSzND6+Cbx56yUgEOek4Ij1dis6b
	 ez8wSeqXjqFc5VnJguduoVSps2jgO/S0bOaqFCbNGdWaNNFMOuAtDocCNRNw6xSwP/
	 5s78BrWLkZmKpCHRjPBbp7nEGOQuMEUivTGLEHNu3nog/C4kwxx4rhImKCem/7kXfO
	 iVnDOBcCYoIMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DB0CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238625374.18658.9924704106351752666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcf0437da7f0dba8122b8b34dc33b1fa9963c6a77817a5f54a7a39b809782a6
Date: Thu, 25 Jun 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782386253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D42B347FC4
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778959234; cv=none; b=AIV+XhpLMtM5MsqZeqisNFD9W9+LwpqBOE157vYcOwtIjz2GivtkfsY8y9cfYM8XlwSUPLDAH1CF4LmUoM5gNXUbl+nwCdtHwJqI2JhvxTRvaNjsS9A9WEPe4Zm0fCDQZ6oA9esK1f56Vky3gDmMGMiIboHjBTANyGferJYn/Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778959234; c=relaxed/simple;
	bh=mnOF7LUsOLIjHN5TNQ60C0WqDHsq18J7B8Iu2ugXxi8=;
	h=To:Subject:From:Message-Id:Date; b=jaf2FTPbcfKetgpBvkOrmx2e82pDfhcZd/O13ExZUrkz7kVrwQimY1V8xF7+mgXdJoio/kocxlIjCFFdrd3Or0zmgj7n1+ry9b8JqhQMYxnUTbkYDpCCCf4Na1mjMnDXvzu+6wSu2PwQs7EKOLgwT9GkqZGcxVMYCcn+i8YgLRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR8B0HRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR8B0HRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99C1C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778959233;
	bh=mnOF7LUsOLIjHN5TNQ60C0WqDHsq18J7B8Iu2ugXxi8=;
	h=To:Subject:From:Date:From;
	b=iR8B0HROHjrYmeXRatCLCdpUrRdMzKEuJPWt5BhejcPaDcfzErcreC510b1oqWHBb
	 Em/+4xMGNsn3CtmyPaj5idWdYmp+tto8m0rTVTdGsHuw/Yx2oWCioLaloml6PvBWt7
	 fAsj6gN3hnCxHHluA2tH2j3sENM8479oxqOuAqrm49vuvSi5JP2L2lTx1wej2IKjdn
	 L1GKhBa9BAl4GCp6oNT8C3UOO29lIAEATAV1j64A17A2S0Jdr3J31Eh8krz43kpBvk
	 HF/d8vxviACCl/xc4jTeZvEwId15O2Mvqs/L1y0dQf8OxguSpcU5bxuiwjHv17P7pG
	 h4Ub4fE0aorjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA189CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895923368.25229.10950803904945329135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68960db163218d131c6d6f10bf7ead96a39cfc6ccce026e3f6385fdbaa09ec34
Date: Sat, 16 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778959233

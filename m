Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564537BE63
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780317874; cv=none; b=LuDpvUU5KzdL1FPJSO+9YsTb6ni92sGhmJwZCKPvsb8G2dCxnIQPsXiBJkszdxTWH++0xC5q6AVCIQcQORydzu8hZtUQSzO320aB8826KYySEEnuazhFlhYR1X7zumUV3xObSJ/tpGzQoRYlheYyTQJ/hHWx1MSfsV9UIxl67Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780317874; c=relaxed/simple;
	bh=TxhAg+IU2uUtXeteFWvOJHvOPFbJBnvOJ+CfrCxQSpQ=;
	h=To:Subject:From:Message-Id:Date; b=U3UZ0ODRWgkP7t6nb/jpkaMNV4og8qwmW7VVKBjNQ6fwqJuRLDsPtLD+srY1ki6mtIVoK6qDJLOV3bSxNYqjMg90Y6tt7juRJSqK2q6sETjF3I8vYg4hRbkXzvGTBtATBw4vx0TgUMTQhyC95jzVXT3MavqER/M40Ufg73NQsoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tirnqvo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tirnqvo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23B7C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780317873;
	bh=TxhAg+IU2uUtXeteFWvOJHvOPFbJBnvOJ+CfrCxQSpQ=;
	h=To:Subject:From:Date:From;
	b=Tirnqvo2AvllhY69r3VNzNYyFv23PEBPw2t/XFhjp1Nzt0Bu2MYO2JUllYyZdqKY6
	 GAtVghVdi8i5+DSVU3FL8pfjRY9fC5c/uAwxtU2g49oTrzpBDWA9udzRtZDB61WFx5
	 j2hBFyWAGDr8Kl+v2E6wTVCmk3nGmDoZ0DF8kePbxkjsGGD1DZCrftYQADn5ZRjgRi
	 sVoFLBZK7FA69GcxN717EV4VcbW7ylHRFWZW8nC2RKaEZCioVDGkldQ2HzmBRCLj7+
	 uiAp75Y4g7HDiEOr00gT1CnA0lmzXJlGnLQ2T5BrrM997sP9HziR4GuXP/JJxnyyT4
	 83FbClQ9mDMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9752CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031787368.14281.12154391895556583248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83420db750d1bd5b8f179948ab3b7c201e11a2c65fac942247544b3cbd72883e
Date: Mon, 01 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780317873

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BC72459E5
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784472514; cv=none; b=L4dnZfHxDnjUSW4ELRZQlGKQ9wJl2Ks//xfdp+J5O2ZHjKPFiW88oKnqXso9ThvgeYC6IRt/giKLfsI/NMQPg9De5avvS1ePM89rYC1VjC+7Rx7ZKwJJtTAD5fDFe8claMU5XBM2cMDKbpWBwvTo8tt+QnlBnfTVy9zFnfbiidI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784472514; c=relaxed/simple;
	bh=rTnAIC6CKHjsXAsZYFZ0eRf+rMhW9YJ0b6BtzU2XGpo=;
	h=To:Subject:From:Message-Id:Date; b=SAKrN1ndFpFgQY9GfDyFJ7LhtfaLYM90OO0bEK2ufOypyGm1Jfdvh9F5Up6PCp50mzjDviw5vKYlTrR0/n8SiekEHBTtpGfs5thHydVCud7Zoue/im8t/b6UxEBGTXXPXFa72DZSL1JRSdxu/k68JkMSFflsfni6QeHyZUYkkM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uID3mxA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uID3mxA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA645C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784472513;
	bh=rTnAIC6CKHjsXAsZYFZ0eRf+rMhW9YJ0b6BtzU2XGpo=;
	h=To:Subject:From:Date:From;
	b=uID3mxA18mTwPoPnL2aHeP7X6cigcBbHGpvNM82JGCDFon3BPIDKHaV8LmZTGEvcp
	 3UIZPEXHR64SSFbvdTtzCL5LL6ysIjDmWPI4uSS4/8JzINOPhJ1LLgLduS7aFlCJbg
	 AGtPOr8W8h3bTMYtB2dRZEp49wGgx1KE+Ho3NNpmn25V/ZdSEu+Ot0C0cFk5D376kB
	 aTJItfEFQ72JYbyP7b6nBIWJ6z/66Z5FICYUpTYzOf7fk/fT5Dc0lMHb9MOgDUCfpk
	 QoD7Nyc+1D2UaQtURrBfEIno3brnC86Q7SUJ87RfKCguZc3de1nSc2v8JsGXdelcZg
	 gbZjmycvGErHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7643C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447251367.6763.1994434446223260086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5758b669d8fa494e2ad2f1a8399d4fe75ff0c449cfc56c98b11a406ec1b70f32
Date: Sun, 19 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784472513

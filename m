Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195F82EB5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800394; cv=none; b=pt4aUPnMF2lWGkxPDZ/YIpYCRuogoMKiRFiFeKlRaJDRwKhMwXRHOj6lc3HZaqRtyIxXSazjoXOB+DeXmrX3cvTzJRRuRA8yW4jMzWZnlaxHK1sF4Ur92NpCUSWQVvdJVfGZj43ALO0DLy4yWZHoMV4Ce1f5MddIlsgu1rTJ5sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800394; c=relaxed/simple;
	bh=aLnwSreAwa5VIGH/4rGtkJKaJS0MQkcBG5XDp02q6hg=;
	h=To:Subject:From:Message-Id:Date; b=dg12lRRVj8L0h18vazlA73Fa95e0A3wHJ3TRs3bkVEhJ5MpyxOzWAetvv/5RkFD735Co8bYvccEFAfmPyOdeuc3hjyykAqral28jFTcUz99b/8TVKtwhymDl3KjnC52edz1kx/ioHeiVwjzg8V/wLfoOSSSetULwEDiwvBY/914=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzQnSlRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzQnSlRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758800393;
	bh=aLnwSreAwa5VIGH/4rGtkJKaJS0MQkcBG5XDp02q6hg=;
	h=To:Subject:From:Date:From;
	b=ZzQnSlRwFmt6Nfr8eE51xk8I4F5f8pCu8KgC7PQmxIOXXRqHhLpUf1WKXa6RMYdJv
	 7Fe34j5ZNfGGOOM3qfDcTnV3kvBA3mUV1LwX/NJ20zSSa4wyANc6w6m+shDFtqnNuj
	 btbaiNusU7l2EvFQjEBrcXiOvyv2IxM1tsP2pPzQCnuTW/ggX6t7UJnAack1svRNuq
	 aMHdEsonrGCrLJP2UN05J9E8Ug0/1mK6dqTGCrx7LtXomx8lbyXYWGYSHE3Oy3/hAL
	 oLgzPWXdfM1+iUnMOg8Y0CCEHZYVJW2BoKDcOKl+f7CnIlBanrkyCHig4qIlPNIVaM
	 XiHDYDUVLdhcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F791CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880039357.28655.13036937764340831261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257659e521a2a70f8c60e39839b3f7e99a6b7b397f4669e2414db3df70bc854e
Date: Thu, 25 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758800393

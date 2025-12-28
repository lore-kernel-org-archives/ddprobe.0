Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE002AE8D
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766882034; cv=none; b=KeUPliCRVbboJjohSKO1+tInQp1bjFajKeRcdhMvNOjvDkUsCJBjbLo/8jJMapSdGsdlZR/aS2fhula4TFsSLj6kRlFV5fa6ZvWF9RaipiXVsxInnRIIwGZ3ZpH36x8CH4KmWQcG3w9xfZw2nCIpWLmskf0ai+6tePpJW41kWGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766882034; c=relaxed/simple;
	bh=T6FexXfTAgE5IXAcg2GK2Qm/nA+hTIXmAJzL0LeZKJ0=;
	h=To:Subject:From:Message-Id:Date; b=sF7hp6WesP+A9uylIIxnrRWLjw5UmnuiqpRMAGKPi3DQSjE1E1gM12R8fwwRHwLDmKxbVXwH8KcExNbRVVxsdT33/dUbQtxu2HracjBIXVAKwZtxgiR40WrdBb/xq4U07rrfjznWmsd8MbdWERR3cPLg+ZjdFniHfCW9YfexAvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbVoKyCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbVoKyCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA644C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766882033;
	bh=T6FexXfTAgE5IXAcg2GK2Qm/nA+hTIXmAJzL0LeZKJ0=;
	h=To:Subject:From:Date:From;
	b=UbVoKyCetiiBNwCSqlGu9dAi3dzZcR4RquhzDjXUnterbm8LmRo9wfiCAFmN043h0
	 dUJDboOMEcWcs3qQLtupV5KCbrR0KFtiMyu7QTPqJmfeBDi7SECcQJxZAuTsSJKuah
	 4SfudUiHm/S/qKFqfL9qskQQ6TKZyn+HpCBPZuTDRaonOIsfUJFBUL2GRjs/ltfsMk
	 Io1EhmmUkGYd6uvKi9lmSB9C4OryNaXK8kjtm2V+IMe5QA/T7rxQTJgXHTO3E7jyk1
	 hANw3uDCU05QujBSVAsxA/f26R/afm2Kd6zGn8xuS7qhlrwAKznkAWHiePRutlDry9
	 bwzDoF33MrPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C6E92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688203358.17680.11418170108832680538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702b5d0ed57bd2ffb9c03f36a80c3c1a3faa2dce0a405039b0f187150386696f
Date: Sun, 28 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766882033

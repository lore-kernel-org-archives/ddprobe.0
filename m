Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397F83876C3
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780826074; cv=none; b=AGfNwmocK2wdBnKeBdJ1gcry1gflLGHZm9UtBKfYFvz6Cc6sdtoA0w9zvNRRhz8P/Rdp+C8U/ifscl/orZ/70wxYSJD1JMrxv7eJqEYV8MNMBMk5t5SGTTYtsxsF9Nm0S4nqS+wZL5cNEbgdlTr51Qv1Nxop7nZkwWBu4vgRQew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780826074; c=relaxed/simple;
	bh=Owfs5532vnAo2cJ5C/1yKtFxyYzVFg1Vyw7AYdiuMJQ=;
	h=To:Subject:From:Message-Id:Date; b=P10iev8J8GUcSOk+RnPWo8aD5pUfj0mOZEgWCiiMvAQvTgR0ji5rN86ozrbsEY/RNC86nXJH1gOMCCAa+r8FDYzuDKjeFiw3gDODWGGnxv21nfn3wnF9NGJe03rnzP4SmwDpMZbrlu6cIvp/Hr0SMYLMADGdoBF2V2DeUeBGXPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxvVVpjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxvVVpjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C749EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780826073;
	bh=Owfs5532vnAo2cJ5C/1yKtFxyYzVFg1Vyw7AYdiuMJQ=;
	h=To:Subject:From:Date:From;
	b=DxvVVpjTkhK0mUbHlopwOIHyJf/Y/gqfeDKjqhLrmFLjZ0DlI3/GcEJqXs/B3h6Ad
	 +HV5JZ6pcdtSVQej3Chb1n/2XHHcfPQTxsWTBFi+Vc6kQMuZTGuCQYaH1cK6m0zJRP
	 EmhLrU3R7XdBY38O8oZeNclXTCcpS+SgijnhuHmMQT2K2ZmYzffxHdH/bNiVN+oUDD
	 uupNYYg/LC0gRPETNYbiOihFlPTM/twwwQxLdr93RtNLDndgrCfUGh3ho250+21hrT
	 5rGD8IMFvjCHF3QbWQ8ILgAEht7c7cFR11jLneN2GmBZfYbbnNpWHw2ekNCJ7j7Qpg
	 W6la5STRYKZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BCCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082607368.7980.17911548651555750548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86af0360cceccc645d837feaeb4e0687175ef042b041284e690d811541483947
Date: Sun, 07 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780826073

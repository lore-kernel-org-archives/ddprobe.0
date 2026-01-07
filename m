Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107B723C8A0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767819234; cv=none; b=D/A2THJHIebW9GNbwerx11HnwG7dFfmYC9PSmra1KqNtjG2o37ZEHW6UjaKKfZyfHOwh/HUr8V8x8ZMAhWVpIgXMIpAc8weY3/NlH7CG/NGiVrp0AMKYMfg5l9+vPTxU/1STUoohtvqz/Qtuh2yMDeX8BFnxqPDAFqCaSkGIrQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767819234; c=relaxed/simple;
	bh=ccr2v7AJCy5372lcNXVo7vM6r9Tm6azvHGXDA8YIqLg=;
	h=To:Subject:From:Message-Id:Date; b=lsDnyOJqccJhaRX8IByKmryQIEO38+t+7sgCPYp6m+xpU7uIeqn/OkPhBuPm9tIQpBNCtlpkQ5HvTweyVzqoDcVy+9R1gBdOOIuBWZlPKPLUjs/Bwm6SzZEa+cOFe4tN7Ygr4vobf2BoX9/bHOlwfQN82VRSO3poS/O9RB2wdVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muabuC2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muabuC2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C934C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767819233;
	bh=ccr2v7AJCy5372lcNXVo7vM6r9Tm6azvHGXDA8YIqLg=;
	h=To:Subject:From:Date:From;
	b=muabuC2NW4DdMyGP/MLKiULDjRD7NWOmpSGN71hrIuK8OAbIdjQOt4j3q/rxWWoq2
	 X7ZaHgVr3sf6gl0NRU2PgFB4aAL47mL+Ayh4Ey3tOIPtKOAkCiJNaamu435NvURvX8
	 dagNSQrT9uDIgiXYgTjuZ28H9fvt1dBQmD2FQYmiQLvbBsihZcLp/eLUmCpMT2De8k
	 s9Pdy3uk0oYk3h7WIFp3u1mXqufZH3Zvni0zt8fpg/fnnkDVlB2wKhOT65fnXbvXu3
	 jqag1bCHdwfLT75KLSdItrQzqD051IGR0z7cDh3sBFWWXVrp+l4ED36UoWoHsxA5Z5
	 yQyCRfjv+QfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C7D0D171
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781923358.11017.4343106915633511214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d093d6ee5b2b80d603bcaaab45c4dec86ece8b58ca0d64ac81bda35b04bf4e
Date: Wed, 07 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767819233

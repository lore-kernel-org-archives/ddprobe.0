Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115EA221540
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754723994; cv=none; b=U8T9vKmQ3MMK5SSTzSSV4KIvwy9GWbwFsLLO/xw+9gn3Biq6HAxC+vwLZv28C207JMiSQHJdVWSDi8n5RVpgjQsg7SBEDZuVhKO4rSHwtm66SnwH9JhAInNHdKw8l8sFor2tpuljdE/dkxdMzkACWZbdU1+2PmPpLrs3PfoyCX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754723994; c=relaxed/simple;
	bh=9HNUP6vSZ3DMMhrDOaeTkrW/oV9LkTURsR7KUdzhy8U=;
	h=To:Subject:From:Message-Id:Date; b=WHxGVinQ0sCjIzY1FIUvPSbeKKQz2wTZ8ZK09pmzIrnueS5wxeDZin9TbJRd9fxsEMQd4pGUERMzqwHUUta6yl4IFxrFo3MB7CcCTf8ga1SPa8KuFH0rXKmx6IwfDYf3Jr9TnlRHz8oT0ouai2l7fax7RYpk9aii2xmrWA1fimA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsVVSwpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsVVSwpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754723993;
	bh=9HNUP6vSZ3DMMhrDOaeTkrW/oV9LkTURsR7KUdzhy8U=;
	h=To:Subject:From:Date:From;
	b=DsVVSwpqu49HXO/Vr8pbuXwhzpiyTcY8slnVhrCHt4866TraJR7leAqHFZyw/+O7z
	 L1nBbSSU1fr9dzDQllgoYrTMf927zxqTwAK5Jia34V5aCe5KQjOv9iPspl8C0pWe7Q
	 acAqeOZUo7AJtewVYJwbZrs5z6Djq6R1Zs4VD23nLmTpWM8HUSa499xXlJcisdLEyO
	 Zt/9nPh4NhA1JXRCwH65fAT3fOQRlWgGHqvWJTa3wX8yb1vrwkdlxCTYqp+2xl2krg
	 2mIx4TDM/vjaT1cu6VuRDJ5kHz1W7za9gLYeiodig9NuYJMha7NAiBfJuFsN/Q8ItS
	 JICc57NvuTVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FCC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472399357.5935.17213858390674193208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f3dc20b16eab20fe1f418093eb0c98b118b69c9519392957c573f266bf7c24
Date: Sat, 09 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754723993

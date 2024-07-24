Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E901C693
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721841954; cv=none; b=pa7J61LKzRsyYX7Jp3kft0EUCKFE5t2K3Uafwilh41Uxa9dFRHZcS9nPDK0vo0zRRs59TybyDo8T562Oe97v6zH6h4hyfD9N1NGNMORnInmqtspS0DxTXuGiSh4l7kiuL8+l5x5+Vm0Q6ra+WJZLZTSH0u/COFFN6AwT59pu5UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721841954; c=relaxed/simple;
	bh=OtNTRS2KVzcr6op3LEs/jF97itE3hr3KbPiNsVg8tgc=;
	h=To:Subject:From:Message-Id:Date; b=K1/NuH+mXBcw5gosJsUyU8s3F9F1mrsy9qMjwLB1V5J8g7V9I2oZh+vFyKArUmJgBufG6I8ndpKJoQxBgesmTH9zLWNvLIuoYdNqanwUVg0l0nlEI88z5tTvFF6ceJX/viNcF0uzdZoTCXB7zow1ZgYV5uWFebFQNPDIoWe86tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDOGDmSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDOGDmSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7D9C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721841953;
	bh=OtNTRS2KVzcr6op3LEs/jF97itE3hr3KbPiNsVg8tgc=;
	h=To:Subject:From:Date:From;
	b=jDOGDmSds1qciNHStxrqAUxcF/nwILOkaJQGMDBOxzAqx3mEyNiiqsodBu3kR4Tl8
	 /eAYkf3Jn+5JTSnsCdjNyhz671q6luaiUpk/3deBlsFLZ0KTT1+wlEcWGYrZ83tzjZ
	 99HghVp1JN+rdAIzA68DakqpNvY8lqekXkZJysBdY/nsqoP2fCpJDeNAZkLFi3tH+x
	 XNhViVAAaHpqnN+GGA0oIb3B4UHdTGhCKhnz7Qv0IDwrExuqxOOByRGrpraK3ZTJpQ
	 sU8RMxel80vPPDsUmG9FXmneWYPRkoWAkKRIDaLys0yppOTPT/9Zq4Gp1MZlZx3Ac/
	 x04wGHCyx/vsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B2BC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184195359.7483.12203309566984965994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9ed4ff8e5768cdfce1753ad9a16f91cd58fb9f9301cc89c65a8170ecfa8f67
Date: Wed, 24 Jul 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721841953

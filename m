Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DBE2E7648
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772378694; cv=none; b=eBn0rjURP5dWVjdJWf7AyxVywug6FgkZnyXUJWyhgo/WGp6KW1xBQPwvHw+tCQ2Op0nCXaKrSqb8a6dDQH8gIQgsqAaHczcjCrwmCrqmaNg+jKEPfS4Lp+IivdjP4yh/U7rQFEf1Z2E+12KPakwRYPjuLEiDXgkDj9PGBINb6x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772378694; c=relaxed/simple;
	bh=+dJoVjdiIIrHULtOl8qRG0OuO1Ny6X5V7mumFKo2v7w=;
	h=To:Subject:From:Message-Id:Date; b=MvA9mSirYqMfSyXE6ay5MTbFTTw5ta43Xno4pHCB8y2c6Q3Z+0hx0cisXDOxiQnAxQF/8wE6ci6JoWiA9xK+DNZ+mXrlWhXOgGFIp2CtZjIQx6RDFWbWkTO3r6p18d4p+z42Fdt4poIDbMOo0BIpO2j5ZAJ9PU+S8Ke0y6NR9e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxHDIfIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxHDIfIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE187C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772378693;
	bh=+dJoVjdiIIrHULtOl8qRG0OuO1Ny6X5V7mumFKo2v7w=;
	h=To:Subject:From:Date:From;
	b=RxHDIfIkQ/wuGxVsssgaf9tG8MCyax2JrXXBjcD0pezA/NNQUJlCMTClBnJAa2aWi
	 BDGwYp/rCHwmwafZRq1J4mJS+e/vS7R+PqmHJ3lLqJWGIAGtOOHzlGAeJ9LGOTiJX1
	 +gOeR29AzZv/rJLibVq/7PTIgUMgTcli/A7hD9U0bxrLlgx0U702F9FpXR2CcMgdV+
	 Y9JGjOu9cReBhY8Pn5UvehlGr44V3wnq6Rcxto3nkNlsfrw08g+C6i9dD29a1WVxnd
	 Z1JfrF/nrY/8xHAh7IHe87Tg1wxsMSwBDLkjibyWKeM8ofDqz3mt4+xwguM7Iv7P+g
	 YTWjxA/b7tIMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E97FD006A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237869358.18036.12620434972297899286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270aeced7ea990be2c97df975a9a5d1f0a95c0c860b3d4647a80ec4a22278a51
Date: Sun, 01 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772378693

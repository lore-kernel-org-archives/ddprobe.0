Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C221210FB
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722773154; cv=none; b=RELNS34sEkMo0aIPlW/hEW+yHdR5igDGgGdlIG0N/gHWdApyNrnD7DrBBF4cPpj8PlXwg6uWc/u9siVDlnGYkkIX5Qc+Nif7iATU/bjXHDhJCo1nCqqeDQo6zQm3UtRdkJE1KFK+MutvonK0VIP2ef/uYE2AWIKBFQD5OAXfZJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722773154; c=relaxed/simple;
	bh=XWdiiNmilpNcJKDdIqIiGb/w3BLEitFNJs5RGtEh33M=;
	h=To:Subject:From:Message-Id:Date; b=DlnJHHumsVOthIA+DujJP6vvZ8P2BCa8HqbXbnL6bgTQRmkS7tGLtRZR5nKNjzTs7oTdNSzwKwMSuZx/F8sp8/J8DhGFbSb5BTWgX48gDvh65MnJBMXHGRBMlcukbZFwM9oGt7CIbfsMOimqxYGQqjMXf4EWJDKU7ec9ZoXyf/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVVsF7Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVVsF7Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1C2C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722773153;
	bh=XWdiiNmilpNcJKDdIqIiGb/w3BLEitFNJs5RGtEh33M=;
	h=To:Subject:From:Date:From;
	b=HVVsF7UwFbQx7tcYnT1WB5I5I/eFS60grf6C0LmJUUd2nJCz71hbIEFNqnpwG716/
	 fS/xAohDXOiWLsqXMqylz9//o/tDFB7jHc6NmETkIjO/kAH3WS65OtSIZdv5OrrxhW
	 rlhTaI13sJH7AIP+F5PfcOzi/UNrMQ7AW5URUemq+3yW+o2CjAL3dR9e1tdQ1BZTYC
	 jSvHyr/bnNDsZLPJjg3HW/w3dc+IcqDXh/6GYE6JidO5JMwGEENZ09hiFR1Bud8Dze
	 nk3t4UCjG7wa6HwC+DECO3LKOemfW5UOAjFCB6hSm4cmEwQCIP932frmfoLnjT6peS
	 NVAVwc51/1W8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97707C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277315361.26697.5331456058068474234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1766a0a280149fcb240c3e69accc62481732d8e0702d10cdbe44a555cc773c9
Date: Sun, 04 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722773153

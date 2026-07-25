Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5466A247280
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784937634; cv=none; b=ZDlFs2cVP+KcUtQqKD1xDP0bN/fjKcAuEjRGxUwoJQmJTGS/qfZvQvGcU/6fS+EBOei+NsGe3r111vvpzt+aog1kyzKRFK6wiiDvYyk6UOqm6gSSO130Zjtl90InXf1fXd70gxROwd3M0zNUYkkhfTGtU0wI4SGW3xhinOibLHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784937634; c=relaxed/simple;
	bh=rtKDApGSJZKrKE69xo7PWqpUwB8jlssaBbAGXEnor4E=;
	h=To:Subject:From:Message-Id:Date; b=Tx++s9cAzot7oh4k8z341nn5cyyp/wN3lAxmFNZQ908L8s1DeyVpOee4NYEKGVbYyfjpL7gLfi6pXctNTmYgEuPnNHY2U5rHQZ2GQN0acNV0Im3Qi563d+SbHiUBYMnTQBKfEFaO2ixu2VnySo2ZONtLWmqFreeVE+6SpxplOtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIjfv8T7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIjfv8T7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8160C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784937633;
	bh=rtKDApGSJZKrKE69xo7PWqpUwB8jlssaBbAGXEnor4E=;
	h=To:Subject:From:Date:From;
	b=HIjfv8T791Z0OPoQ55AZ1wBUrPDnDXzGYyQyOnyOdnpINjOUf2h0jOOFO6YeffPo+
	 FPfk7gJaTZ85zaOO2q8fhOuF6Ap4nHYiuw6WT9iqIg6XLJ0RBL8JAqjdKZWBd27KnM
	 DjFrv6VV5tcEREG2RNLu0NxB8HjAQ/BvHdzIIOROyKji+fVGKKayRaKRlNCcGOLFzC
	 R7AsdgIQvnRDZRvFXRhYuJeaYTU2IOswm+Feb9YASQuWDh4JFnxO6SWNXh+eNhOM7q
	 PSuKJdyM83MOe0LbSq9CdGzYCewabEoCYDXWigD+ZOXyuykVpK4n4WmkQ2l2pXRKoq
	 syuDgAuI3reJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB80C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493763369.31716.14687081780798003162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec247415b1eea897a2fb903f44f3941f7446aad659f7193f762dc6c3624074d
Date: Sat, 25 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784937633

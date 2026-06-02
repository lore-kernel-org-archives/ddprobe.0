Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583D13D332C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780393474; cv=none; b=sJjIer6MmdLO15BubsGr0yHL0vRyulnt9z6LUr+iIoF4uhG5r9WyRiIelVPN5lXZHLEMXFg5EihdrzQVwOqsYJzhpbbOk4LQK0aEBAxoASCFiegqgE5cnybZ0i6fFC5dmK/gSVTYTPrsIT+7qTlsqOfpng0RPER2rVJMCwMZ63Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780393474; c=relaxed/simple;
	bh=2vvIoYwHM3p4SKex3XaAteUYI9dgqAoyHMdQYbso+FE=;
	h=To:Subject:From:Message-Id:Date; b=Rkyj/yOuS9DDLZs0g68SwI4ShmsfDhz2v2WB9Sbc9S9n0x2IiUfDymwcve5C6I1OE2+G6xmMGU1p7eU635fZGRlKN8+2mCzBdoYMXs+xesHBQxcMi9OKwdm708SXvQCt7k1+4fiuNV3mbTjrWhBGaNW+gU4kNI6UCWD5jThhCx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INbbw63C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INbbw63C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BC7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780393473;
	bh=2vvIoYwHM3p4SKex3XaAteUYI9dgqAoyHMdQYbso+FE=;
	h=To:Subject:From:Date:From;
	b=INbbw63CBE8Et2q44E4Kug0vL2iPsxLwhSZCuhxNS2wIEjvP+I8x0G3xAgDqk/w5a
	 7bF0a/qksTLgOzgi915RaWtP13JX6v6E0/ncYMjXrTgdx2RFxtDWm+L0jPQEa8KOp/
	 v6A/qr+ZYtkkTGERotJlgvDIhEsdx/esM368S2nYw3GK5IEVa21vnAwuad/dY3UQ58
	 uc1n7c4DlKKfSkL/r8kgliyRIWSXUKixqpvheZC9DdzIJzTj8Vk/HigQjJtMvQo5eF
	 i/c8gEulmSMM3cMQQSTQZLBDwkJiox2caX798HNxAoYnLKonpas/5LxgeosT+pVV/E
	 V9TjSKb9K+rQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A2CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039347368.30500.4349821084021096765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b86c51763679e415ca4c8742d39e07c012bb5b76c66aa7064c0eb0ab80b1161
Date: Tue, 02 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780393473

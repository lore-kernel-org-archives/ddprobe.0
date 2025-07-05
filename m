Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6CC1A316C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751723994; cv=none; b=IyJRj/EOqgt+r9jlQMVi1FKm0X7sqjHNiD0q5yi9ii0PXk+qkplgrZHHVIuysaFOH8rZM5rz39IfjF+Tv8y3RrweSQWzhHa0IGR9+ubsmVmQ48vVY0p3Z3/Vo1WB5dOeZZBJbDO9BRNTVRQz10HLKLurkPc2b9bM3CAFyKJlugE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751723994; c=relaxed/simple;
	bh=L7bnV64yLJUlRf8+62ukU356NYvyviWh2LdpK/hJ/mw=;
	h=To:Subject:From:Message-Id:Date; b=dYYobVlYf0igxHQ4HvkURNoWb/N57l228IxQXUrb0i3arCVsWW9OrN9LQN7LoJ4UQ5I1FsHweD9ium1XKBBpgagLeynyB7CnD43e5yLR+W5WL9HCpVJu6x/0P21nzYuYlvrHn5SazwUF1JeknZLWWiUkP8Mo0gbEYYhREyhiQTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGmtOmXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGmtOmXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9408C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751723993;
	bh=L7bnV64yLJUlRf8+62ukU356NYvyviWh2LdpK/hJ/mw=;
	h=To:Subject:From:Date:From;
	b=bGmtOmXIik5QGHpzRxXEb596hbZ3F6vXhG0E0EzzLM9AsItpJUZK3odYEapa6/yzo
	 CTBpbRHZfdKJ0OEcermXkObhf94v4+Q71xvjcmID/g5/ErGK5TgA4UtrxkfblZGEyp
	 sRHvbQoDZObk2w2+luChbpku8emwfnkM+boEkPrRa91egayKJgD6aaeVPErCKqYhq2
	 LB+GbuSpfOlW/CeQc1ZuitlxwSlnnlZEdkb/Cz2qMOaaeqy03AdS5V+hkZ1QgrhmBS
	 ubCMgVVjWwF4Bc57DeV3HbHY69xtuQLh32BycUxjcn0ZeGV/Zk+Kv69Nm17opt95zq
	 FJzktvCTOAImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D39C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172399358.6225.9415082653684283873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dff7c175dcd090640329e10a97f9c36b029b00f9b63c189b2448ed5b7425a8d
Date: Sat, 05 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751723993

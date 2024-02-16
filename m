Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D915F9DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708050497; cv=none; b=ZBBff8vUzRmth04oxpzqEqhchXfc1RSbZ2+XZJ3DUAFI7lRpJIqb5K4bfl22CIzrt29+ElyX6WlgLvy9hcxh3atNzlz2Uu8mdcsONDNhb6F2q1K/N8OPRp7ZkIStEES0smhvRaXqdJ0WoJV4IOJMwKWhZkZ94wtnt8fk6q1q+vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708050497; c=relaxed/simple;
	bh=KmdOQd/czZOGtuzZdj8AxsofjE6P2i7ucTshswE2C9k=;
	h=To:Subject:From:Message-Id:Date; b=KA9yd2Qcx2y+q2HPoXuBc9/WZLPteV3yTLO9/HqDg5CFCMc9+j+plVE65e4mUjlNfT6oCaRDjeauhxr6N/Io/VLLfwid8Jz07u5G5S1EWXkg5Bq/+690Nlu1Q1Bus8ySayfXLJU5IPyr+6VAG5J+ZbeWi9NZLW194e1I47IvkJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hl21Llzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hl21Llzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75300C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708050496;
	bh=KmdOQd/czZOGtuzZdj8AxsofjE6P2i7ucTshswE2C9k=;
	h=To:Subject:From:Date:From;
	b=hl21Llzq/yOwYLTXU6jGt2EJqICEBgGEZWZDahS01EcFtL3bATR8QA2s5nbwfLU4P
	 DP3MAV2A3G8IBETvUVCgFEhLInqOP3DakNrm0minybB3Tm2FUrYtAAU6y0i0xiCclS
	 NedbfHo03k99EsXNYLlsn7j5BWeWhHsLh0gPJCkziTs2Xl2/cOD0aReR43VpIA3cUb
	 CzpptmnOHjVGpqi8+bPG2f+/yNgMX8yoSr2ZvasYyO8rouJPmwLycn7hdlVsBz09eX
	 bEWLujvXU4MVBPRyoFguXVYuX0ZGxOOXfTKLJGqf1mGahdDb9qvuoP+BAlalVi7tqB
	 SIDNJYfGp1F+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C4F4C4829E
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170805049637.13491.14267737401498135035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c4fbe2a9e284a8d2e219076c639202672da343aec58678dfc7c8f085b47f65
Date: Fri, 16 Feb 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708050496

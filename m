Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FA1328B7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769759034; cv=none; b=oiUdaO/rKhpZV7sr2Pjb4lQkOacgHy3t4+9GBX0otORR3+UtrUDNTCMkJJzWgE2D6Lkus5BXz8U31y5mKd4WtRSwFlrbglOIG2NsPB0l/k5PVFo5A1HO03BBkOuoNl2SU5KSC+wyXmgqZ/605A0jUX7CWxzOhA2ZzIO5DWIWDmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769759034; c=relaxed/simple;
	bh=HTouDHcgroDzk8ruSAlNZeiShH6w5Z5ECO7edv2nicQ=;
	h=To:Subject:From:Message-Id:Date; b=gF5CCvfrsmJsazlgqJRQVciGUigMaUAiGGH8CUYdQfhjyOVc71RPwbzYkELsJwgPaxG2YIOp443f1BbxfIe1JAla+thyQfztYKyBY3nOQLNRdu/gZyPNe2hiG0xxOR2q4NjrV5G5uarGTJYOj7p1axSxcuU1xxeIMRh/xlM2uPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsLTFqQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsLTFqQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A923CC116D0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769759033;
	bh=HTouDHcgroDzk8ruSAlNZeiShH6w5Z5ECO7edv2nicQ=;
	h=To:Subject:From:Date:From;
	b=BsLTFqQrqG4kHx0xtpt14hj4TqiEFbDkpfLAlmqcL3Up18IfT683ho8eS/dHThsXi
	 teFXihe/+VzLgR5zaucDMUL6EkgmN5cjJ75WLoo4mG6MF94jwrZq05niUjIrFVY4YE
	 Vu3c6NRhax5IfhHJXvjw8SCSA17gpk1z2VDiOvbHUQ6ae/ijTe7OvGwStRQhH3oHer
	 GpdaYEdu6DWOYmnpWomOBNi1S1CfiSXkkMwwrdvkq2v/XxoQnM/xwGQkMayooVbAKQ
	 c4BFWsYxOiOSaa73UtjpZ2691gjNB6L/YqykD5IKEdoTDUGxj4eE0aM06YGOpk0VEN
	 rTHOWZftyxOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E13D49C69
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975903360.27069.6988183078282607934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dfc4f4ba8e1fc42f73c58640441cea7ee138a0842ab2b73242c7d92880a032
Date: Fri, 30 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769759033

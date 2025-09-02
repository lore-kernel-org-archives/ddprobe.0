Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33354189BB6
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756778994; cv=none; b=EM2u0db2y4CytynhtV3V1QPGMtRXNRcUFhBP+ifEVnGJ9Py45XQJ/WQfHEgxLGTgbMjcb5C0TbV+NW+2dVyz7Y/b4aQ8mlDJH+ohVYJJykQ2X6LkhtYRr+mfzO5O1X2fzgROPu5t7BJaxrCm5kfjttpoY/kvBoXVTfhIJAJIFSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756778994; c=relaxed/simple;
	bh=L5V7A1bupK/QwUNlLxAQSD7ThuYfjJYYgFm1lWMsdH4=;
	h=To:Subject:From:Message-Id:Date; b=oN3EIjeFs+TxDBJBHEjsAG4n2eRaLqDw3b3M18F5aGX7mAAiazI6oUKMSdGFUoo0K/YNmOrF821/1wmfjnGY5j3OVCNnSh72sWb5sWPuq8DRhA33Yn2c7NARhSFcAj+YN0tyoXP/54sNs99EbGYdAXbroqnvF5KrGhVsWvAbFsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu3Vgd6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu3Vgd6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B65C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756778993;
	bh=L5V7A1bupK/QwUNlLxAQSD7ThuYfjJYYgFm1lWMsdH4=;
	h=To:Subject:From:Date:From;
	b=qu3Vgd6ko+rA+hPHTVpBlcPlVs0yzlZ782jQ1t8786/W5G71iIINB6jTQz6eqbFq1
	 Vbmc4w1JdYBQh1jJ9ou0U/0AfbsvimmRrL+qWaSUCBoamXiWFTXEn5vvthiXNTCsTp
	 ySpG6fOj/dJ62Z46wxzg5aR/oWLvWKZ8tf17m6RAxf/MfssiCRXQIw83z58rcQkHN9
	 3QPxmRvJlAks3dz73+mtRmDXpKCGKwJ+gJUDhcDl6rwjvbTrzO0u/Ir7S9wVQOBbGM
	 71E7evAcUdkjDUV/cdzJn8muK14hxRNiuJ4UZcI82UOkoHpYYJAx2xgkRMcA68xMkL
	 O9SXMR/y4FN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FECA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677899357.5590.12489914384043048500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abfb3e4550f6e9f6967b1c0bc793d314a13502dd6d6890281117237b49b8df1
Date: Tue, 02 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756778993

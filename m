Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CAF39478B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788808834; cv=none; b=kFE0WhISUwgLQb7ps4LsB0BDYSrad3QFY0bCXKE0OS0SCJNqFHNVSJXycMRkkExLqLsPAIbw9W5znLUBAuSo9GS81E9DpbgZwfTmwXcbl3fcNOGrYQVyrcZ8EAFrs/bjwQWUTuFf76vSwZgHxUDMXTAuQqmZJOWBnZUY0jTdxZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788808834; c=relaxed/simple;
	bh=imse2I7KmuUH9t9bYYl8GY+wWVX0It+2jVggYH/iVE8=;
	h=To:Subject:From:Message-Id:Date; b=anGhlF69DDwaIz2gr3Q9XsOTIHZy4vAo3x8PD3EJSBDV6Qfk6FlDbKb69Oj2Iy7MYCCXqpjOa/vqYWmlY5M7O2AlKMhF7fWT1Iz1yRta93NhRCDHQwWV4o/SXJ3eGplQCaqIDPE+DQ+QiVftbm8MTrYPg3ft84duvhphLWnILFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX3HcbVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX3HcbVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E8BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788808833;
	bh=imse2I7KmuUH9t9bYYl8GY+wWVX0It+2jVggYH/iVE8=;
	h=To:Subject:From:Date:From;
	b=sX3HcbVdd88LdmDxbbHJos4YEbkkr1bHqX2RiSMSB2WmECAWPSfNe3GNzUolqMzhm
	 lDj/K9nSv4/p+QiOETAduJIe4NplGKnuBbgj06CWNwTPtWFz0iS08W1D80Sb7BG/eE
	 kU9lPDr47rYYmsZ64PX3Rd//ZtiuMQJAfHJl99r21NjmM4kMrh+KXw3BeNHKgd1P2m
	 re+UKczn9MbNaIpBfj/ifszbQU4DTwV69WeNysA42eb8LTJV5CbjwTiLG5g3RtgbDG
	 thQTpmsR/mcAc4eyALb9yOodz527BbhGoTd7Tj+ioF1NtrlI7zsdYTgaJDpz/wGVXK
	 WkxtBVFwIbbtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3759C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880883369.28613.14760810112429001214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d560f4e65a452d8868411ae358749e97e16e66faf0cbf6981539fb81819102ab
Date: Mon, 07 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788808833

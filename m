Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3015218035
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732086354; cv=none; b=YbN0AbraClSL7x16VgzSnXe/1aLvyrmBDxBLw6az5Zvh+2oZrIk1uzgcnxIOWh58dju4VXHe21+KaQQpPlZvyeGn0tOtmMfV0x4M06aNjzepmYjPcBa1mU7FKsgvfNmC1ujnG1c9mTWpIzbHLZijyfXhQm8fM0wawZ+iw5jkGZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732086354; c=relaxed/simple;
	bh=AhLw/sKlDbccQbZRYRS0X724kHwiSsFtmHb0ZEqwFYE=;
	h=To:Subject:From:Message-Id:Date; b=XP1YJARj4UUqoOEOiF2KZf/eNmpAfjWLTt2fLJJwxnkSz3pNIem2ZEt/WSayjMUQ565UoKRIDkc6cqVxvA8SIE6Rpr3kwR/DG7ac5jkkbmZdcYTDjStkvIIFprDsvIg/swNfAMHOxxR/GAVSoxOQMrkcqptBBHVHH8w2tTSpMIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBoaoDO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBoaoDO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF3CC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732086353;
	bh=AhLw/sKlDbccQbZRYRS0X724kHwiSsFtmHb0ZEqwFYE=;
	h=To:Subject:From:Date:From;
	b=GBoaoDO5g5Tm8pK7x2iYmH5O6dG3M7LZONBugYvtqi/Q3Qdrpx7gYFDoW4AMMxmEk
	 SvcDm0d2Hs2h+ND8hzQD2QyTRVt1xCHmLwUTkKdHPqTRODR3+Uc/kRjAhqv3VdgLGk
	 Ym9p5ctk7iFdyhkbRAGAOTg3xbuM4QNofhXvIM6+2u4Ol64lk+cyBaF9mpGkZFTZrN
	 MMCKCwWkE2gIfL6IYccSe3PDMcULrJQ/Ro5WIqWg5bj3J19ynClZOqA1iESjVs0wEO
	 KmDR0rycD6A5cxenPHu6aeUQmaUYf6DPK4j3Skz3vddicbV8yrdi7rW+dhkcmQfwqv
	 UNhIwZahMcSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E3D6E2C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208635360.11685.15643495822437573397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7e6f29fd12cd4c30b2554e6c312e56cf4b9db2fbf1b6c05b59be8a85f082a7
Date: Wed, 20 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732086353

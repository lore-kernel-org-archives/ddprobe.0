Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492D31DB92A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737800754; cv=none; b=tPB0XCEaNYenfPOEE26WLc66NhgRhOA24qdpfo2QQF5UAMp6ZJZHJS6ihx5HW5CL5H8hHwZ0fEBuQEE02hl4kZfqDpQE2OSpcPDrtxQiqAC78TQwsgiYgGaXwJqerpKdnXsfPSZ7OTgpdOQHVXkG6ASMPeaN0RcyRiqZmVwNVtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737800754; c=relaxed/simple;
	bh=2/T4cPyq9zcWjtxXzw53vrCOkGAJm8UOc8xKuFCXYzk=;
	h=To:Subject:From:Message-Id:Date; b=G9JDAK7brX1LNRmOS2P1+LDwz5Q3b619buQo4RYYIqNcT48nvkMN76sqNd1MgZ21RV1PnzfpjhRUE0t9iIjmnNjRoOrkfeGJpuUmvbxxcVTaEY4tNnPJu3kMlDlfWLeRg3CHyjqNGSSBMKRY8ewlsHVipRmwV0re/sLJ6DSCPJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2S/aAT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2S/aAT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4966C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737800753;
	bh=2/T4cPyq9zcWjtxXzw53vrCOkGAJm8UOc8xKuFCXYzk=;
	h=To:Subject:From:Date:From;
	b=d2S/aAT2n74geLQM3YJv+DdaWC4KfZDhKKZFh4x+zKogd7V7BCZw9zvTbQ8p/dWiA
	 gzbLz4UJGM1BHQrr+/pMqSj8+Ud9iMmSZF8rSYrnOGLhW9xLLZERHVCxYbuztYxv2o
	 8WTjeE6xknpDPRYHfc1Rgyuxft//x0Y9/KfH8BD3ST/NMwZto3peJaEVU+M6DAuYok
	 VaxIonjYT/mgbETVIDIfo6kfUwNPjLR+LBkPTnaHtxJbB11w123SFosVTr7IkT5aoU
	 bMe4x4IXDgx9x/KBrWgltkK7tlMkmBEkNdexzLErFVaE1DqZOAi8h4KTwsJL/PcOeH
	 To0YebpEsQgng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93288C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780075358.29969.3611941287050413864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf42f34789fc6791be96738d58db1b170a9afeccaf5e3f8510689f53bb84174
Date: Sat, 25 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737800753

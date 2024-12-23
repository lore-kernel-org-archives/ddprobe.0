Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4330F1AA1D5
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734974154; cv=none; b=NHQe/SkoK+r2ro7RxVXO1HGyxOnv8Qlw49coDqyKwhhO1rMdVQ8aG22Z9ilp/V1VVZHEd/+fufqckdEdnTKFLXkT4hgB5yX0JxTUn3v1YHAFhiODCrb1QSrSoObNugmxcmlnurQ+VNEqauKH3ObqPxYXtgDUfjL8fjGX5eg/IHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734974154; c=relaxed/simple;
	bh=G9ylUDTdLMQDHCjLdpFi8mbAPLVSkQdTjJZhO9IlT/g=;
	h=To:Subject:From:Message-Id:Date; b=pHHke148hNm38kSSKQA+8nndri+N20+jEk04G90XWOczcylHAhfp66+F03AeYrTTJiiYA/Rs5W8ZwMU8Eqok4Bixd30dNQpVDuwuJdC7oHskON6xOQF0kr1FRDcRSC5T+e+lVS8So/hZFiWfOop4BxQouwYQtbdL58tPqqV/Si8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNPJUw8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNPJUw8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1823C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734974153;
	bh=G9ylUDTdLMQDHCjLdpFi8mbAPLVSkQdTjJZhO9IlT/g=;
	h=To:Subject:From:Date:From;
	b=UNPJUw8Aayqza4wDlynjuCJL5q/s7IW5eugSSKl1yFYv56kCEBNO9r0ZnViQm6VMX
	 8Gdo+00DXs4Enss8wRCvG6ahSJD8BNwU3nFxFfytGYW6Fy11F3wGF/s65AF3/NI5nZ
	 3E2Hm8z1osZH842Dpj3fo/vZfvAstFwS93eC0QW3b5GIarCRy6MtpvXixwfV3iIYJM
	 tICzTIgOYrYF3Y4oL/lmdm1qgJJSWZlGToumVQIGQf3bkJ6SKjd5HLFCNBsP1mQjNr
	 XAa3+kHhwhE+mKHQb/jpgkj1BjCmNsP3Sj0B5qv3x0UV84mIzOfXsJBEBgqwAi/+ZQ
	 5rgN9PBY5qstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E92BE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497415364.18019.16145979518436255505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10ebefd5955738b57ffd631a006b0d8bda801ff8c5c3a48a9eb93b14b4c1912
Date: Mon, 23 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734974153

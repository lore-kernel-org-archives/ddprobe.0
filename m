Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374903246E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787776234; cv=none; b=PXfC8fQiQK5Zjmxak4epDVsBUmjQGe9PjopdhmjxVtFcczqzlZxUHWQzIflmQQiY7l7fJH68UuLKJaMA0GJTqg2U/IArT2wywwAp5UN1ZgI1KB3dYcRAoPSATW5FVyVA1ylKcCUhTmpHbogULp3VBIxhQdPGZxj+0qdENLGYTbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787776234; c=relaxed/simple;
	bh=a37D5kI4DD4yx5A8yXwZ7WXPFI34GZJZOyGr/975xAI=;
	h=To:Subject:From:Message-Id:Date; b=EEJ2Dy9u9NQyjhJt2WLy3sQwUhHeK1+7q3KKHjh1yJqtRfqga6g+mWUQwW3nSOGGbBp+kkARlESWtJPkEstDspnXMEzlgzs9xDpo4/c6Adpyw2mlofVcTKGFjqlYfUKfkJ+SOy+68t9OkmozL92yk4qTGv2TdcmSN9LHdiE1SFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0JoM1/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0JoM1/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE04DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787776233;
	bh=a37D5kI4DD4yx5A8yXwZ7WXPFI34GZJZOyGr/975xAI=;
	h=To:Subject:From:Date:From;
	b=Q0JoM1/JYywdEcZ4gZTgJXNUyL40b0zlrQnRjU22fxqinxYnxT35tTPFO8TEd1TTr
	 xb4m2/lcqrzp7pU6EHIYXOW5mQcaNetrZjW7qJarw9w1bUpl+tL/O4YD0WwLaRFsmO
	 8/rUNUoTR5wwnfhJrAS2YWU9DieJazRZGQPEBx71KJuBLoLJvIdbq5tX0CNx9hHZSd
	 zV5HxK1TrF62fRlVEUkOR0ovGd2s5Jb2mO8bJpWom2eKr4Q0CsreNwfh4+yLVU26Xw
	 MQyyL1c94SBpRFatjal5dxrRLkISIfKame09w8x1fOemT9sz7ckeyr8G80bGyYjLpj
	 SLxHjC3RzLE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9EC61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777623369.25767.4544753558129081493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79bb7d11f35e47cebee7743dd50dfdf73a3f7db56502dd53a3dc5465f82ed20c
Date: Wed, 26 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787776233

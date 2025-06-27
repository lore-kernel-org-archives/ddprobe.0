Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258108460
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751032194; cv=none; b=iZnN2zD4MXU7tgMD/ytoVXn03zyNJgGsItEpCUcC60PMZRrSzQ2jt7wLQrVPcI7hP6e3njBvsUujKD2+eE1YsfVNjOqspxaATLqYoW+rTTY8JlrvP91Col9rbNnUZZjsNomsS/ZQh5k+FaM/nwbyegznZPaItlhnn6oMSO+fXfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751032194; c=relaxed/simple;
	bh=JyVhveRI2SVdkHBwSNQY3nKVjKSpUud4eHHkjsnYt3U=;
	h=To:Subject:From:Message-Id:Date; b=X/iJ+5wyHujrfst7P/YtK44W2v4spFtOKfLqBw2JY8Bmtl+LYeh9aE+YTTYowJDTgtoACZq5Ry4AsN2/I38WlzypQnJUCbMV5thl3W4MlGZ8IUYCeE/Gl36E7M1tNYBNdJi51jPYcvi/KRmAExskJSoYcWJ6DY4yI/sMOB+4IFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfxJzuP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfxJzuP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751032193;
	bh=JyVhveRI2SVdkHBwSNQY3nKVjKSpUud4eHHkjsnYt3U=;
	h=To:Subject:From:Date:From;
	b=EfxJzuP4ac02vjmut8qU4Ov4I175uCCvnAO95v44SeMaEURj2s5ZxEsAFtho80RnG
	 R5gBqtZDnEZjnL/Ty3a3A/l3topPf7aSLIYuLtzWj85PIj7zgLijj1Fnr+qyzpQPgn
	 +5I0KG9I1vnMa3T/uwuGqWE1yWgjd+Y6SlJxlRdJcpMvqxKdqohUGWyQKX0uyEWPVa
	 M94Hun+0QNdhi3HaUtC0HAr3NvQZA0zNU659QRA8Y1uHpzFQLVh69I3cHZIoH+onEN
	 PEe4vwsUfMHuADusjeucDid295RqdJrPTcd+nkFIPIZaeOZ4IIkGY7Sxk2+sVRGysj
	 rzz+oH+58xO1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD8C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103219358.14514.12870928886017799600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0934bc5f28b599dd9067364b32b01cf25bc61fd8221788da20830c8410b90f15
Date: Fri, 27 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751032193

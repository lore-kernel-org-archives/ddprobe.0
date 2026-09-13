Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0581EB5FD
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789317034; cv=none; b=IFirUJSHqr9KuFPUt4/hPf3vD322o9lKbXDSCAbCZNBsbRhU8h9Yx6RQ7ZvnRq824LmfBm94ntn4tEdDDIHZckXQPflCtxeoVn7UO3+28+x1ng+mJc5/JAOhAzXCLl+Tv6sPSjE4odxD6EPZHl3+IfgKg0csc7kXrpNWIVkhqtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789317034; c=relaxed/simple;
	bh=1uticNh5r6vtMGccGdQw63jBXErRUdzbPCSISLBEWU8=;
	h=To:Subject:From:Message-Id:Date; b=rWUVFUbHmgZizTEjkjiiqaW2S2j53mDBuOcobqCgWBKpZqIWa6fVOY0Mn1pNJqSbS5UVZwcC8jRhYa7FCYiIRkLHhl/TRF4IGbX03ll/o3lJvPlGPIWWs5pOEf48nMDQM4E1jwOKsRw13DINfvKFmet8z7mMGPoIxsvH7M2POPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEt0RThh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEt0RThh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2905C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789317033;
	bh=1uticNh5r6vtMGccGdQw63jBXErRUdzbPCSISLBEWU8=;
	h=To:Subject:From:Date:From;
	b=sEt0RThhncs1MBsGvqMD4pQ7+trQ3hbNu4nqrpA1O3Ow3kcTWa6UsMf+AgFVgx6F4
	 4YTjuCwHWFwKzZm1Ryjdy02PTaFs5CiWNCgukGXFTley9ouyzgqTqRkSX57tHF0eVA
	 mnTEPcb4izwPc7iWb+fl/dVg3ObU04Ae06SmMhZtOfAx/zikedXbMg447a9usDmLsq
	 zZKATeFUB/0Jbobb5gN//40TV0TdC+pR0F1kKbGad5HaiQ9X6A7xys2UJrg7ulN5Ve
	 BfY535vNaxdjI3AzLq+NKse8l/QkMqIC30fQ56BkLoXBOQikwYgfZy9rF3CuH8wL3S
	 yC5cCnVsMZvIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD2C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931703368.13517.10571156797706259311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d215c3de15b5c1524f8642694f6ac489b6b4ea71f6291fbc9e0382b9174e8ac
Date: Sun, 13 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789317033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE3321C9EA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768002234; cv=none; b=XphllC/yOdmQjufHgUB8rL7C7KpZvfX6Gd5UjE0f2a7Xxx1CKLQfYzb5X9SK2HNtK5t0wWNX/tjzf/PXEvs7WoBl1zw+AssIDqO3lTAvvaSSU6upSs8fNGYHucwv5e1A33gMl5nRd6i142OaaMyXJ4vFFbcp16sIcWUPv5lPs6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768002234; c=relaxed/simple;
	bh=bIElBE30a81YLnM90REH7522mX4DnLGOVpWujBk8vW4=;
	h=To:Subject:From:Message-Id:Date; b=Y62YTQAB/sI4VwlSi0h98/qAWDdGB8lc/tu96zWOzuFNKQ/bvHle5NfaoFVCLdGe03BBGq0YA7fmTM+DpBRkLozusuFHRwXvAllPm1Q25KtUTdt1xvwvk2outLCSdyDl67MNCea04aOmeDnV4YAng9TUy3CufBzEkPdQxuRfZ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP/pbDAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP/pbDAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD8EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768002233;
	bh=bIElBE30a81YLnM90REH7522mX4DnLGOVpWujBk8vW4=;
	h=To:Subject:From:Date:From;
	b=mP/pbDAfUZkee3+Sno3XtFn1v1WBBN22nchJCWsxMlOJ3qxPWCdqamB/gj774XcN9
	 +djbtnXQAS+C+pa2atL2pIIgEN9iYgkyR+J84BMkXZt4aes45zxWtB7uePiI6Wo/8G
	 mqB8z2Dglm0o3hfPOw85kN9jZruB62G85j2lbZ/ScbF1L6WOU5KvCzQbyFn1EOQOc+
	 fPAwPoxqftyIS4Hl0i+4TQ8MdfLfHOJbQsiDQAeYGm3htnu+s7TpDMfKUJl5FAAoB2
	 d3so/0B2Y/+9AmH9CNLaOmTDmMM4/a19txtqDomTFW72SlzvsvluJ1dMqK2qgxkhI5
	 xCZrHHg0D1HAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A875D277C0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800223359.27060.2923033489049272973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388306b17105d370886546cc84d7897f593c68392674bcd2df7db259cddf88d3
Date: Fri, 09 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768002233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467E43B19B6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791480034; cv=none; b=snpYcQCFvlNvLiN37y9f9pBR03CTwjcnRNiWPbyz6KV67RoCAZVmY6VIfjxTv+hpPCnkzOtd40b8wmHbj2ZRalFSeny59mm84duExrKmjXncs4U0GOR5u2xn2u9Sa/MzMB37r+cD5G+E3vD9D4ORzDfhvQpwr5YWhvkC+ETHhEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791480034; c=relaxed/simple;
	bh=ddjfFqZpYA1CV1ichVS5ZYl/Mm702TRhjlVKcT+xAhI=;
	h=To:Subject:From:Message-Id:Date; b=kyDpvVfb8spkqF7Z+6ip0QX9iGMvA29OngXcd1Scm09/7HmVg22d8hzZVdQYBvNLNE0q4aA7P40/zbcyRRQoG/ydSyY/l9SUVJW9sFPnlgRckjEPAvn5bjcixG5csHV9iColIUQUH1RchkIp0O2cLRPXDiAm+tmpF/Z/YNEQdhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpL3KZwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpL3KZwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8BEC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791480033;
	bh=ddjfFqZpYA1CV1ichVS5ZYl/Mm702TRhjlVKcT+xAhI=;
	h=To:Subject:From:Date:From;
	b=CpL3KZwM/R+QiScDWTKNIM+l3w/+NcvJsjl25DPBLe0RhNV7jX0KdRsucjQkNB1X5
	 A/g1OCPphq50kNCi+SzfFv528go8VR4xVIL+oaorsWjXQ2IY0tBv9+KaRnqYol2N4o
	 ijkhR+rkiaUuntPkm5oanKgXh9mRJotXwxC2JcDC60Ks5gO/guRUAr0FDNYw+kzH3w
	 gxyHmO1aSQqMYL0XuQffy2g2HMvT5ttO3dpWq13M9Wn6Mj8rNPBrOpbMZzdT3aeoox
	 jp3nnzgO61WZnbu1nGoGWJPp3TXrKzxpUDJORjKkGOUBQ25Q1OwTSY3RhAUujUyjl8
	 kVueUWjRKgjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF69CA6011
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148003369.15703.18035593096397771144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e157bb3c05605962d69d83d895f9960950a08f0f469d56c0132df9bb1ce3cef
Date: Thu, 08 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791480033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390663DDDA1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783493917; cv=none; b=a+Yo2Xi8TSSmdfg7nEyjskwN3jLxYwb6Ys6uqlpzcjOszSVoFaXpppB68CkSinPYCUdJe/238rnmFnezN6XoSrEl9z27PrW/MnCb6CuX1gF4U9Hwlg0D1c9RXcL0T7iXkbjPw7AElR+brM+F0uOqwGCx+xK4I18794xvmD1n96M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783493917; c=relaxed/simple;
	bh=/Dfep4bHvlkS5q9shG9bmqPcaP6JYdAAXwen5uGxyqI=;
	h=To:Subject:From:Message-Id:Date; b=qCTjpqeNTZ2p+fBMf5JUaA2FB0n4G7U5MuR1lM6DimLHSESn0nT+QR3M36+wgVUOrsBndW+HB/0PIJE5CLphofsMcBu3cjAtorzotXoVMJvZBMyNMOUvjSu/kRvCZ1sdYqd4Nvb/4zAGaWXv/13h8KTyZApTV0soycdGnEgqn88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUX0i+mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUX0i+mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A49C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783493913;
	bh=/Dfep4bHvlkS5q9shG9bmqPcaP6JYdAAXwen5uGxyqI=;
	h=To:Subject:From:Date:From;
	b=AUX0i+mtK/RntjDEfOQCB737HOkbncALw9CqDUr2BStXV6RLTzeZ8lALo4ubYjrNN
	 bPFbLFjVqFoukzN8A9WHMW6t7w/n3rd6hhGYZPse5RztfmGA3sxZ/k3Fy9H1p6nv0Z
	 I3aT0Ad059ehQGH/TqcLj9PtSyQT57RmkVQ5G5TKN8tmvZ0ax1VwuLOPH86pYBhdfH
	 tAz58Hs/ukXVCJkt/gWveNhB7cphOmck+HW5baeoCIOWNHDX7rL9VofpMPyS2ORLTV
	 RGnMiBGsjTPo8eR3YWhxWtalnBxH5fA7SLN3igXnnVxlJ4/EtFW0wFH9nzD9b0GLxh
	 sWFumxzQmU4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE62DC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349391370.3588.17142085529992204566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af94e0168d9262915fcc4e354600634742bb69eb89b7345368ec34db67324955
Date: Wed, 08 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783493913

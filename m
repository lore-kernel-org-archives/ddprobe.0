Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530BF1D7E41
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783804114; cv=none; b=MJskPmixM+4XIOV066rrzR5tjNzHpTtZzHNQP0qjBCFC4/u6lf3WRVutcWljdl6yFJSg8Tt/ytHPRAQol0BY62y3k2Nhym74yKXR/OOFHd/Dj4Ni1O5kq0eawKU1M3BX+n0w8f5hfC5P8Qx5OwcHsQR3EcUqlRN8KQHK2YlHcDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783804114; c=relaxed/simple;
	bh=U79cup5clLz+a9bdHi0F7olO4fIaVRlMlglypzg3kgo=;
	h=To:Subject:From:Message-Id:Date; b=XGt8ZEOauLHbV+38kEj0/Z72iFTnfmQ48g/lnVhqw+v8VfN89ravIE1/ejmT1MNUBqlf40HS0AE0FTAht/zJ1Q+bNXBp6XJ9HITCRcPPNbLChSP8tA675SROQpg11ncUOKrEmcldP/WkZHHr0NzyIAx7bdMhFXUVenwN200XWzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjfV2/Xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjfV2/Xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783804113;
	bh=U79cup5clLz+a9bdHi0F7olO4fIaVRlMlglypzg3kgo=;
	h=To:Subject:From:Date:From;
	b=MjfV2/XkeOa85cjA9nmF51tYTsiEXZ8L9ClBpNogCI77S5SoIxj2Ln0CB84jI5F5m
	 UstnzeI6+OXQL3Y9Oj34g7gpEVM3h7LpkKMK6K3mqJKVUOXEq7exrsQzpuihGICEeP
	 lwVfYKYlxR2612zP7sUMRNmNIwC4qsjul9AorujfUnIBqbHl5LZ0HMOkjE+fAby4mb
	 FXD8ch2P5pVaIJGN4dG7kD4Fl56Q15FKGtH2Hy6KvKJDkFT4T1/KEqNGnmBUXX4bCx
	 uiGAN7I3yvWVW/3FEBkfamaopH/rCr+SZISgsYvhmykJ6sklEaCPcr9OFDxllCEYjm
	 Sv/tOI6BHu30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4ECC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380411368.8501.13665406715416432510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e743b94a8c90973bf5e32d8f631b38c063cb096e8333aac93728fa1ae00990
Date: Sat, 11 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783804113

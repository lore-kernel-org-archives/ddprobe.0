Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247CA432E66
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785790234; cv=none; b=V0WCYqcyTERXaV+1H0npzRabpltylmZw1Ac2Z7Ai/zOgM5ZY4a/g3zBp6u4cO2MFiocxMmFwALsrK5WPMkKENGg89u/qYObAhMkm6Hu5qTV6gK0XKGskD912J4qh9ZKZtIAPYiQewLche02li6c5HtJOurnr3zJpWpqjsMyE87M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785790234; c=relaxed/simple;
	bh=zGUERaQuupm4Ijebf1TD2iByPxHFBkKxBgd9yETNtEQ=;
	h=To:Subject:From:Message-Id:Date; b=s5hcdAHTJ3ckTkltwLDjJeYfDbBVDLWFc9FBZH19ote3b70KVhdQ+rvSS1YWya2o8lt1Lj6fodMKMSX/5zOO1SnX9noHOsnzgFCjippPw2EeMZQFnq/7D7mZ+YfKw0G4Ae885lua2B7Yzq2E5Xq7m+EqJkAtfb7rxppWOvbvmsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPuGfhZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPuGfhZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD885C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785790233;
	bh=zGUERaQuupm4Ijebf1TD2iByPxHFBkKxBgd9yETNtEQ=;
	h=To:Subject:From:Date:From;
	b=OPuGfhZJOXAWsWaMRpc84bztoN8MfuL7DUyAVMW7u7C/ocz6/pGnQRlLw+ohgl0gu
	 KqO/4kdYRevZdCPvI8LMm4mBl35gxT8Hk9BgCl8lroIeeBQrKwEZXIx8M1zajGXFI4
	 EeDSqU/+2KvR31HJx4eDYSYakV8Z34486DoDp1cDOymPkYS2TpVJDKrSW1RSDaIYjB
	 +jv8znbWHSOSGol2sNYCbRDfs45IOfuBcjRGepKzLRTkeLMvkI5kZ7h3qR3dpDxrdN
	 Ze86VJati+dXBiX/9Yv4cYJ6nn0YN7Ev0hnUr7K+Jsnpa9dVp99YK7UlmBUjwLJLfi
	 tQo+DwldCghdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A7C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579023369.23894.15481107694947893323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec8eeb5189f5c44f9985507bbdb45c8dc653d40b26a85b74745abaa6a356d3e
Date: Mon, 03 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785790233

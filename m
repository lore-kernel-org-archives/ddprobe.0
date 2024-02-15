Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2009B46A2
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707962297; cv=none; b=TxVm52tPOke4riEowIEVjRW7ubByRnGThyGVP99qSX9nN3OoflHi3NFZ6SUTzz453QgudjhGzrX3fns3BCtEg5EHYRb7g9+7Dkjrv9oMmmnr/kzCHDiBh++VWpEQbVc66hgTvqxxCy5KzUGH7FNDt0g0UWhRk+LVbq0A19zCUFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707962297; c=relaxed/simple;
	bh=NWCzCNqIZydnHzHJbvUsYGivGvSmSklOQmOmpEWrCcU=;
	h=To:Subject:From:Message-Id:Date; b=lv6If20PI1FEuk7HNubHKjztZ5BXSyRLvGtyKyGT2GeOeOtiERdT6f2Vr5VispSpYijY6LpewWWPS01iAyccHXRTGFEndJT0t4ifxPpqYe5nh4ep0EXD9Y9VdsQyJn1/WIa6rUtouBpRjYkdvUsAEfoNIQl87s6rED6+HpgFrFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPpy+pP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPpy+pP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1AAC433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707962296;
	bh=NWCzCNqIZydnHzHJbvUsYGivGvSmSklOQmOmpEWrCcU=;
	h=To:Subject:From:Date:From;
	b=tPpy+pP2EyBSc2RoLF1yHAcnaVnvGf76McSGJzYE8IUU4XB3fGR9kSuSOrwTSRd+B
	 2mtxPGxjsQkF5AafbV0Iy2O2k3sftVJSsfUc7LM45T5dDyUUign81/P0r/GfPEXCG5
	 Yzy9pr6PJAukRkjWmg7CO6oJynd9lERs/U99yrweuOASvVEKJ79A6rZ6ejz5RGByY2
	 rmzXShvbMsfQwmylqnWzYMoNTouq5WOH5YEmPt2cKRgPX9zjZswJAxnYEMB8udO5ed
	 3YKhNYjc9qh5tWh+aM7UiwbtzCC3PS4ylQMAUWvijTND1msg3v4xlaD36NxfGWXHAA
	 lPGe7WK2kIFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64264C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170796229640.29012.3880576619385672690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4281bbe19411243526c6652ed6b31567524b614776a6d0d0047d50eded85dc62
Date: Thu, 15 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707962296

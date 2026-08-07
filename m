Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F113D091A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786093834; cv=none; b=Yo1u2I5lhuA5RdC1EKL1GSK0WtGq9diRf4e/DXT03xVNjibBKbYea0Y9luZC3QzSUVuNrhy/cn7x6gl1b/tVUwOAPMqNXWngcvnHUMisKrh24GVAxdc30R+PXxQiNA0XOQXPt1UZR+ccCDbm89EpyzrvzURBTzHAAgjtolFuQ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786093834; c=relaxed/simple;
	bh=NSPVFpDxzIbwE9Pzx7FkPo52ryPAnfbWWfvt3nR/sGo=;
	h=To:Subject:From:Message-Id:Date; b=PJ+LvTDi3cl4uC/B52i+qRLrwjybBbGp4G+K3JNOgtNYBva/M25WYpRTuz8TrnAWpcOnmmnnRtxhTpN4myN4x7Lhd/VgzAG8vt9MRhm9npGcpsI5YwhhlSH1wOf2kDP7Z2t7qi31f6DW/GGnthig+JPcBDIh04j34p7d6UA7q/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRyOMFBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRyOMFBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB31C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786093833;
	bh=NSPVFpDxzIbwE9Pzx7FkPo52ryPAnfbWWfvt3nR/sGo=;
	h=To:Subject:From:Date:From;
	b=mRyOMFBj5I9FBy4csqr+4qxGI9ymfTXhZUlqgto5MRVFDRBC4GydRGAyRoLsts3+p
	 4c+yRfQaMq0zNeQpsNAwRAqZmnV5BAJgU9UY68n6+IjZNIlTf9J0sWlGBACK+K5cWs
	 e50UbzMv3aJ2rj0dkr27/y5WLLfr6s5KrwBIQCyyE8pLlsreoXB8qSKUwYgk+k0Xqv
	 GABQ5ISu578TskfdghHuJZmcqLaEiOeZ/6EhAlGwpkNI124s5G4sldvKLOMLnGMyqN
	 iFgNyq1/TwXzu5NN78GOmZsMHbGdhdkA5nmRWyR7WBx9VKQKTwSb+Wah6H8RNaddJu
	 DeYgjEwmOSM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9881C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609383368.22989.11172989259911853716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220431206aef42d61391d59dd0806947a7e61188d8034479c26c2a05e922b13b
Date: Fri, 07 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786093833

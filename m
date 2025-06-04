Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177C1DE4E6
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749055194; cv=none; b=GS3OJekUDQ2VBJxXLNzDsDNSkGq5Y4TvmeMc6griwcvOH+9jFDQ6ryPWYXF/U4LQbD0/m+2l0AFFLa+BZZVAppOcoX/vGCJg1PluL+O1PIcJ7hja1sPwamCFR1IbTvYRx2gCUr1wx3a/r4YZAiaFfIMma3kCj2erwl85jovZ/Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749055194; c=relaxed/simple;
	bh=CecH4yQvjfBT0opHXO3sRRzj6Uf/KOyJiMbVkt9co+8=;
	h=To:Subject:From:Message-Id:Date; b=BvCM0HPvIlvG0d7r8YMWY/GL6qCXaJ19Yg6GkTLy3crIehhFRBqyrtJtCNUrpCBwWhIgDjukr1y/0xcRKK8ysVgONPxHJzmIedhhndpoVME0Gf+7SwO4C+/GoIdUbS9EVFQmnHGPs5NTJXA/A419zLkTxRwYk6augQn40DZzpI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bt+ScH1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bt+ScH1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB90EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749055193;
	bh=CecH4yQvjfBT0opHXO3sRRzj6Uf/KOyJiMbVkt9co+8=;
	h=To:Subject:From:Date:From;
	b=Bt+ScH1p8kiIi0oUqKiT6IGTBun9w8A/sp1Gp4USbfk52SjDzu6gvIqxb2g3PbF7K
	 uMDIhlWSIcc5zyMPHooRW19w191dOcL72MAXbhy81HGQOtyta8IDrIE0dPiA3Kb8HZ
	 fcRAffll19kAagLiuZHbNW1CvjgKupSuK4rAU9tQcIsA8veCz1K98c4bvmYHaXE5o0
	 7E6VHJuARmiNjIXHv1EbYTcrME/djbCB91Lvgq5HZHAK/0sB95aemiPzCUD0uSvHJm
	 s78BQV3/OaB1iDKfuzuxCrwyGNwr3cPIa0UJI1qbHyr6BiO3947bZ3AcAcdIU7djvs
	 v0xaY+4yyk7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959CDC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905519358.29556.366101735879183814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d7dc00685eb3134a99d17786988cb1bed38a527e56a17c0ecea8315a1b6b88
Date: Wed, 04 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749055193

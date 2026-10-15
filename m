Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588EB2D2486
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792108234; cv=none; b=ETpgPO9uGjwGRAvnlh3XiCx7/YZIlxlatk/6o8rRqQjO9N0zCg2R+4aS2nmTFXpw7lywrcBip8g1R5zHHmf0c70FMgEX30nPwZfRvH78vUaTsmnpUMXbpSXy2ck28Dpel7bsto1nuCbEqYu+FWDNTv6YyyNZu9xiHDTwV9pIhkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792108234; c=relaxed/simple;
	bh=404SKw/0KMuggr0i6QB6iynXpWYgH/pXESVDSc2UnfU=;
	h=To:Subject:From:Message-Id:Date; b=uESvHOuxHjhxAUbqXIU8vTu7fWCeWKL1BX2QFbhZk1MswyIt7VDBDJ4h9b9Fc3zP1Y1gmSJcAGw+Q/MIVOyh+9sTesgziD20cbTh+swtkuTY7KMv0EDFb9QGMoWSmvxyUBIW6GUDQ2ofpcA7wpdRQbMixk6hh3dYOLjAjkTatfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qaambqta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qaambqta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29A1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792108233;
	bh=404SKw/0KMuggr0i6QB6iynXpWYgH/pXESVDSc2UnfU=;
	h=To:Subject:From:Date:From;
	b=Qaambqtant3y7gSUts62xEDifJTuNqyuAA0DvNIjGjXzi0YRfA0kPxIPzEd72udnN
	 zMD7tEEVMF5AwJ9xDe920Jj9RCUgoHUJvrEVTAqlYvGxTrhAwA/VenNLDg2djaZ++W
	 cQTzWXtvjuHwHvNU+g6oywLr+47NwXhXvapJHbWzR06UdaY+buTWvDrmHXPED5UY68
	 5YIqgQ4Ebl0PlPQqPiVGVMnoEKPUnZ3VmfPrlzi3IcGpfBse29Vxl1Xx1m7icbvrIB
	 wwq/LQnlQInzzdTgA6km89ALr2FIfQVySDQ+BhsYxKADEdWiwRXHUfa7o4djmLa6iY
	 LN6eDfLzRHFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD68ACCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210823368.29646.14760863705996160183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff43f604466a42298acbdf64c4ce4c9e87d7f88b8ab0019f35d104c0224fc73
Date: Thu, 15 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792108233

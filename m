Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D42362124
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773083694; cv=none; b=SbTAqWmA2DqlVnoWrebjLDCEPHxvHHTSw7QN76gHdO/fxdNWgZ5KIuHs2Tn+sATO4OmQ0nnrJibbmInQNhax4tBPjVBU/Dd2P/H3UumMZtZbQ35BgGGXwa6AZCwqAuh8ON5vjB9O6THbgoPtyMilehbA/es7LwX12hhUNdVwr7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773083694; c=relaxed/simple;
	bh=fUyDVGcrhq8sP1Ywcrix03zXIs7wkNAcL6p2MXNd4Sc=;
	h=To:Subject:From:Message-Id:Date; b=EocMb7xdg4PXkulTlqYrFfLJjFKf6Kvm7ioyC635zMhffPA1dJ/lWcF4N4JJxVU8tCz2OTcctVJwvVyjV5eLXOfaFoEQyXB8YjFcqOfQmf+0MbcHArFqyoLjcSYStijj6lSlzflqShW960R+9ZLemcOcBRMCHSUE/n5hLAyfg64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxxMuyUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxxMuyUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED26C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773083693;
	bh=fUyDVGcrhq8sP1Ywcrix03zXIs7wkNAcL6p2MXNd4Sc=;
	h=To:Subject:From:Date:From;
	b=dxxMuyUdMzssUGXWoljQYIkkkOeL96Lv47ZGyyW8u3duiPwyUTnPOzqITVW4+8Xlh
	 LqSbWqWD8/ukRebHBC4E5KFP2K2CBDGSl7eAvXO5gevM7l4ZUaDq+e9+33Z368Yy3J
	 izBpRUyFsk44ETmFvbG2gdw4IAWhmGuubPiudzAz0/9BmvvUG529TW9+HGqjxt+VO+
	 kNL4galqDZXSdWTvw3CdCdbSTy6Bhwct68VTt9BcEuP6InF6rKWHok5v7nJfi6813P
	 z/QLRXHWKI2a7eJMGlP4cwX05gLReo49Cw+qbeZXozkpPMaA8gdBPBCwcDX2Z+86Ow
	 tVSgnWbawZzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E4FCA179
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308369358.32020.6749099815539763941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94d2a78526ff8a81dd3ccd6cccd0853db834eac5cc5874811819b665bddd3d1
Date: Mon, 09 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773083693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935B4C83
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750825794; cv=none; b=D3CSeDrs8V67DyqFIfBH49pLFim3eyoz3w2PkXgiPJWr3K0u0K1c5H1hVL5oX3b4E7HVzSBv7QtrxtEt5Qa5K5x3KrjH9jxyIGChuTnEl/5L5ER2TxL1tPcVs2L0RggUX+BSc7v5QywPCPTbkHusrLf/6LXDIuYlE/5SFNw82FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750825794; c=relaxed/simple;
	bh=L74dnzJiUF54nJRzmU8b67mWksebG7wNiWZu2WmLNgo=;
	h=To:Subject:From:Message-Id:Date; b=eGB06V6CmdcvodEjW0yfCVOgWC64lpI6PLdjj4T8jVyBwZ2c9jCQlWsh/sUxdTF4Ra4DI+xmU+5h6ps033MiogeKGZ3eE/n8bOx/cJd+296rbq2k9dAEDMj398ItzleDMa/v60aRuKWvYBvXAZnkCvAuIoFAnh2Fiic0FP+BR84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKvCavmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKvCavmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F8C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750825793;
	bh=L74dnzJiUF54nJRzmU8b67mWksebG7wNiWZu2WmLNgo=;
	h=To:Subject:From:Date:From;
	b=EKvCavmMkJ2Yjt1DQm0tfJA+3ubfPmVAj0kIc+nGMZBmxvHZyIDIbHERn7CqVX+UT
	 UCMOZdd7zk0q1IIc05EIBFtDONNhmjSn8K9bOEWKDs9f6ByVb6MEnPLSUaDoqdwyuF
	 8O+Kgae7iGNf3l198NQjBZv05Q/5JNEBRb5kn0JUTerpnFDuVAw7pnCXRyZHKdnVHQ
	 LgdN+BT1QhOs+1jBszcKO3NdRQqtFPRW+6IiwSlChBiSODkalesT33D36qSFamG/vY
	 nz0ygm1T4HSWcoaqdMt1Ui6l7iv7VR5PnamwBCx3KhmyQzIRM4lg+0XIJXCaM11fbR
	 IItVV5/EtGk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B78C83000
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082579358.21378.14322352155383629437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee2058d13619d99c84efe39d7a71d7a62e5d2d296a97c2e46995918a4f38fcd
Date: Wed, 25 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750825793

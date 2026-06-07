Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3507839B971
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780838674; cv=none; b=iBtGnQg+J87VrXXWhY7C2eBOZY+YGPoacHCGbvXMvPh/4ZPtx2epfnU2wcOv/LzPb1pM5qa+Mm5JF7gfq2/f6P36yvS6DcOVbpDUJnF5qpm84TorpCSJgcpIT3sCTKfC4B9vzMYAeJ9bdPBNSJFl8xEBmIIy7r0Jz3ju4U7GJb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780838674; c=relaxed/simple;
	bh=+Vc1l6u6DMgmwMb7Urkaz2wPm4cRvyqknmZA7UvpiyU=;
	h=To:Subject:From:Message-Id:Date; b=t7tb/yyhdXx3IkEaUB5HN0gG5GbtQQwJKKHrrWEmg8cPhBBqy5Xc4iowXWPeZPT0TUFZiWvGrKUTfEmgaXq4OA4kla92FW72u3m/vJ99IWjNmZ1iyTP9GKPg4OpVIOj3dKQl4E0PeI8Mt7h8LPGGcBek2CbJ4K90kUvtV2/bbig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujjSa5Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujjSa5Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC444C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780838673;
	bh=+Vc1l6u6DMgmwMb7Urkaz2wPm4cRvyqknmZA7UvpiyU=;
	h=To:Subject:From:Date:From;
	b=ujjSa5EiQo0PWSjnSqnJsyTkreqpoFwDnZsIMKnYiSubD4YD3rpxQ6AjTkkIS9a18
	 dnud2Svua8Qv1dugiLbPwa8E+njrSIOJZxl3XVcCk1pJ4yYj/j6CYuaA1horAcVB06
	 xhSfqlhjNrruKgsniGos5trwNCoZM0zOyKsBI+VlkV7o/ZISidKjA/LXmA/m9yC/Xw
	 RrxIlIs1qlH409Kk9YInnNdDjdyaxCNeVlmddRP9zcqXFFYFHGXvBZWBs1AGpBb3sA
	 OsJfUUn6KZJKVak8MBglzcCxqJrumM6rYGi5XNp3MMz6PGW12K7zeTxZ1Ka9ZPXZpM
	 senidHykyU19Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D3CCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083867370.25670.5733201822512909095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e96ef151fd3cd3351f6f8de9da4642a2e5687bb443b75b1a215ff6b033bce63
Date: Sun, 07 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780838673

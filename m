Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F225BAB1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741718934; cv=none; b=GG5KzZg6JAeF7dsNkUZzhUALJUlRoirbn4aBws9GGnvtvlAma2b0ca8e/lGrGofAAujKmB2Dm10ow2wbfbAPzS536eiS3OYCRWSQ2EkwMF2488T5ZTmd7Fvn0UTjqtIO99zJGBeap+P7xup7+j4x06GQxi4EhzJiRa9Kix2wjmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741718934; c=relaxed/simple;
	bh=FLC4LJdecFbTCDqTWYCD9w8nznh0iFO5pwJHu4HQSLY=;
	h=To:Subject:From:Message-Id:Date; b=tm6bVRVh7clt1IPdmMgugsdBGtfOI3hTV83We3FfU1+ruYhaLYhGcQtZMF8eL6k/UL/LRjuZC0poqN5jLCPuQFzs0gZwHBKwF6MoqzW4ZP/PyrDbi4tXAk8S6cyaAlyDxRqJJ20ZSdKktuhpcovp3boi1zseuRLCk3aWuiNceU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH6d2wAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH6d2wAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA4C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741718933;
	bh=FLC4LJdecFbTCDqTWYCD9w8nznh0iFO5pwJHu4HQSLY=;
	h=To:Subject:From:Date:From;
	b=HH6d2wAk2TEyZLBuzkIipOV49B4IngY2C4LSl69SbJIT+MeRy9ia8qWn2wbLYXBUY
	 9PNv9elH0tWEjNgmr/3ouY2tHgaLNNMx79kiusJ0kfQIkV7yFGY7da/ZYa19WR9aqN
	 fBy7d52K/qQUK19X6Mp9etWGbrB0cGbfneoxWo22SQ9ExJYU77mfiFgc4vzNt/iF0v
	 r2Cmla12no5m3TDyrf1vBlcHb07l0HbaikcCIfL4arOPZLEyoHhhHLS3uodbvBC4lS
	 5RsMevVCeIeGByYIyZ3AYdud5JWbnyIyCQ1GZgk3rzZPXggrgJO21GMtbNjR+eY4KX
	 tPCfrGncFKO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92885C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171893358.14996.7577340657900743978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfd27ff0cb4400eee636c9886512aa6e733838991486fa434c7207013925a60
Date: Tue, 11 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741718933

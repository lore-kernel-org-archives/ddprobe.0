Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E919CD1D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781232394; cv=none; b=dctImCikBlL0DyKWiGxlcQbFB/3kR2OfzM/GMLNDv0L0mNDm/wh//aKmq2pgy6ZMbCNNFGR64rQ4OjPVReDyGYn8h5wN75/uZCmiQzLb7IEDfhksk+3mtDJzmM0m9on05PQbKBk/VUVfgUer92+U1CgS8aYZyQ2uOFI/c7/h0aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781232394; c=relaxed/simple;
	bh=gnvHp9irZP0GHRpUE6zPuADChqNEGrvgnzsL+oRUj4E=;
	h=To:Subject:From:Message-Id:Date; b=h3+AVTy5cmTPS+B19CoUe9n8ievBjLi+6d+OhhRHZXGH4NRTinT+R7trMtYO8QTX84ETdwFXc2yLedDccjmQMpy+hzGRalRJbjKoQf/ZZDC/L9kYVdlgbuGaIFS66zOfXPZTuDMBJY4xdfWWmJ508nkLzgapbQeWnQkGoswaVQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkDIk6ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkDIk6ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F51C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781232393;
	bh=gnvHp9irZP0GHRpUE6zPuADChqNEGrvgnzsL+oRUj4E=;
	h=To:Subject:From:Date:From;
	b=lkDIk6irg9CppHrdh+zo2jD88z7wcyNxLhKj90mVhXlOvQAhSfXzNhVyzrZwtnCHG
	 1btKCGwnIpvMVDqZF88r/+eFVt2oaaHKNi5PXkqlJcxOckkZBLVwRrBSXgTGimLLo+
	 skTpN7+JtQpDEWaPdI6qlXfZZ+FJ24d3EBcsacCbIONwtYp3g4ANYkl90/NOWYcfcK
	 a7EZDuxkggJoItVNjhtwJLlfCHeUAdVShGPsZGFJsEBwvyHjbkRNuP9hEtpiZXfaWX
	 7fnDI+IZ1mZSm781ECjmRY1aRBev2Mga+GD2b8AdcrWWPIbEFJRx1HKZl7ypSPEpWF
	 tL7ezBbnhilqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97BECD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123239368.1467.498786699044594740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf020c6d89a1cc3dc218eda1f3556174b108ee61beb9cc74881c6a2a903f8238
Date: Fri, 12 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781232393

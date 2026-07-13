Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACCD3D7D6B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783985314; cv=none; b=Tq2NSklFBfvkmXWvQKh5NIAA2M8TXFIt7AwV0yM/0usZy1NLkrr2WAfQETSQ6iuf7D51DlvleHmzU8A+n7PL2PYZZpHJeO4FFkXvbVO9xmt1UqNKNxkUNiFMrKX/yY2PXQxi4iaoaoj+WI47LPZz3QftN/n9thbI2a6LJpVVRIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783985314; c=relaxed/simple;
	bh=wzM499bg4XK5s4IMBt+320x4Mv0dPNoxIZfkrsel6xs=;
	h=To:Subject:From:Message-Id:Date; b=IlmRIgIdW1LxYRF9dY+yKulx0du5KxFiNoZZ0H4szjDMbE2uGrioOTVvD9Uxg02zDVoxk+l+UnWY+TbtZujNj0NbjWEdlvwJxI0eILOCh4TNxSU7M/7b35zeWXPcbG3Q0+6w3w+hRPsgYN0G3LAujOKPJrvcBEOPogLJBZkCKho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL/gRvWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL/gRvWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78ECC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783985313;
	bh=wzM499bg4XK5s4IMBt+320x4Mv0dPNoxIZfkrsel6xs=;
	h=To:Subject:From:Date:From;
	b=bL/gRvWRvYk7gvTvFp0M90yEF11h5HKoDmoSeGsUb15A7KiRtjHPqZWe1WUNi6J2+
	 Zr1/+VQVTHke68KBrLBOtX4mAmHKh3Lhh9yWgH9CJVdviOcgB54MWSYPG+qaeBOsih
	 xrgt7qbInZzn95UfMfzHGMalr1N54YdKEnIPSJrxvjoKvY8V1p6gSZp3gbgsRwtWCn
	 dyODgfGSuj6ZdpD4FrUskh77bCmymhcNUqFpuAcrtJcGvDKzdzYy304Ujc3u2y02QQ
	 L3zshKUfD87kSaY05Fe/IC1FPunTLK9HMVYAoZVMufblgvpeGreyLBz9Gnqh/A+uyv
	 J6Q39aFAYdJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B18C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398531368.16973.5691016012427097911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57cc6b204978880d7f9b749152f91ab1cc1eea8318a3771965ff296c8707639
Date: Mon, 13 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783985313

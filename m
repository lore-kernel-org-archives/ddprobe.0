Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6FBEACD
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770079434; cv=none; b=bk/KVeSkPWdsEGwU1JldGEpa1RkjJH1ht7ff/IxOdH22phy39zYGddRY/IIwuXx6mIZ1cwCBRHbRvaZgFpObv3eHlTAZ9tvDwTjy4SvWXRmHXeVX1Jv0Bn97M4F3qC6ISH/0ewVJHkKxwxY44z7duZJZ0/ydMG7fDYw4DuFkXq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770079434; c=relaxed/simple;
	bh=c4GJpvXOyWu6lpE/GwBFeUSt1Xy785z8ACPtLrhJeJ0=;
	h=To:Subject:From:Message-Id:Date; b=hmjgQg+90QHk3CAUdfGfroPzyRtHWoHoaNooCJZ0IB/Bk6gN6DnBxW1ANuA5tc23/69/XahXrxrS1GmFAsTXAEKJDETePszsATEkMg6xPPHoZj1dkRYu19rtClfKPbC4+5OJbE/i6f2c1v5i0Z2YU0AOgjkVcA+ppkA65eLCHP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpihIkIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpihIkIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C501C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770079434;
	bh=c4GJpvXOyWu6lpE/GwBFeUSt1Xy785z8ACPtLrhJeJ0=;
	h=To:Subject:From:Date:From;
	b=SpihIkIFixcJIPGF3Pt5sdqJ/q9qxPLlzSygnLnkBYzufc6MNJidxwsTH3313DrgL
	 cm4z23D89zaODJVFa/fMewqYUbsGKH3eS135R9kyvycWLG7K1bzL5fr39tePvxhSEb
	 +0C0gJTbsAowmG85YMct/dkDN8SjY5Asy0/qvGU2ySRyZHUlpGLyKTtVm9vJJ7Ty9X
	 /le+/IhH0UxF1Hwi9JoSvg+wREAyTdzVmv7jQrcFJ3KUz4M8jeMd5ansj0LXdjbL7a
	 O2FdGWLL7JkPWA/xnTPzeqCvApD6M5fJdefcIErTw+vMRnt4dRTX0k2GRBHx7wRyM5
	 MSL5OwyPvgLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA541E7FDF3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007943371.4219.3389329179371254574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dbff40958735b4306cd8064366e5f8c88427456bc99b9bbfc5470575149d9d
Date: Tue, 03 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770079433

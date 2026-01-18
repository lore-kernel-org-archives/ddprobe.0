Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3EA42A80
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768748634; cv=none; b=MNmmOnlPnJpKOybYmr99Oy5Kw98d6qTjJfQr1/etPKaLqLe0+l9rQQ26PwnHhdZsLVMKQ2GFuHsXAAR7FkWntS41fiDkVJ8aeSgPio2WHVYr+vdTMhe4knixRm7hYC1S3nkugKUvbghCAw+VzkmUnCMWX0BKMrzw1RkVgAqrwD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768748634; c=relaxed/simple;
	bh=CIqOqga0VHDgNrNNrAfg6OfSK3+NdgLZsSU/QHDtfEI=;
	h=To:Subject:From:Message-Id:Date; b=OKqDyr6GSlOUsZtwTfyLnktZgE3x6lrATmUbYeOW0qQPD/S0xnZVvcW27jNLmbmkmI78AZDOmW1+cH4MCtqwF2IYRoABFmTZhE6geMETDXJxbyJco7SjThXpYyC97L6gc0tIqSU58BGt/TRlDvvV8j2ces1n0/cpBM6NQDi6lGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kse/LtFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kse/LtFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F901C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768748633;
	bh=CIqOqga0VHDgNrNNrAfg6OfSK3+NdgLZsSU/QHDtfEI=;
	h=To:Subject:From:Date:From;
	b=Kse/LtFqA/WYuiW4VokC6oDn1aBChVRP0p2F7JOk4rbudQH31+UzVDcLOve0x7OBu
	 iJLfnLHfCgQPkWkkAssWrqQqq05qoHSK+nVCMsNGO4UI3unpNyescI/82p8OQ3QG/g
	 aqTUpFOLuHS9fuKPFdS7dFbbP0pm5F10vQKGfQrJXaIm+won/PyifbWbjVjfIgMEl8
	 Z4Z3FkKmyeEyW7iYvfqljeHagC+aWjTwt/wlQJij+3TLMrVvqevK1E5pdcN9p/mAE3
	 F0wkEo6sguSwWbcvQMfIODVSWMMrOB1tZbICgq1CXoggCT3KGBLiUP2L2yjrqpyeSV
	 unMZ2M8Zi81xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB5C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874863358.29799.13780782628345994904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea27e27d9ea0b600553eac96d3984529fb7b7c1ef43b6fad1db9b14752296b4
Date: Sun, 18 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768748633

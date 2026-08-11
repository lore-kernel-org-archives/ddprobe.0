Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366E8418A44
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786437034; cv=none; b=hcajn/zo37FRD6Pj0A6nUg8aXCgWAxA6e2wOzNN60Dw2xxOzzAV8R0I8bOd+ILbWQORR+jCmR02mJfGV2n/dvVNXKDzrunQZ9ySmFFAwZU/f/NnQeB5yJPVFqPPGtntxCoPH4lImCOpYbuA2vObCyb8pb2/7SL/ojpTh3nfw8Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786437034; c=relaxed/simple;
	bh=xTjS08d472FZobPYkxgRRqpfMhLIV1H7iPAnzF7wijo=;
	h=To:Subject:From:Message-Id:Date; b=h2rs7OqqFmlD0l2vRCHJET0J+CvRrBiOXvTWE0/472r9DzKhIk6iUvA5+eDtRwNoRML/cbeVn8+VswjyGxt02pDRsKW1+Qv21eJpZdVNAdIG4atRrMpOiyULgZnujRjpFug9QCd3ucXjGp7Afzw53JpcCbapbbPam6n8UPdRT0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP4wtqP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP4wtqP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBABC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786437033;
	bh=xTjS08d472FZobPYkxgRRqpfMhLIV1H7iPAnzF7wijo=;
	h=To:Subject:From:Date:From;
	b=WP4wtqP8QCZB27pQJxwRp2YMSBmvj/wvFCsfSnvBdSDW+kFUjWCwLyexmoq4Qq6EW
	 mUiN98QFhhRW8SdGV87zNxijCRR0UvNLfA/wIjI89aM/Y+8a4Afoqi3a81b28JUMpa
	 AaJ1FicyJaVrv8bwDMdbgrr3JVrHvGwtyult2Uw1DQejhWU+mroRghGgrYhE09Uyxg
	 LdCsiIkSDP36Zef61mnXpxNnhZBSCdxh3m8YJDABiN+9lYd2iPeWL2BB9Kx01yCVS7
	 rrTJfd3EwCsM08hLHuEQJU1ygIQadi85iUBi0B+npZvBEYbn3mN173/jovTFBsx8s3
	 RgcAtrvIU7B6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA439C5B574
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643703368.21922.152291121943410031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e336499d8fef1aec74fc33097d480d65d30a056d64d44238b0587716dffc6492
Date: Tue, 11 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786437033

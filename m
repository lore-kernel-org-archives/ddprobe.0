Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDF5335C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754968794; cv=none; b=u5NRH9tndFOHlD8ybWSmiRkh9E+h32cawwRG/zKKj4SAqfpif/HB5giXdbfg8gP8Qc2UYWBE9X4FT2hcFoBuLb9TFrk4WKbqOXGTfjk+8ZPDxeTX1BIb2KXhh4JdY1mbOtMQqRmEeUSpmEvMaqpensXsZFzIinNIO6chbJF05n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754968794; c=relaxed/simple;
	bh=j6linejhxyWkMkzAf8c2ZmmU8ml9WZYEYlmBNeIwOk4=;
	h=To:Subject:From:Message-Id:Date; b=kFj4a7k0mhBViSfAWN9LaU8u+4SpQxgwDfWefytP6QGZyGOdb3OFa4omp5J9g8xgEleMkxHb/4kuKkwoyHUwb/aAmTxPgb50uMXtmvOxk9JFlH1cDSDojif+j9SS3zF4dTECUR8+YlYwx86TeOAFpmkpgJKNGMuTsCT13PK8tvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fq2UXLy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fq2UXLy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8B3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754968793;
	bh=j6linejhxyWkMkzAf8c2ZmmU8ml9WZYEYlmBNeIwOk4=;
	h=To:Subject:From:Date:From;
	b=fq2UXLy97ANI11USo2i/l7/2XES/1tms+93OA1NnVY/Jfb3Y5Lf/O5zrfaep89ia1
	 ewLENTn788Z2Rx5flCVjfk/i3xc/oEq25KtR3h8nI4I8Ylfhsh2aSnNQQWNv+cctQp
	 YiXL0S3zgQCx8JymA9hIyyIhjezeR9Pu4xsxNhe8x5Z9Iwv/oDTKR+S1xUNIhLEW4r
	 psa+iP7QL+B6gNyfx+IPN59lduckpH+uAATxaKkn0oG3xgNzQmgM3n5adKmI67oAk3
	 el73wzH4EtPoDPKKMzgm0ek1icG9mE4902ISk7MMs8R/TmoTF4dqphNswJelQizMM3
	 XRbkScCIn+Yjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC6CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496879357.9157.5421163194300086086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3864d6546dae5a6825fdb3cbbc384255e5b3e73f728e4fa0a99e87d4fd92bad1
Date: Tue, 12 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754968793

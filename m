Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9EA22126F
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747985394; cv=none; b=AQRtentKjdZZ7Bq9tl+NGaV+hEDFVXLsaIHDyAIxdtyXefK/w9KYEyaoH13Jmi9DyiEByNVGm/I7Hz3JCpgW6uKEdtrsPNm7d4t+UolHjhP6on6zCUGGaRCoylZWOtRm+hja2BdlYAVQmpu8IiPmRAHBPEW4a2ZGjq6mh4nMw0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747985394; c=relaxed/simple;
	bh=ZY72gme60waHf+XgQKTIOO15DMDeTE0iXihU7Gf0Yn0=;
	h=To:Subject:From:Message-Id:Date; b=PSbqM16DTvy463ABLaFWtHwT3/XMg0nN5USs4Pxnu1SzOW0MWxxQndQ11ZsbYczgKH8RKMyZD25L7StfJwXAS8crs/gMypOCpAAqaROCOxJz0kYOd8HEZa1oMSjTf2JXGt1j14BCzPhafZV0aI0X7T6UGhJ822ILa8+B5MzmRLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkRv5L3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkRv5L3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE83C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747985393;
	bh=ZY72gme60waHf+XgQKTIOO15DMDeTE0iXihU7Gf0Yn0=;
	h=To:Subject:From:Date:From;
	b=DkRv5L3AzBlJmMNzuwQ1bytY294E/ANOL37qO9xMXzqd8sAdxSLaxW5BnCfGbrNMn
	 sK5Ie044RV1XhbhS/IMwJaTJq2bGHabq51ba2fxZxzFquk5+AMz1P3hy2kE4H5fAx6
	 zX4T7c7zOKhVTN6wA8bfBy1yx25BwdB0ntt5m3Sn7xofTQXr0m5396OmMlLrWaQmjG
	 ncJkEjMFmLk72UkMNBKGeKjJf/aH1WKET3FDgh85i8NsUexgiRsR0+VJLVBWWXLxii
	 XnjWGT/GJ0a25Dl8VemLM+3qF0cT80wQlwEZ94939PjIR9f2wNcSQX/P4vaU5CadQo
	 0jVGARKgtepag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F889C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798539357.513.18024262760827088843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8ab48d9865dbf28c9e63d218e3bbbe753bf49241865507f1064a6d47197a16
Date: Fri, 23 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747985393

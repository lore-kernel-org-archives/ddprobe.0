Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2752155769
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721381154; cv=none; b=WS0VASb3XXoawLzxWV/qGePDokbXPGkNYGvejMyr3NuhAtsS/f8xW5k4exEM1UkCZ57NJl6Sby5leO+lDzv/16pUVXrJwuSfHxr5UFIhuMbsfMq94si7JqNtaiZ4iHYmJUVoygDxcYRof/SxxhdwXw0ObjyYS6TxpUJBW0DS/D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721381154; c=relaxed/simple;
	bh=ZNfi0OV1hr9TmuU1qBohYIzYgUAeVyv+RdJuEIT7Ch0=;
	h=To:Subject:From:Message-Id:Date; b=YtBuSIkvWLDaoTqKiJZYDYph9qmjAF3slQW3Bv4tMBFdEEAejyZ3sHb1PMA5hOwYDxqvYooto5Rae+EjY9Cc32+rS02DPgIRqDWqRC3wWqyv2xo67D4MVeM7Uo7eJl9RUDMFzMNZdIf2jo3oRIs3eWeVWsmHtCI6jXf1GLpyHdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnCYTvHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnCYTvHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B329DC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721381153;
	bh=ZNfi0OV1hr9TmuU1qBohYIzYgUAeVyv+RdJuEIT7Ch0=;
	h=To:Subject:From:Date:From;
	b=NnCYTvHDnuKwyuoJxUoQD3fCU8NquR7U2JZvGBog2ge40+ZqNTpj5IqUQBsyU5kFZ
	 Kaz+Zo+rtpfuUV7tWjs38g6PpOPQRfMvq5h5gScbx+i4IeYSs+qqvhvXKBGZt0ku+2
	 60uXsCkdYVZswPIFrCPABFGE7blH5Fhtmi3t5rM8JrahzWRA+I3OV3L/FBRL8XQ4sL
	 Y44ZkocC56gL3YLT4qYZ4mgLea88S35ZkWHNqHaZJJrocS/1nOIJm4tN7khTh8TS8C
	 aCYkFdbBLDKaR3fmtyxqlsRSkVfL94EIDNNhpcxqYCEZF7WDVdjApAJFCxcptjmhfd
	 VC6r/9CMOFVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E6C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138115361.28376.7540341819173610032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66280fa2226ce2c2acead3c234eb197b98ba4f231edb510076a2448aa8dd0b0d
Date: Fri, 19 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721381153

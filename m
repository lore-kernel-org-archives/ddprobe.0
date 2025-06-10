Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFD11442E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749530994; cv=none; b=r4tvuFaVqwvmOpVdHShOZtkIA0GsyWGXfZPKgRzihy9jHBsvk+U+pu3Q3CafdfB5K3EYsDIU3SsdrB6vVf+UU9fc1hJxkFa5uXgxMV7LvxYFMudP3gDeoN0jWI0CKDc2UOsZzejPHlVi/aa8m7wUXI3rEy8yeMmx5XRp9u7zlsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749530994; c=relaxed/simple;
	bh=7mZ53j/fw1DovoRzkQ07TnRfaSiEyPj8m0kiLfdf/cM=;
	h=To:Subject:From:Message-Id:Date; b=c2URNVQcFAyaGHNzGxMa89qGZoGybN0ZZOCZPnGNdgtb7bkp4/ODa5JMSwZIm6dq7FNtARnpiyUGNmAKpoxY3IFT+G3MpQQDJBfFq0BUl0y7RjuhFxbhq3RR2zTJ+EvM4AaDRro3Idx97++39ZwvA/hl+Ca5IuIxUXk2dG8YLbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzJzTyEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzJzTyEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CFC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749530993;
	bh=7mZ53j/fw1DovoRzkQ07TnRfaSiEyPj8m0kiLfdf/cM=;
	h=To:Subject:From:Date:From;
	b=JzJzTyEG0Ny5fatPPMQvfw8nVSuTAMjZq9gERn5EddPeAtox+jrOu4Het1+MgH4IF
	 rI8zj3/WBS1QNVmmbcWl2LombVq1/anv1b+V5lkQOFP5EXT4TiZ6qawnP/YRBdbyfc
	 o0jAX90H8MaOx28ErJTDOHb6C7c2c1xSkctfqLs1zCdmHUmWnRl95KD07rrUtKaKeT
	 4cmWyVTetPivHgV9kYT2PdTYX1OyezSkl/iqeXYQQuX2gSOh6y23yETQ/sZYR0PViP
	 fMbZZlnWoGWGTvNnMk7rA9kv8Fin4rYyKtOi1l/qAx8g3z0hfEcZUAud7GDLXLsz6C
	 p8oYqFrlyRofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DEC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953099357.26627.901856995451806976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2ec3d36e4703b09096c93c1e220cbbf748b64a6d1da141a57028258fc44433
Date: Tue, 10 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749530993

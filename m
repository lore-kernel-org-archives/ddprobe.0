Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476C623
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727741754; cv=none; b=JPe4qw4e/4bEv8wM5RF9auRUXEtiw7H68NaNGjZM+XDTnF2HzAro6Lf93uKPBfvAsTcG+M2OturrDdC7XdNElYxN0rlRJZqi/5xuBboWHUfKYn/BX/xIwgcHtexhcYmMjfstpupL5XJm5VSUBm+d2biVJL1FoQwLwxCKAQJltb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727741754; c=relaxed/simple;
	bh=0hzFmg09MefOSBh8M/ZMquMzQGBp4Ndpem+LrYYbGkM=;
	h=To:Subject:From:Message-Id:Date; b=iYgdHMZWAO25VmJLqQSHsG1d2q1O0Vn4W4Vz1odFnZaAkoDvK++oQ9Pknn9H9563yW0BvAeyH2WhFPe5fFYOp8THtamK2xI0qT7HLPLn+AWhy90GL17JURvYb5bPe1ppfT5Oor8U2ZYjNxbzA58NT3ztBpSnyLz0Mrdlzmia8pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMd07jRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMd07jRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1F8C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727741753;
	bh=0hzFmg09MefOSBh8M/ZMquMzQGBp4Ndpem+LrYYbGkM=;
	h=To:Subject:From:Date:From;
	b=EMd07jRnA9bBdEvPUsbTkEOmqE5fPqI90iBz+RvQr6OMcYm6yPYqv/60wAXoXRU6c
	 3WbQjYrlHEyggPdqlx4XfIN5wAgCrUOInuSNPNEdFvSNGxbyN8a176U+nhtF3jFYST
	 7T9cO6QP+8jJU/YvzQucYC+g0oSlvgnC8YFPtAcV5uIcgvNebju5RQUe4umRJ1zkuC
	 /xzuFEtVKuL3IVSdajglBDdc/nf5b3u9S/U8F6DkEIvyoobQHrGt9inIEEuRdhJ3C0
	 4gijvGzgPNlwKmb/lxseFb7fSJvWKt2nfPnyN886EEcv2fv76sH3yEfcuQ7DrtaOon
	 OYpCyMBkLZ8DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97806CEB2CD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774175361.18431.13225251598295368626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cfae4e5bd08ac087c3aba6f4afbd8483e62ff8d5037ce1336b0dbb31bd1659
Date: Tue, 01 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727741753

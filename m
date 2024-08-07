Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294401C27
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722999954; cv=none; b=YcWzSgRcaHATJN1o8Q+i11p7uDKoxGTvgt4W4NmDSsRgq6Elqc3zT6phz2PYdPx0KlnPF8c/LL+dxSOlnX12kIxJ/muzFhjNkvT3609mYhhEm9t1kbqAw12IkYkIgmgevWzmtEEfZoQ7r82dPDNYqv0DOWZpMRqQck3St7DEpGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722999954; c=relaxed/simple;
	bh=yWR5ls/PechrET5s0Vr2zeyWzARG+ZahIzQ4/OU23s0=;
	h=To:Subject:From:Message-Id:Date; b=hsyAa57QvgbHMQ6f8NTjL+VxJKLo1NI6ENGe9aOPQBVvWiR9Aw5n2hc1z4qnd45P9qmS53mvIPbIFsbjO/ZkQwJPTliZIYz8S+01kEHu+zM9Irkj9tQuGxwvLhstyepcpffBLfr46aV7xzHR8FW06tOeBtjOxDucoa/GIyoOy5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5M4+uPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5M4+uPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F5EC4AF0D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722999953;
	bh=yWR5ls/PechrET5s0Vr2zeyWzARG+ZahIzQ4/OU23s0=;
	h=To:Subject:From:Date:From;
	b=I5M4+uPU0BTHyjouX87AxE/31r6CKZhz1cLp/un7uVTKDnI9FElpbzhMY0Uylkrth
	 y/69jm5+MbHrxyS3/8GuYlZ7PUMx2YvX/dfTNy+BS+fNtR8CtSSfM6fbzssS3Arnan
	 U2AHCeQXbF0+28Vpy2TwB/Pk6+o2L9NhZCyjlsSEAolNUeWqtuipTuEs2cLq4N8wlR
	 26q0e8FiS673KDTAFmUt1LZRGrhWVd55HmNPZcCYsCKNebmRDiz+Z+hK+x04vWzj3/
	 WdbgCSE1dtkn9yb/xuPyUbx1p+HCYvGEGdgeeW6P4P3h3iweMtgEdIH+7TC5LzgCBB
	 jGQnqNXL0UHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5452C49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299995362.31073.8119791505837961686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3c7f07e5454ff60f2239dfbb00a7dbc8e31e28ab4d89e7c5bbe7e63d908dc1
Date: Wed, 07 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722999953

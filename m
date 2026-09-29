Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D6B37F32C
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790681434; cv=none; b=kQa/QtUkH+e/I3pOV27+opFR/AlI/l+otWzmzGDg+wSwYcj+hBJm0y2Z/rb4Oxt23smScMGAAwfQW2w8bFP4BRVaXTKNxFN/hNy6a+S5Dvk9mAxQl4qP7LFIB/Rrgd6V81b7ojZd6jRDVR+akNiLzt1E86yeN5gu+66rggZNIP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790681434; c=relaxed/simple;
	bh=pXDur4KfSI1hD2bjg5wPbYrKPb+JGE6JWYFUDWH3Rr4=;
	h=To:Subject:From:Message-Id:Date; b=WTixUb9v2MfKeXoJ5N9GVAWEYSNyDPIifVfuevv/ZYcDs/6W1nPfMFNV5VJpUj915bNeT1NKBQzIpUzecPe2H6O2OvbYVYs00gZQZBZXaKwTAlCb5yQwiHvc3+JUY9Zy8voGVxGQrniKyQcSbA5SaYl1Z8fOPaD/b46IAobX9qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU07MLNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU07MLNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8F7C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790681433;
	bh=pXDur4KfSI1hD2bjg5wPbYrKPb+JGE6JWYFUDWH3Rr4=;
	h=To:Subject:From:Date:From;
	b=YU07MLNKZvWERAz4r6GH3HPQzXszVg/IHujA6HlmuBu55EhV5j3YZBllVlV+Ji0Ft
	 rBaS5ZU4TuLVF/qqthi9br+jKuacQU2UzteGiyObDOJIOJT3RoQ22VPQnp0rWoEfGz
	 c6JtjFAbUg3yj4OeTGUyJ4eJ9ToP9hFUQnrjDG5A3wRZ9J3QJbMLTkBsH0eyYdfR8w
	 G+UyUgBJPKRi8BT6+ewKpSHdWzOApOtUqp9JXBcm+cNxykamDMr2k4Y/4KyMkUFiO7
	 vudexFdxjcP9JwYEjDotD7lazMkQcycanG8hD/Y/Ax7iVh7yflghRExVBQ08qo6mCj
	 NmT8tpLpjHIzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6F7CA5FAC
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068143368.20868.15596618872298155560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7fee9f4819bcfed02871d26418dd38bf8c08d073f4b611a9ef432fbd30daa61
Date: Tue, 29 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790681433

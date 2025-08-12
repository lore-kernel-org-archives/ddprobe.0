Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D44D311C18
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754981394; cv=none; b=bXOyuIatfgqEIA1ZiQChbuh63glnMB2UQDo3ds+UcdnTZSm1YNuQT+YGzRrJIrint1GGC0WQZdsBOzzppirch440CnLE/tPiWWlqUL7E7WZQ7zPo14qEyPGa/07YfMK0+62SssEkBoIZDtwGED/3AqFo9SLU1j08I2ZRHL7GEEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754981394; c=relaxed/simple;
	bh=WWJhgusOPAZFmPVVW9kr0OQc3MxzMoBBDxHqbGl5OiY=;
	h=To:Subject:From:Message-Id:Date; b=uSmNKv1b3vNhrN4iJdjdps6XQhebc9/0WEdPvF/0rN6/Wv0i1Q5STzMM4ARtJBQwYwbYxExK/ozrfDqvzz5vAJgGFkELsnNkI8KdYQZqloXS2fERbHv3P4fDOjnTOGS7IAODGK2k/06oYw0z/QWZadAn7TwgixkuH2Z4ugJtFVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYw0ERxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYw0ERxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D943C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754981393;
	bh=WWJhgusOPAZFmPVVW9kr0OQc3MxzMoBBDxHqbGl5OiY=;
	h=To:Subject:From:Date:From;
	b=iYw0ERxZes+ghCFSzbs57jKkAOuJvHjG3pVW/7N40XcuIQtdKkIMqpdwEp4Yifdf5
	 25zcP4C8heRhLURwRL0PkC2QEEgQNth/OwyTHxLXRt6Hw95W8osTGrryalWqEWed1u
	 HCJGSRix1snqyNYszy1JyeFpEQ9OwtN89s/YUcjtVWwmwcKaUyoJg9PxbH/QOAh/Et
	 HNlZtXh+Kncc7brMuOLX0J3KFfkRKD8FZjjDzqlItwp0ycBnLgxNH4tQjWx5Q1NitC
	 vJSZmlmpZJKHatZXmTwX2fFU2PC/vSfB9R2ErjQNYvk2bel7AzllhoCQJCStP9+o7V
	 prStDTyfbQ7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC2C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498139357.26465.12813921430897501129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a8f862ec7c179ec5fda9c0a7ecf0d2b18cc2b43b978e8efd5b7d24f5ab1f80
Date: Tue, 12 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754981393

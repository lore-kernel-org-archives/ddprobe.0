Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3912A21E08D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748602795; cv=none; b=UoGe34zDK1ReoupgAQn67bbXMKgXMb0jrP9i+Ad1M/H4VJqq51KMeNSqf9bXFrPZGLJYlCG13obdfjhsrNxjgmYX7+iLVHMFJM3ZApmEZLIRzZglqGsge9yE1tYqyZQofrGmKRZaqI1Tmbg1jRq4UTNg+DL/f4vMfR7JDBW+Hvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748602795; c=relaxed/simple;
	bh=2aXNX9clm9WTzCAkrEPC8lyDtZWfJu0axExWgwiGrQo=;
	h=To:Subject:From:Message-Id:Date; b=VWSmZzUrljPQHwtdeSgXgIIY1urc8RLs0QTz3GCG13rEku61isdjzsz+a+lJIaUDb+gjpUQjJNzDnfdGNF2nRrpKkkl7quaj0Ot8isJaTBO6Z72x4SO67C+Ust3iYMfToGcTwtBkJrRAogKMWE6XC5lIJAtVkZV3RIcVXAFgi4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzpbZSjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzpbZSjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748602793;
	bh=2aXNX9clm9WTzCAkrEPC8lyDtZWfJu0axExWgwiGrQo=;
	h=To:Subject:From:Date:From;
	b=qzpbZSjpCZEiDIjFMvqLbagZlnXsIF03d7cmVFVElIxt7IK/+LTs/4z4/s9cJO3Tw
	 KPaXfsrFzjPJA2WfVBy1gGeW3d+rs3g0wjE57xkeG1B0/0XQ4W7NpHkM+4Ckcw5xmQ
	 pNxkY9IfpHk1cD6P/tJmZPZpqGx9fIzES6TMDeTHUKAdxQx7VehYBoIFkzzXwy3Bgg
	 /Zv7Yb3ZPqrvgZa7yGi5YNKx2z8xORK/JlUCRdUFkSWMdSAxqTNeoCRIL09xCb3cD2
	 /0hWDVHpx/AYgmRiyym48ELx3ml9ywvLkqYE/3ww3Ym1p6FTB+kQ/pwOJMT0dR/3aT
	 LfWj+VppYkHPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94967C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860279357.27830.11812027644535684393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f65f0cd717efb8ad1e2d2af3beb5fd8db914bc1c0ed2ce843f538a1025ce234
Date: Fri, 30 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748602793

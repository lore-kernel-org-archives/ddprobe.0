Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BB11E9B3A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784379514; cv=none; b=QWdUyvldtQ63gPr2Q9Gx9RpeYqdBZO+Fqf8THGXdqhj39SGdt6fHjUF/JSgmOiwdfKHni1UMfwKEzVK+y44alDb4dAQG5CgzIECI4YbtyPywkgnIDYmXWFZ0hEJYIGsBJkn6srrcUwHOilkSD+Brq2treCAI99mEIsiyhJBcXHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784379514; c=relaxed/simple;
	bh=gvJk3Ya8lH65BVH9yrCMN9VaDoYKLJ/T0o+/jbmryDI=;
	h=To:Subject:From:Message-Id:Date; b=hRJAAmgckl+BqaIZbmtTHweH+ymfjYOVQEg2pSlzqQYYFV8kj2xOESuvPceA27O8lSCDH4K+xGs3tL+DLHQJWJW41MSnBdrrjPWOtOEcnHzOS4kCiAKuWSzTKxf9bDjRUQGHsNy9MscYQ/cH/2nBp9gcjZ8uGp9nRIzT3zyG3xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6dQI9Tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6dQI9Tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A5FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784379513;
	bh=gvJk3Ya8lH65BVH9yrCMN9VaDoYKLJ/T0o+/jbmryDI=;
	h=To:Subject:From:Date:From;
	b=S6dQI9Tj8i7YsNwKnTB9jJLNFL10DIDZdIYtMuSNaSec9QoqS2/hl+C9ZscGcLtXS
	 VTBLdtxXI8HGfOQJqsDin7X5c6+kNjUa3clJX/thM9hWNusXEir8uGgGrmIGmtLytx
	 RpNoEXyu7zvMk+G78JuQ/QY5XuqP+LQh0ruf30Zn9bM3uJr4ksBKjyqIWmWCT9k6pa
	 QYwd3PtL0Hfe5pa+4XKCLbt0S3tbr/9zQ9YRKqJYzO6/DWxgXIU8mopwXTGn9ZTdWD
	 Bacz9D3SIjyYCZca8AD5QqKlcCbbjUZBlDdXRgTT4m2+QUsDQIXIdvLDVPoGpvI5QF
	 AZGCutU6WMHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04CBC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437951369.12610.4036437575979606220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f45d2afb8a2a5699985b94e7d13ab9d8ebb5b51f425d0a2af911fc27982b81
Date: Sat, 18 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784379513

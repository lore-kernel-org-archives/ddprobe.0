Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F11E502
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739525334; cv=none; b=fUG9wj7aTYNhhmIQotuFL5hGW9Yi915tpriw+GlECab0AlHTTKlST7+OHLwik5pCgvdC4X8TeXiUrrcIFr2gpkHLHmA7N/v45G92LLQw5C6IQ2h5rL5yOTGJ/3xJzMhrsgHVAW2Z0GnYNr99vTKW1QEJAJ9xHSEbgy3Jv9ewEao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739525334; c=relaxed/simple;
	bh=8jm+eHS6Qn4w90pdpCtsfpYmmk9ODwL4Q8UhC/MFy4Y=;
	h=To:Subject:From:Message-Id:Date; b=rNQVlI9Uqsx+Y0wMZcKE3nP+sxBQnWMPw9k2u3Z3e5qpv9qiFq9f8mwnS9BYoYet7xyd4i2ISiw9GUEkhwejAoCe2pZGHg+QDiK4cmvnVBgWHRKdh00r5FVf3NCf2HupzAPp+dd1yXDSvGZQr7ssyre3WwetZMAfdjIliUjGEno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJeCuSod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJeCuSod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5F4C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739525333;
	bh=8jm+eHS6Qn4w90pdpCtsfpYmmk9ODwL4Q8UhC/MFy4Y=;
	h=To:Subject:From:Date:From;
	b=kJeCuSodIjFT/8OzO/EImLURwE0Q0sPLtUUYw4Jr5OBamT4HNTScO6VIOrisD73lw
	 IklDQqUxlYf4cmWSHuIqWBUA2NSG7GQFbeYWi+V9CSW/ZRleSW7fMjhRyB+6kqve5A
	 4vWXGqYsMaSu+sTBlc80yXGn1NMWCjCY2rekK5I9L2reFrvC/kjYP8uk1uDsz1wv/V
	 szr6EUm+lsMiCQ1vTjU3RY1lTMw/NE6eDwKu9QnvoKbzkp7AevGPi6E4GrV771TMyA
	 yuZgLRSk29hbIEAOklZKGyQqaNoRkmB4N7Lj0FHzHg+ZP7ItMNzi5OuWm7oySExv7X
	 TaUCw07kFQgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93864C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173952533359.20359.247133834015148973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1305f6107586563a1293c2a97124b7acdc561b8bcc255f85779d8feb5ad176
Date: Fri, 14 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739525333

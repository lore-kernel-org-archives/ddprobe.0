Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAFA2E285C
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788126034; cv=none; b=Y9vLeQGZfPZQovzV5I6KaQSWLIALGKsptMQXQBKFfWOhzAKwXYY1a6cvO37j3EmLzDzn0h5Ivjl+WmCd3VOt8spCd4r3zFpulCDpJNOnZBjHA8DB2czhYfB5I3D+RN5MalpGlC1sxgU2YKEc11CBo2Ll9+ziRi9A9rkERVAlpvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788126034; c=relaxed/simple;
	bh=MJu57/fMt3AM3uM3yVkD2w2IksNqFbrBdlj9xUIKNxw=;
	h=To:Subject:From:Message-Id:Date; b=sGZIAJPcKR0Gz+ZlCZ6dSr8BZlhtu3Z9PYaC/KTsTgpUKB+Rvjz4ydYX04LecTafOf7UJkQeiWn5dQX6n0Jsor6ws38WuLzUNdzGgUHTOdUEzBP/t2AdZ97NRQT0aNX3g88wG0ZNzLasmcnJhykx5QOWqEzyGu71d9QqH5sW4Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWy9z3+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWy9z3+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C14C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788126033;
	bh=MJu57/fMt3AM3uM3yVkD2w2IksNqFbrBdlj9xUIKNxw=;
	h=To:Subject:From:Date:From;
	b=dWy9z3+Xm99KM8xB5rGspE/yJKRSxFhcy+X7I7Wv+aLoXQ6IkmZ5AouY6GcUxn6nY
	 9HKOyB6PFpXX8ppnZnY2Kmj4vt8v4ICuguWn9HDy3wtOfReDwDo13o8FiWxgYem+ez
	 k+oSwRUuTfce0INPwC4WrXQafxaEjC5A40veFOnNhkAW7OHnPLUfazR4lqI8U8iQZg
	 5osOC3YohwhxvOJjFq2S6IGJAAW2M6p3P7mi2F92HaoiMC8vAFVmgxrChRM9YXRUnu
	 S/hIi79pYOxUoHs6BD+zVnGHRheklo/tqcTQwQE6fAsOMx+u3rsyZA5EIEsVRSl0ZH
	 EiedcUBR12LRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F73C61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812603370.7110.10795345099977585203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2913b8f92740ea689128020e91fbc21982bd87096700b3a73280507de093e10
Date: Sun, 30 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788126033

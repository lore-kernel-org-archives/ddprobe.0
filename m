Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C244320A37
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774084494; cv=none; b=S8Cp71ex+ewxlLl8a1RmM6eM0nZN7Cc6Zy3aZsGC4gzgIKwKoQbcoXVlJtOxKq5n9Py/VBpO99bH3a0l82vlsGhz82mVf4bry0KkawJsunoNmGa0my96tHU5+oreuh2POVBJ8XZwRjb4r2YRGIS6ZTK1DBL4ZzS5g+eaU+wIuXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774084494; c=relaxed/simple;
	bh=207GSv4XjEKs6uA/dzGVIEzEuREQC3O7uHORtsIMj8k=;
	h=To:Subject:From:Message-Id:Date; b=EI/GdeUaBem/ikL48zLnsoFBGbq9GiQsfzgXvsWPKIYruT8O+52aWQYNOt3XAXDueqVocSPqhtjh5HVdbtAgFo9El00hBm+BDT+Nez9CGeoSChI5thhOp6U7fPCtOM0YkMihTDm8Qerwemypslgk9Or4ArMHUjq6B2uwX4VVzI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0ZiZNQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0ZiZNQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D839C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774084493;
	bh=207GSv4XjEKs6uA/dzGVIEzEuREQC3O7uHORtsIMj8k=;
	h=To:Subject:From:Date:From;
	b=g0ZiZNQMyTH6wxtn1by64hHKOxXHz0SHlkT/7+H7lLsmUvtIwKas+3HmeCPyCij1b
	 kgppYwUt+R2domHbS73waDs4X1G9Ik76BKCsNfkTWDVTPnd9v5ZLqDbM7wcMROEYrG
	 8HEdA5EWpMyJfL2WXyJYwr4ADsrsCSg1w7jRD6584+MOXQmisslprsyjvMnJS7d+F5
	 YUaXJBJ5uCMwNcPSOU01x6FQ8dhDICmZ9e/3YjDA719GQ4lVymAggbGcw2PyN0rjFl
	 cIaY5lcYrjh41km0LoMaKK6WUVRVb/w6bqWGK+Hkk8RY17AtxNik1C6u3D8H7SKl7W
	 PUhg/CucJ+RaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C71094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408449357.25376.14636225717080444801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566fc59bec0aaa9cd40b17c0efd1436bda45d19d7655d73584fe7ad20916c26c
Date: Sat, 21 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774084493

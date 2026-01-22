Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1267135DCE0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769117035; cv=none; b=KXYyz7KMxEl/uF/J3PY9Gd2iiYLQ22R+z/CZESMYc3uldQnHaQQ8FQbF4z3hxsff5lYusaRR+qWeLzW+/DPeS1U17lfT85uWi67/Pw04mwwkrGaYjF2SrVKzUfPUxd84xPCilfSC4aq+QiE33QgXd0PicDPsc6BB/46jmTpWaS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769117035; c=relaxed/simple;
	bh=jJLyCdWKYiUcLuQpV6o3Dr+FbLZQoSBuwfmK7Jca45k=;
	h=To:Subject:From:Message-Id:Date; b=WcYGgWyKdtZ5GcWwmoAvquVe63eUn5/cJD9mnWIhCLmXzi0Yzhkw75gxKKJOYaohwz8hi3rAfqHEDRnvHU/T5GWsGRmosM2+hXWJLwwndslFfAk+TMYrYdMd6F2KvroA/pJxssEjtMIo9NunYM/YXDej9mNayE0TvcQ+dBSucsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoMy+/8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoMy+/8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F53EC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769117033;
	bh=jJLyCdWKYiUcLuQpV6o3Dr+FbLZQoSBuwfmK7Jca45k=;
	h=To:Subject:From:Date:From;
	b=RoMy+/8DpPeQiYWmJt5axMKsYQcgFhhaC6Picq+VHl4gUBDiabYRqspFkBKLgF4QW
	 gjXUCrfiisbxZ6OVaNjyYYEy5Hhzjgm4CAAeGSRB3M49AiJdvt/eJnntxAQGkyMAS1
	 6Aj17KhTop4xhBelzKZaUsiuAFZYXy9emRHH9NZkyLgRN2RKvIkaROfFdiBIsAbv/5
	 ShA/VnZ74GP/vRUgzgLjomw5LHWrLZJlXIvp71QVfgskVbCu80sxlRIPWVlYklHLJK
	 Y/iQu4BKLXqp3v+Y2VVXk429QYUsZz0n956y15w/ORLZ50aNO2YlWX6X7+t/4a3br3
	 Y1NVMrW+x0i9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3DD6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911703358.14297.3082228649129201545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8cdb9e3289cbcce9fc232f57f384626fd61d29c9c99abcc2dfc0456624c822
Date: Thu, 22 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769117033

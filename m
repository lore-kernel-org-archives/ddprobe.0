Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8CC3655D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787812834; cv=none; b=Z0E9bO5fOz0h6KHhcgHErKFcM3EiUq+NyJ3B6i4W35Q/Ob1XDkxsQSmlZfzEDuQsVOILqjkfwpLOYjbfDTpfmyjD3fzW9mSG5BkamSZkIEgSZdNpt/bAV86BpTBAREBOimZYdTFUlCGyYtpaOxl6ZEXkpaM+IM9hK+lVluBRErE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787812834; c=relaxed/simple;
	bh=P33PFKWRqmDMFHHK1F2lYHNc1vU0w4vWFe6bAQIsl4k=;
	h=To:Subject:From:Message-Id:Date; b=kfhGD0pBZNKYaq5cIkFOYJEwtAXelicWt7Li9h3xphv9uVyODsPHjbiFa0vjOkb7EiTd3UMlNIg4jsXFYhaPalDKXn+nXOEjFqVoHHKwJ4aCwCA+HcYWOumMEITsCU5q2iYe3ryj2OAQju2BJY6sAupMY1XtJfgHMJfiNxKhXzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQMlx7/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQMlx7/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04C1C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787812833;
	bh=P33PFKWRqmDMFHHK1F2lYHNc1vU0w4vWFe6bAQIsl4k=;
	h=To:Subject:From:Date:From;
	b=XQMlx7/kdOL1fWOiNIx6Q5fQ68aDh6ueDb9M1iI4jOPWFoq8JqMK94FQegSRUgiDO
	 jiRO6rXpg+o+XsyIUHnUMLbM8C34uXN2MrVhpWR+D1FLMYJxyq2PPD3hQLkObAhbM1
	 xXw/qb3JLTc45Xpxevxf6YVXK9apHb8CBLePl+ezthI+UuahXNYKuwoc00/oetNiPU
	 cyKiZDFpGk4Ppav/anqxrm12e/oA+3TOJP2p3W9j4WnVe7xBTVAdwWarulW68hP9O4
	 qS0zAT3e5LhD6FM5q1/7Laptja2c7LpZpNMwyQp08gK1pOMd2MkhsvWYf1Un+3xKnM
	 n+G+R8dr8t2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE4EC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781283369.13382.11412841092254735772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e89be29b42c1cf6e771ae1066848c06f4234359921868eed63e8fc6df4544ab
Date: Thu, 27 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787812833

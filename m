Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D6D39E191
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774859694; cv=none; b=mJnCpTO8Hs45E4gKxEofQ9TgWFufDAx5haym6AJFp1PQvHYlkMp9FCMXr6nqI6MGBL8ZjDxVjQoDYS3BpSFccE45Kb1C8RkEkir876K+gJoTvG5D6PHaDnCoKR8EcpjY8EyZM6KqVHti04/vkVv4BrJmhZc564nX09kIIjJggWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774859694; c=relaxed/simple;
	bh=BAjrqs0HUBcdi7PmupfLG2ghBerf93P/n0qwuc7wLPc=;
	h=To:Subject:From:Message-Id:Date; b=Ms6Z6O3aOmPOfKN3C7IRIxPf04PXfZbLR72gkfbrY/ciUKRhWW6eFtQXEMA6LDUIPvNZB6w5ibP8KtmeqBCuPYkQoAcqJtNgx3Bx3o+xZfyYz8F4uGrTMZ2PPYDat6BLDmy0n1KzY25BZ541Urr+etXMZIxVAnRHyEd6lutPwfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ddq7728E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ddq7728E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C22C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774859693;
	bh=BAjrqs0HUBcdi7PmupfLG2ghBerf93P/n0qwuc7wLPc=;
	h=To:Subject:From:Date:From;
	b=Ddq7728EVP4g6FdcseCRwGnJ9lgOEtRzAMScoO+/bCNlZsZKkdPXzA3da5z2xiZA1
	 9QcEWD+2XTXArUA+GEdfPOrnbtl6UGzjUrKq5vC/NFwKszBb3Hgp8KuB44LTEnUTRP
	 A73iBQVXgiVzN3sx5pGKbKh+0JwWk9QZP370S79jERivHg0gtiXZ9rOtTzlUwGzvrx
	 5X8J+mmJbbvlpKdxN29vOrAPyC6xUQGdX2uBzm8yFK9OYNb4u34J0TCC10mj2xOlAk
	 65QiYbbltTllqL6+sYhLrsUrVq8szaK+XZWTPh+wewIy3SZj7HwPLfPqmbyOAOXEIg
	 Jm4ZuAYkjnY2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9103BF3D61F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485969358.31959.4897365642041654826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265a8e333c5651ba2ed2b4f278d5e125583e9244b47895449faf03b7f3f1ba09
Date: Mon, 30 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774859693

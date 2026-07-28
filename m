Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A97D28688C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785202834; cv=none; b=DwB2KppajwIQn5q7xX6qzzVf5giyNxpXj73RbnZfrbSLZWyKUiyfhtr913tpWCR5Ds0qb5dSA2j169g752E1P+PlGmGHcu/UrDxdpBgn3FJ+rQ1lmU9JJvnEHm9QWhvinrq/CPxH9+zHHSvBAr9xeckG/nYw5EHdIh9VTo4CsLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785202834; c=relaxed/simple;
	bh=UAlNCp3l6VlIMVn5A2gA9U24YcvdSnYXhUfZnNlt0LU=;
	h=To:Subject:From:Message-Id:Date; b=AwijNeIvgfyF3lbYJ5aQuOtWWoJfmoWfk2/rzmkIYPXrIS7tWPOw1NNtw3Ijq1kGdjKxX0vo6K8PzI5A7ocJZph/5qk3BdvFSNmOmqcd8RB4vj2IhTH5AHkmlsu1RANfZ/yaSCYOG8FwaFlaVcFTlUQIcBKi/jd44EngtDgN0b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbI6nWqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbI6nWqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5868C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785202833;
	bh=UAlNCp3l6VlIMVn5A2gA9U24YcvdSnYXhUfZnNlt0LU=;
	h=To:Subject:From:Date:From;
	b=UbI6nWqA8KWUq873YIHlweUbMQIFMlmpJdHJs7a0QXAZalmYrrxH2Zg8J8uNG7235
	 6awUInIyJ+drWQ4tvzQ/Zbfz08PAlAw7enoh4Adpg4/sgaw5j0M7HE3AW0oWsA8Et+
	 fvLqqtkODBxB+QrVx/a5mtPqT5KmvujD0hAjWRmSbMcuEoJbBrNc6Csh6zP4Ydm+OW
	 icwjaN2UjYjudCn44q5fogOTq+aMbnw6JVPgbNV1U3CENLQmGIFwD0SNaTMMrK69Jm
	 BjYBR95uMY7rcvTfpeC7e6OixukDgpsi23/j5GopVs7YJzHWKajltvOs9Tpa6ZONrV
	 lld2hSLxpfSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4AC531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520283371.9010.3300871276239896851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5d29a7254e69d703dc1cef725b776c32216efd16eaf7d97fef02a3fdc5cc4d
Date: Tue, 28 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785202833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416DF1E507
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716909863; cv=none; b=oD6Ykk8LOD8Mzn+QxgpIYfssRJ8cKl/mMAZZPzAh1PutqAx2rY5M5rrmlehDq5dUjVU4PnFPDAkB1QiQA3gi1g8IGAZbOScT4X5tl/ckRJ6OQGOa6XGcyguXbDFht1LPZaVn3kSBE/woJYx5bKB7mGOlXZt+FdsZi7/+ialOBaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716909863; c=relaxed/simple;
	bh=Dz4pg11ko0eVHVxB+otLFg5e6qqfU2Az4EyVO4aQ75I=;
	h=To:Subject:From:Message-Id:Date; b=O0q/zSK+rOj68JSVLh0KgrNk5peT8iQiXaQsxgl5GWq+hwIQYnYVfxn6VLeu4lVMOB48tXwa2q0dHtyrq+9eAXMFsYVXmBibdT3Zgp3RIGzPvjcZ/txSNP0RSEqajgeAfIJwG75bY3sgjH28mYE0dDNOAIVv2K22XGc+ax7Wb0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi0s31ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi0s31ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6425C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716909862;
	bh=Dz4pg11ko0eVHVxB+otLFg5e6qqfU2Az4EyVO4aQ75I=;
	h=To:Subject:From:Date:From;
	b=Wi0s31ibgJ4PdDVEN20V3kj6wS4WwcrYIsAxhOMvqvgdJQEczKSCVMnrLpFYj4uW5
	 7mT/noc9q/uJ614KGkpwyqLJojK4RjrBsI95KJm6R4w3gc218cqGh1gpHcPnECzTNx
	 OFWslwurN4XjqKdlZCGSSU5n433EQyeGgjlL8DG5Czb41+WU5U2a5k+yS9g+iS7Cp+
	 yqmJo8qBt/YmzAGknEk90alAxDgy6U53no9KmaAwBRnd6epnMr9mYKO2jIQ2xJr3md
	 K7utPt/W2UuGiuwUnQdDFc05rMV+W7KSNDBWhJGfy0+UFaJSeIt77Me4sszjTyx0AK
	 uyxNF2MREqoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CBCC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690986278.17413.11272499944174668292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d57603bad2488df897953bbf4dc23cfccb22e5771e7a45d826c4eae4648af6
Date: Tue, 28 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716909862

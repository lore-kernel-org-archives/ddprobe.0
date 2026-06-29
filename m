Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27428360ED4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782767314; cv=none; b=cYOreDW180fj0XaJ0CFKtZAGoeXBrs1hKGlRgshYkSZR078+Evf+mCuB6XO5Xc6ZqyBCp3Wo1ld0Y1C09jIqqDtQj3D3hfCypqlBjPcskVDL7CfWYgckyOZpcPpS0AAcCKF4nyN2cffbHBgAfhl67Jh1q5G9qhsCVNGLjef1e2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782767314; c=relaxed/simple;
	bh=Roq7sUxP10DkDcES3e6jYbzOu5LGb/PhGxqpKYcqtGA=;
	h=To:Subject:From:Message-Id:Date; b=VYFrAXUAO4081PgOJ+Rnu2dPAxwzuY3+BKpsp4TGZNaKfkymZcFQNQRazDkXc7tlh4Dmd1O87cDH32IucsCD12YV1mH8Udk24e9upzyWzbUsBjDx9D941eyn/D6dz4AMz/1pQL1HjN29rz1ERkSvBH8EBLwmR7ZdB0EGw150ZQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s99cAicD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s99cAicD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18A5C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782767313;
	bh=Roq7sUxP10DkDcES3e6jYbzOu5LGb/PhGxqpKYcqtGA=;
	h=To:Subject:From:Date:From;
	b=s99cAicDfYcQ8rkqe2HNva4v6KddfWnbGBXgLanXl/ZpzSuvmRlckbreFS5lFp7RB
	 5D1k5v8QTc+it+4W60YLFYBh13ciAWIKUBqXRn1xZq04OELcvc5K7hA5ELLfHR7yQ5
	 adJ75VDQZOrBBGWyu2hU8OzT99CoKMzB/TkUpjmslylqrBi2fMzCTPv3/US2dj+vdK
	 npu4FXFijPtOCyXXjK8s9JJLzM0oxZHZNOorVhH5/edS8evcBhYLlfjVGFyKqqzws8
	 oL/t8xNdRCFrGpbO5fKs9BbSfHPUKPCD1G72xwrhh0XW6uGXs6ItdtQGfx5LuXXUzi
	 8cwMpW6ueb4jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BA1C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276731370.21281.8120286419477679320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c849cf16cc32d0beb88d47f915ea30434b68a464520e80d41b4bdd4d2c3324
Date: Mon, 29 Jun 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782767313

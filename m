Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D0528680
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715791943; cv=none; b=p2AgbBybXMVWs78EBzHiEbcgf0JI9LJmO6JqGbv7VxlZoZo83P/7xqjxJd5NH9VqjMoLdA72qxBpU+bgc7I33itK6hht3eNl3he+sA3f+hHnhCK7Mvb9dxZq9cnxnKfAuUmw6KIiY47mE06qOznWHkzVW7Oyj5ANsRKoMfdreLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715791943; c=relaxed/simple;
	bh=I3FWJdxJVw2tvbuKv+4kHKQt+Ki51/EPPmzbeaAL2pk=;
	h=To:Subject:From:Message-Id:Date; b=D9w9Wj6HKfgZxkBMSLmiHGnyLiJ+cqhw5DIFgBMdpYknkq4Av7NxZXJRl5AKqoU7I7cqxxmr8nlvupqCApm8Sqio58XfwSnheW9LAXUniKaxOHejz6Tknj+co4VK37FjNWAOCmfqIwpnl5ZmvH3PfX5mplRlkeVoN+OQFE0CcnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KclSI+9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KclSI+9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4D9C32786
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715791942;
	bh=I3FWJdxJVw2tvbuKv+4kHKQt+Ki51/EPPmzbeaAL2pk=;
	h=To:Subject:From:Date:From;
	b=KclSI+9NYnNx2nkgCwLV0X5xBT6jLhdVxk7owi+8Y4Yuyi92KW4YWOpMZ8qjuIPPf
	 zEcOvDepVNKIL43Il2J1cP5daas5C5FFIfrNQjA/1AK4054f+wc6RvAq+YU23/tBu5
	 yyVnR/a0jhFk171eWlwtIXExKJL8OIj1j6E7MVFyYVPkG6Ae3KNnCyQgh7HO7ZUuV4
	 ImZ1oTA0G6ISYiGx5GONQyHW9G5qlRBjIjqpitpo2ojT9kFe8X5n4yH45wXL22V5Zw
	 TqmAczM8bokWH7v50Mluq5QsF99xeUb5ndh5mm5zGTeUY8qpKIxO1AYfJbleoKvTic
	 evmFpq1xSJWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADBDC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579194278.19521.7581468366458197346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf5525ffd1e535f499444d47240f5f90d010881f0ec13abd0258d6beeee30cd
Date: Wed, 15 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715791942

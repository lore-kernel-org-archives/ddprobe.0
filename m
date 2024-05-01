Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7717F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714546943; cv=none; b=h/o2nywoQGPIrJ4c9uneWRtc9WeN1IzKI74mRflEeWg+gBWMggDmh1Mou9Re3qnZwEfkQ0jMzJYATk8llxQjTkA9Za5XSq1po9WP97ZJLINW/NVFrUDOP9eCebI7lJ08boC7PjtAOwMs0sB9czCZ0/qUzv05Ea4wA88KVlffLV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714546943; c=relaxed/simple;
	bh=VqW14RHtYaMTqIcwR9DNKke5kBXT1SAGdi7I2N/kOfM=;
	h=To:Subject:From:Message-Id:Date; b=uC9Hy5rqQWJGBCf/TLY/N+uTtkmY9D7ACTBfihpG7jUKSONZ43cEBc3RdbukRxCvgcy32XWfh+rucUls8vw6yIz5WO6p5yYO6qRUpuvIXFojKnrullmZu6TQreG0uAlC++bTvR6RLq141ipUctbEqrGXZd/OI50bxH0Ew4WaBvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7IGZytS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7IGZytS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64A0C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714546942;
	bh=VqW14RHtYaMTqIcwR9DNKke5kBXT1SAGdi7I2N/kOfM=;
	h=To:Subject:From:Date:From;
	b=u7IGZytSl5iqfKsv0xvlr4c21CwNc0Qo5y+Jlu1bGIuoi5hDY4JLEjOloPD28SqoW
	 jtexBiBo1kAvpCdZH9NkIw0Oa0eOm0EguzHHLPQJqA7vrWmAKNGoncakCy7agkhxFC
	 E0eHtZGowC+QFZlUUaL6y+oP5lC4Gw5z11G6LdgRSluBQG8CAJqSZarT8FX04zWUex
	 w89p9/uTQFNTdOE2UmeExV0UhlMiEdzsntyCDTQ1NtjfUvUDixsFnStz+nekI5OV8L
	 kszGgbqZr+eZURiN4AcDMGB9rYfi7BTXw3nB+9eTyl+rL1K10Fa/IbP2YR+1uA22C7
	 ywpq52OCmoRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF187C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454694283.19238.16931927559953710771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce327f9366fe3d100fa0392d06ace15ab5e8fe4e2eb98058c834d66e824db04
Date: Wed, 01 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714546942

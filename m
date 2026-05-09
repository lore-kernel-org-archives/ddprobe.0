Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B0B34D3A9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778368714; cv=none; b=aOfELAW7EV5Gk7o/oVmiOBrPKXfqWxe8RwScCjh6LaV+wntryAdwx40nYTH3WMZpMy6sD9BDLmEZt3Cy1rHTPmLWGETx4feJ+I5f1Jn8O3X7j7UStGhhGkujG+CsxvsQdhNn8AOvRfGjcw+BbFqQ12GfuX+EZdyMaVRImTtuEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778368714; c=relaxed/simple;
	bh=hHmhIyuWNesEFY45PrvaE9kUybl3jkAkkZFa8SVK/JA=;
	h=To:Subject:From:Message-Id:Date; b=O2GiDyAdN7bATUHVTce9IbsxiAzafuJKdnP/+DAwmO9lBg4Xp3MFFUi6pupMZRGv9eboqPt+djUol1fbQmgSwr6pds8u+F2dUZVgBC7sGvk7p7GtxqPSZ5tJrSryDSYNNL1vATaJoVjXQCKnicPkw333SQgkZX4R6HiHXg9gXrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzGVTHQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzGVTHQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DFAC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778368713;
	bh=hHmhIyuWNesEFY45PrvaE9kUybl3jkAkkZFa8SVK/JA=;
	h=To:Subject:From:Date:From;
	b=LzGVTHQETeoPmqE7IyixAoc8LNPJiHY2Sf9aMC8ib9nNSx1EL+cyO6rj2YmwDzdp8
	 i+PeL9ku/rkeX7Ddckz5DZi2TRw6QupgH2aB7xX5TKJpXqGnkoICm+NqopAcuG78/i
	 J5goTpCU3wUqPp3MjTNOp42oWLgv4d3ZzVg3H5Mp5B3/5HynkLu0pXtGTgDxK6s9Gl
	 r4RLKwP9Bd44tOHzbk1dxBe8pVgMvFwIitQkHyQt2X0BFWlJeIOoq+Zxm34zykFtdH
	 x27Y2ksGT9Y/BK2vHuN4U+uEmpJBQ+rFrhZiLG2W8tcoYxIQtzP1avUtNnFBCIJvll
	 fU4qgIhndqqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F4BCD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836871373.17181.1541320791146658188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978f8171b8d3338ed54d2f4d7f2fa43fa29f618d8662d4f4e382254603ba5f43
Date: Sat, 09 May 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778368713

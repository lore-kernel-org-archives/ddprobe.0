Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EF43B8D79
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764985374; cv=none; b=nXtTV6nGKWof9Vo1E6eJIu2yXB70GawckMss2GhzYmiE+v3NBfrj2wlUuPBiBW7TDcs8Hk5fkIFzxSINSJ7/8e6qse/rfLU52/dPzPs1Q92fAwuOstNQQOTTfLOHf5pI8QX/7mUPHThYF27J7zYwtyhwRQl4ZbSm9bXedhuCnow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764985374; c=relaxed/simple;
	bh=fgNEIUiaZeOfePcSuz384nLKusVeahTImfKKyYNHBjs=;
	h=To:Subject:From:Message-Id:Date; b=rTSOi7NW69d6iY646JxcPN4WkyCGB5YQTAxDnRLYbp9pyffdG921M3B5qkBPCVbLcCqEAvwTpCrpg2WEG+he4M23mKVon7fhW9sQ/fLSw/M04Q3tPOQ/aRx+678TWr8zvbFfH8yZTYVP2/k/WyUL7v+psWqX+VxFCSs56N6SGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/xbvqoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/xbvqoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764985373;
	bh=fgNEIUiaZeOfePcSuz384nLKusVeahTImfKKyYNHBjs=;
	h=To:Subject:From:Date:From;
	b=c/xbvqoWxo8R8nv9UgOnIoBYVwzJRBHbll4DZrGuWsiQFysv/ulqY0M/0b/PEt32f
	 4bq9jCYSasE0Qvz1MxysGXQ/WPnS6A/3I65z7tspjQx+1hlow/YMKhzMTcTNS9p9Bt
	 ByRT3ILlqD5e6JTH4esaLYWm1t7PQaWJR0dcEi2gF+tDEC36K+1JgKdon14trJpz7Z
	 vHVN6oEKffyGZIk/broMVJbPGxAFhxL6nyXXo78puRZQ75sthnstRC4vfIg00F4ae8
	 1CXnAhq54TSm8QSQu4HnjC67qQMgBR2ZrhvuuysAFMPowitXSsm/S1vKkfkTrgt9Ri
	 bggpwW0UjAhsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E5D3ABD5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498537358.6283.7356365781994058384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ad71752b040d494c273ec8df6a77d6517c34c6d3c27fd08567282f80f47ade
Date: Sat, 06 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764985373

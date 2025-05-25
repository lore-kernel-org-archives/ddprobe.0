Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541B82C9D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748137194; cv=none; b=HA0y/dwxAC9nojhSsAfK+cBGRbZWUZw4zXkuebRDbXjmiQjWZpb9Mybt2w2WpzYOZHmqp0s2iTyJ2wBiRv9getYx8IEUC9masBRjpIdDvaBtmiAjXp/ZljePAwlcZKgmy/smu8e5fRmLUbnGZcbYcfm/450jq1Bj9+b+MXGMvSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748137194; c=relaxed/simple;
	bh=XcgxEWJ2ZHPCf0ypmoN6JN7y5fCAtL/5gwE8qV2IYUU=;
	h=To:Subject:From:Message-Id:Date; b=u4Ip/7GoT4/zzQbqMO8ZmHVMX99RnSyqo30tVNNzFwyGNiDox4z3QKxy44v6LEQHqWR+Hf6etbF5ScYbGWW/ntpX2u35ECQbnuWvuZNYtWCqT3si0grtSJZU44byyf4YEyrp+iMPgaznCNLoCZT8ThqX2mAu6VqJ1meOdni849M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxQiz8vG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxQiz8vG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A644DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748137193;
	bh=XcgxEWJ2ZHPCf0ypmoN6JN7y5fCAtL/5gwE8qV2IYUU=;
	h=To:Subject:From:Date:From;
	b=TxQiz8vGdHQrdZi4ZHsLHLR4J/3EeM8GcVyPSLX8yMB9WzgwZvL5m3/Yuk7e8sBTr
	 W6bgupoPgKnS0HyxRQN+WJheYXsIyS3DRCOt8du5ZrJhwBhywrWlloE9p0uxYeA1wW
	 zizxXqUlYN+cq2Lnt+7kYFmh/VPIeHO/u0Q20+At84GPWhirh51cM8nSkrgYIqj+aJ
	 UHImZ59zUH5DDao74JGv1LZy+c/7qnZobxVktMepeyj0w3Ekvzl2t+YalwC+kBwYhO
	 Via3s6YNEg8dbij2kt0vPBaRgcOuySn0RuSgv8I6EbibCoogPQ1FNZUsLYEyRWqsIK
	 YPhmaG2103Olw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E2C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813719357.11120.583269908808860493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba857587c3e2ae52e14f5fb7002f55f8db03068d6c446c747d2098b3d43f59c
Date: Sun, 25 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748137193

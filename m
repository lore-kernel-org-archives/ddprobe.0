Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD929BD82
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778630434; cv=none; b=t2jwUQiCns5oZzg7WKOqIiSg/h9Qd4uOnbS7Uv0emkdLLPmkanYd5JmP8u051jPvTFqeYy1yHOaWlQ3rcEaPZtKtYRPJWheEqXRLzCVAe71hYVxLqEVg+hF0fAgK9QazlzijMw49guecqLogL+AS3jJSEd9yr+NKTKvrT01Q8bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778630434; c=relaxed/simple;
	bh=Pe/qA5KAmhwtSe11nieg7W/qRXqBOX5WWEp5Fg+IxRE=;
	h=To:Subject:From:Message-Id:Date; b=COdQyXfhINip73u7LD8sHBML0OClx22rOGk2KhBh9NiaMwvH3/uRaQE0AvZPeMDiZTHtr7eb6sb8+eBWul9j6apc1pzbp21uETK9aHieW2X/pCQBNTZRkmIaTBZrU6gvAGfK8V95kofwUZyo+ORkij/EIx1D0YjP+A7ho6YbT8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsJ5KHOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsJ5KHOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B921BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778630433;
	bh=Pe/qA5KAmhwtSe11nieg7W/qRXqBOX5WWEp5Fg+IxRE=;
	h=To:Subject:From:Date:From;
	b=fsJ5KHOkp6IaIr2Ve9E9MGCSN97FbDU+sOkMulBT0d7uEQ3lnO3xQGpujvSsQHHm9
	 /0R7TTe+imOZ9q8amkp1FGH7j3825GF7wlbXRwSe2FSA+0AK1ermKlt7mIAYxn5sVB
	 ZzSbDN1Z5UwwzJ8HH8KNX/YVbW5VFjE9jV9vyT7lcLU+fR66YcLfdP44lYxZ2iyjFF
	 OOFRXpqhkra28viKiEgyqFcreHU8ai1LjetcILQDxy/pp6r4iQ3janXjaeSNHDYWzc
	 NEXtufz1MigOYsUuGgzoT4ZYtjvszxgO73qXBpIwoK7FxDJjEScwSpFx6y/3Viq8ko
	 +mR+wUt4tIaxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE95CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863043369.26193.8209618600983658121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7912b65e5a81f5f91a2bc0afe172923ac2955ac21301f62b48da1eefcb3b93
Date: Wed, 13 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778630433

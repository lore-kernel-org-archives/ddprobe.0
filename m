Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289FD70808
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767254634; cv=none; b=lr86bAp4SFb0dGhdq8nqMdJJVbpPpDpgbgnlKQmaCIJNX5QcEtgW9anqDse8YmwK8HJk2ayp2YQMxgO2ahQHZWTkJPswmLqP/1IxkOehfnHdpboFwlSd8RQjv/7SikFBgFFScVDBYGuy39gKANmV6HWrOY0goUSra1OAYigu6Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767254634; c=relaxed/simple;
	bh=OzIZsamzKZ4wnMuu/+FKcnDkQPjQueTWvuLL8j0NG+Y=;
	h=To:Subject:From:Message-Id:Date; b=LLVmdkIh1zb3zd7hDmZaL6k/1aM9YR9rl8DDbYbS1Lw7wLE0tVSjE7mO8xNso9j81S6644idCmu3Ua20gNXEb+TmFJji3vIMzzw2F/2CbtPzK7eSULTs6oYMtHXGeW+NMJ6i6W5uvdkKIvq1dP07AiyPAy85lU/e3EbEXyqWA3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+MAbKUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+MAbKUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767254633;
	bh=OzIZsamzKZ4wnMuu/+FKcnDkQPjQueTWvuLL8j0NG+Y=;
	h=To:Subject:From:Date:From;
	b=T+MAbKUMcV7RlnJ4IdTVxG9g44yiIwHAipkAGUR0Z0YGEgrryhyJKlqLp4LuIRM9i
	 r5ecWrpiyVgFBT/r+P2D0O7OHc2iAbkLPO9UeVceu8TK4luZ0fJyNbSwqQ3DzshiWX
	 JKC3+qd8pWe7NHYNSr/Brajze7HWFtfpYU1viyZsN+mTm8d8BHZunNup6Bk/gltG79
	 oExtXSfCrfH02hqQVjvj9Zys+SRt8VU3y8zz4IvKZ95N+A3X2iFyh8aGEcsQ9nX1LT
	 VWRmwraKlUjBixWtJRhKJ/3w774Re69O0S9rl/zde+T0UkAo4W89+wtwLEdfkkb4vp
	 zv6YQZFZyo46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B12EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725463357.8599.14996475033328412921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195e998915a58f12b877a7a89b57cbf0974fb96d3dad16c9d5fce5a304b7150a
Date: Thu, 01 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767254633

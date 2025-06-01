Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397FA42A92
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748803794; cv=none; b=TGSkYLKkomFJytGjj6teL2OvvPhjQC7g3Hod++d9dJxB2Z7hqrHcuGCz4OSKdhWm0t1KvQYiq3sVfgdn4l6emwI87O8ZlzcEowNYj3l5A9kPQ/c0L2oKAopQNLZzOZlqTHr5/cPrO6Y2eVZd1NdKOUymPFx+pvIp6rAG3hx3Gyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748803794; c=relaxed/simple;
	bh=1t/xlslZxJ19v3+PsdaNgPsCk7Cv1wEek5pWQC+wPLw=;
	h=To:Subject:From:Message-Id:Date; b=jMRMz9qNYkCaBtrxdajs0Rjq2CPFztjBfP75pWckCOAoHzGZoATgAlvV6X5qDBBOzZqX5WUwXWERmrSmZouP98F84uq49bcE58SdKqeBqtYHLMtCaPmuYR53ERqe4OfKMUIk/OoH8ezhSioM1pzOFTV6sqTEvVpXhqHRl4MEJrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJQZgIrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJQZgIrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA15C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748803793;
	bh=1t/xlslZxJ19v3+PsdaNgPsCk7Cv1wEek5pWQC+wPLw=;
	h=To:Subject:From:Date:From;
	b=lJQZgIrZPmas6VCanO5YYdgDaQrI8U15R3SLQsvrhqrJicxnZt5hRxD+VjDCbyHi0
	 cI60UfYK8yzu9hkSQDnLSbPHqNyrZRXLa2+mwQqBmxOSzF/aQEiTD13zVH3oNGxDFH
	 aScjMTfP9jCZrDJSDcGsX6Z+l8VWUlJhev5uY0sNvToc4GnKOF6BW7Kq44/4I66NCb
	 6QeSFdqkrCQokz0DEvOf7oWxg05fxOPpkRRiZEYtjbC1iywjjUOewdPjbzsoGXlTyt
	 RDbVJVoFdtkAuCNVoQ82FZkg5dsOjNaFdHyZUELKXR+CaYZnL65yMlmjqrmlB8xC++
	 FeRPhZGrsGZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98823C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880379357.11655.13296896913236549159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2438655417dbe517200c83b2c8d8cbdc7400cda15e14420a779716554c3d48
Date: Sun, 01 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748803793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393B04A3F09
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788294634; cv=none; b=Ki4gzvra5hxRRUXS8LzcCx8k8GZLReM3h65KCemT+KyK3wUP6D+P8JPo4ksm0f59+Kt82o/rlX1PmaNQk5adjpq6chxZf/I8YSr403pXz4yfDltgZ+vrkWkW++uzSuVNCVvQHt6og+/rybRwpqZH9mdtR4Z5FH5CZvp4ZR6b1s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788294634; c=relaxed/simple;
	bh=2uevQyFwppumTa653UG6VLFFcc2r+SQmYJYDBcel1u0=;
	h=To:Subject:From:Message-Id:Date; b=aciojJZ1MdicJRA4E/acDsBtKYYyzElKgEBmQq8f8f3NtSJiuzUpH3khgcWYRA2V/B1+6O91sK8lmQubKUqDOSOuoEkzlEcxbQPQKEP+cXyJbPZmmcA12u9kWTffktFPeO9YUnWcK9Jt/0PcAiPiXj/iEbOWmOSPW6m9U/JYLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3cV7W7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3cV7W7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA98C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788294633;
	bh=2uevQyFwppumTa653UG6VLFFcc2r+SQmYJYDBcel1u0=;
	h=To:Subject:From:Date:From;
	b=M3cV7W7WSB1NkyiHStbbVuUI6DNS5Y/02FjT+F5qWGHG7J6UxS+uUUwgrlU7hCIQK
	 c9cFGnIyYj/j1Nw04WV2cOBRO/OxkpEKZ2ZASQwtuZ54k6r5xWYe4RKCFd6MnMO+DN
	 jI5eWO5k0RYAIZ+tHDyThyJrmDuCs8OUPSZRUGJ7rLyJ/m06cavYic0zqOYhtoiUnF
	 OK+CnznS6rfpzKqdBRHNVJXMj6F7w8y/1WvscOWisn/j89gqVF6orfRG0vevO29iw0
	 SkTE7UuEV6KsHWzVayFBFJ5EmAcpdwKDh/G6HLhKHY9qGUBcgZHUFwXaic1ogeWcVo
	 GhdliRNDs1ckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8FC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829463368.24761.16904026393793250730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd42d6f46b9c6dcf603998bd90d2ca1d7e86da8163aca2d53d8d229e900f715
Date: Tue, 01 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788294633

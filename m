Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB9276C85
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706555297; cv=none; b=Smz3UZpzBJ1aeIknzDf6UucT1KMUttnVfjq+sG1CgybZE/RaawUGZwMkesdCPl3ahDKlxvljHLXai2g03vVJDYfZzgXlZx+izeV4u2aNnK+r2z3QCpu0dQC5R239EA/ux+wScK+CADrLKDvnxT7g0TqyFSr39tvqhBp3QPpX+Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706555297; c=relaxed/simple;
	bh=N3DCa1G9hAcyCwX8DtEp3jq3cGzaqvXi9UTb5YD4JvM=;
	h=To:Subject:From:Message-Id:Date; b=dVEU9qK+4NpYOJwIB4/DLdXslW2o/BY5zgP0qxQpM7g6lAh0jWwKLdRAOfncfc6jaPvaHFare6656yOBDG1jM+A71OjxAE7i56L2QCqvXz1CKqiPiob9bHSKSsyOY9zIOfpOYm9v86WDkkQIn58/wYSu5b0jXKeVmNayK/ghdz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIeXpY6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIeXpY6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8561BC43390
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706555296;
	bh=N3DCa1G9hAcyCwX8DtEp3jq3cGzaqvXi9UTb5YD4JvM=;
	h=To:Subject:From:Date:From;
	b=YIeXpY6Fg/3eoa45g/N7yvBdmk2yjMjqaUzsXLLtdWqY6SyLE5vXDhSOcP6rqU+4E
	 uIXEENiEuWkjLBVHMHd5bKWs8Lwv96Uj1GAvBqD9EXFKVrRXUwkmx+o3+M7g4iKkSw
	 lQwAxtAXwzCZv4B4v4VQRRUchqbHzsskTR4JiVxHjX4WGybl3elfi5KHa4ae3Tj48S
	 i+gO5K9T6JyU4M1J1RD2mNSv5q+I9Lg+VQ+LNkvSSDOC87q3Urca/YrMWtiQ6n3INv
	 7rMgXx5XUnLz+g0ftI4/GqHuQAojsOuG0/PVKgdH0Wghux+kawdHKBgo5GPl3qK+4M
	 5r8RHas6hmMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688B5C47DDB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170655529641.31673.6795127643359543542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5f5dffa7a05801eafef732d667ef460a878696c56937e89af06d883de4cd2e
Date: Mon, 29 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706555296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C2376
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715344943; cv=none; b=TFsz3eQlYKwZRn8Urbq/TvMY3H4oN8s3Nry/cLW9AcKY70axnZpCDq1X7DiBsggwTbvEOZjws0V1BQBxDnzDozksLyYZUxLQhw+FMvEL7PYyXseEqP3wkJYZP2qEtTSqUjnO3eUkKd+q5dA7mfiKybywrtr8VsUsDC/IJJP1LAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715344943; c=relaxed/simple;
	bh=0oCVHTu2PSo3V9LbrWQHCPVJlrZM2evOFD02t4HHNPY=;
	h=To:Subject:From:Message-Id:Date; b=lRdpWo92hUHx8enk/K/TgHB35IcjqmN0zb+iEej2oNVAeSdxZMYTIjjOX7iZVxjJe7MuvlHB+uO0sITqOe+7JEwLai+m8ynGNFOAb93OjeRgJMDBKj9sHvPioCjze6Kt6+URU4Y3bz9SYjp4N0686ul2z3ZwJ3RxeRQsXXAbNu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syzAZk4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syzAZk4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F30C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715344942;
	bh=0oCVHTu2PSo3V9LbrWQHCPVJlrZM2evOFD02t4HHNPY=;
	h=To:Subject:From:Date:From;
	b=syzAZk4/xZzVUxU00UKFQotHR2LEAj+pre8sePLIeLZcPmSo66Iht1SMUcuVnWZvR
	 OWmfnHGNJXiryLk3A7B7Qx6QVEx/zM0N9S6W9biFdKGQh/maXXC59k93FnWKCNzQ/L
	 cy3chGZq4HrmT/hiAiWiGrkcYuWZ6krQPcW2p/QqXOUU4upuc34vOLa3gEPMCmYPfj
	 0MFFZFwnFhdNdhd8Ud8Qi9swNs74OFROgDVi16mPpf9baTaPI/KtZoiLkOlB9DtIIw
	 Jo215uMybK6Rh1aKfhdfzTXC5LxPTjzI4CETOORpwR/iH6ehb9SJ5vsM2Qm3B1mLfv
	 TUn7egOKCXE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9647C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534494281.31031.9570634410712192506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57fe8703eab4e12d85834ecb916a237698c0a983494f5168115f9cf6818123b
Date: Fri, 10 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715344942

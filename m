Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DF71422AB
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734990953; cv=none; b=YpjHQh2ZEhl0ZpNPFG5zjMjOh7D/eJkqDoxNU21GQ65DE1FhUDVktklj+cX8yc8c5dciK6qFBjSSx/9BOQrlVHBxzVP/fr/0Wxcd8xkdunEGXkU+IfpHOYRgmJ3fIafQmVQY3F3scBjzfit6mkl7xXIifHi5oF73kzF9b8kNHQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734990953; c=relaxed/simple;
	bh=oHEYFcxbXVylarieOVyR8Mg534b5QqbsE5moB/W81Ok=;
	h=To:Subject:From:Message-Id:Date; b=UE5UJpdX3uv5guXAaMN16Rx3w8nKeCQMamNDentASz0fP89cFawcva/zEsmvT/UQRSh5zxNaxt2qF/pbl8EmwDPsLGost8I6VQPrN+ISJHIgLWfxqbGXGQ2s54ibcLBCyEmTX5hpeT8wWyE9LnAJNEb+Ne5XsPvvWjO4R+bv2/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmOPltfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmOPltfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78C9C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734990953;
	bh=oHEYFcxbXVylarieOVyR8Mg534b5QqbsE5moB/W81Ok=;
	h=To:Subject:From:Date:From;
	b=NmOPltfqG46DcnTNv0kq7RagVH5+rTBXCfTDoVzrHVCcJB0fPT3rybM6bxftlWfA8
	 W7wiin7vywA8QC16eS04mPfAfbzbtyU6XqGK4W0cCbPpqQ+xxYEJMwvK6UuT3D2mlZ
	 AZxwAldU9NDOXEgPkAKe6lSOYzvnbgJ7bmLCLYcprUQknbGO3qAev/BoIHm9rRhy76
	 UxeD5kFU01EkEYvsoWL86RA1rjYLyGjk/0a72i7whYShDQj3GGu0COleU3Iha80qpR
	 9U6NxEjVjZ9PEm2/CbKGwHDnEPckiVsijI27wEZrTgkLHDESQ6QEb96KsK7KVO61e5
	 Qh9YfprrpoAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82C3E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499095364.18733.9955710556943361297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bc4e3d2bbf28912de16dbfc004068e8cf1cdeed339ed4b563c1a8f8cd95d7a
Date: Mon, 23 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734990953

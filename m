Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA230CD96
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946994; cv=none; b=Dmgp0S8BRFqFpjQPikizAjgflsowQQKFzwH96YV6IHrQGeSfsKgPtVXzOPIwp1/+HzsCoKDKTrV73BbGFYHBxw9ChMDvGAIMIwcULzfOJ3HUqHsMb4GJhJVns8VCQhzXVxMBhUqREQHFlf5XSJjd6rqxWgzyscX8wFR+ButLtKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946994; c=relaxed/simple;
	bh=yw/fo3Qt0rWfwfrqp2GqnSPub22J+2IySctS0cGcdjw=;
	h=To:Subject:From:Message-Id:Date; b=jgWiSezDFE2rOwwvwEMAN4Jo41RlgDR4rC10MEr9qyC8oPshgFF6yze7fwJFgxVY2j+3ByZCbvW+LjGWahOa4uIhPgFS7eMxsqs7A/g+ZX/owrThZMlJe5OiS94EulAjl0qKnakv9eX2FfK93uYysxXHmSGX+gVLfhfLf7j/2UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPrZYEHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPrZYEHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B938C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762946993;
	bh=yw/fo3Qt0rWfwfrqp2GqnSPub22J+2IySctS0cGcdjw=;
	h=To:Subject:From:Date:From;
	b=rPrZYEHt3KPMATHbcU7q+N/oEETEiq/XsUeZnloj1ZXwJzKjHk44XnpkDU47awq2r
	 Z1X4FEPodHZD0e2Bupjhvt+OKpWB6LhEoCqHnipv5jY8k8sdvg6o4G3igsiGsMnNWo
	 IqgrJginEETwDy7G7kkVIh/kABElq7sC4pu2ayZbH16+qFcjhx/Qb+BPNJDp/LK5Z+
	 k2G8mwacn2pup4AH23v12025sZouVk0vyvMK+NJJ15KINj5BYz4Alr4QbbzvfMVhMb
	 ejw9KgOOsnd+t6QdNwL3Ybafa82O2nD4yeCPwvuaz8FE+IVxNu/k7SnaabQ6R75fpV
	 yuGdJ4xsu1khA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FFCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294699358.18453.11188770786124206882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec07b09d12bdbd878b0b0c7ce21f32752cc0dc3bdbb873298955e7e651d9695
Date: Wed, 12 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762946993

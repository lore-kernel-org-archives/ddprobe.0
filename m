Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697B28FFFB
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749046194; cv=none; b=VXqqO33iOV1pZb1e9Xl6yOcV9TNl7+UsVXW12YfeQA49aaxyt4x3tZktag8yNUmTwyGIYuIF5iUxI+cTzr8KZjZL8QibqMKTANzJb7ZgMpTlt9IwBsluKsEKl7vrly7Eak4bV2H6C/R5RP4GZX8QThGPreSZHox7hfNF4ihwDsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749046194; c=relaxed/simple;
	bh=LHoE+Na9LxMjQsd16d53ClMJpz9zRVHgH+RXo6secQ8=;
	h=To:Subject:From:Message-Id:Date; b=mv7kwWq9LjVjr3VOvABL2PRFsxF/WVBK62ZwrE76NPONj0t82fs7q4Q7kJDZQQWQ68ox2MG1D8F5U6s2IYx7S8Uh4EzvggYJsnEw7VRGuwilzo2/iv1AOtEopzuj+CWjuY8CzzwoK45if/87HDkDIsQ3x/LN5fDfjzLSI4pt/6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX/BM0Oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX/BM0Oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749046193;
	bh=LHoE+Na9LxMjQsd16d53ClMJpz9zRVHgH+RXo6secQ8=;
	h=To:Subject:From:Date:From;
	b=fX/BM0OcRINgLdTwQPv69JqHgXGeZ/tkWWNTOVXWx6GKF7vNjdDQYZG3h65gILPv5
	 XOVpKTaakZ4my9uB85xxnDUdfUCYw8ZW88Sr8UxGsMRZCrdu4x3ED0wXc7JpCUCgsb
	 bxxhVk+s/HbWRD41VG5AlLmI536FcALmS0uwC69Vjlr8UI/Sh6kBYvEBVPHm1CuRC1
	 hn8I0C58lUag06rCfa7gpWCjXpk9YFwNJx1Z2bct5pNvf1kvNmdE8XehkF1l/JbkjC
	 9q+JNyG4u2sKwnVk5bdGwRrLHiLYYjtK0Y2g9VXiB/qCs6ZLmHnuHWDNBjKB8P+UrU
	 5k+7X1cO4oRpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D4C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904619358.8584.7964031896744431905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471d4b89d98876798a17e81b61d35bd9197fe8eb8fc731f5d415c61ce6038677
Date: Wed, 04 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749046193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417A276046
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753346395; cv=none; b=CqodHALlMwCgK6TTZpCyo7V4jb4qRI+iKtK0fVRleslEFNd63ypJCu8av+HdgU2tK6d1sI60lw3lyaRXzSd1EJExbV6SjVRNipBAOZi/csdfNdzpyEKyXOqVHkq4AxHVthLWCkWKRWvjFfEX+XLX+TLv2wVLuxwbFIh3iwD1r8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753346395; c=relaxed/simple;
	bh=x5lKmzB6Xz43AKpbqGZ162swbqgFWq8DvIPVQMoZM0M=;
	h=To:Subject:From:Message-Id:Date; b=AJsTEQFta9gJhByY9h/HOULCoZzgwHbyKIUPX0P29yhbY/GN5qVDr11+8I+ZDsfrpnneQ+WP1yH7sR2S/24x47nUpKwi1Bz/YI1S9kuVKCSL+dJdwiCXCAH45FnEwkS9onBBCyE6g1cxq4SjQmgMtO9Ivjdqbm1Lw5iaUwdGCb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aswiVXA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aswiVXA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED3BC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753346393;
	bh=x5lKmzB6Xz43AKpbqGZ162swbqgFWq8DvIPVQMoZM0M=;
	h=To:Subject:From:Date:From;
	b=aswiVXA5x8RUJ4kErH2wmI7EL/qUZGiNOJRJq7YC3828ew+vUJ3/rstkFqCue8L7T
	 RS3JwRLEBcnDgXqBn5T45W418BW+FKtCqulzOpoGjg8P/ZCTgMu8J4kaYcEDea9YbT
	 TyD59HSWF+SzR7O3dCo7DyO0jkYgGLJn2fqoPfjg8RgoEr2pyPllVzjsmCrinsUMjS
	 YFx33cbh3awiBjiKzupz+39kawbRgIuK7t8rPz/gTZjpXtKqfawOQn2/+j2ZsHEji0
	 ky1N0iPp6jQaRZsR3KmiCQsRZNEPhyhHeEfqKGFtEuCZ1Bo4ssu74YV9iqU9hVmNmI
	 ZFFWKhYaWn63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B7C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334639358.802.14031049486790116658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c2631000628567eb1f69619751f0dc8cfb4980a7281597a5fde04506c25509
Date: Thu, 24 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753346393

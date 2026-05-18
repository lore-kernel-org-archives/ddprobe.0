Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30F6380FF6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779128433; cv=none; b=cAYEJI7oltoXr5YndqN2LZuYQDFg9qPNCQUNzSjEaak+lxNYq2BHvccYsLObUfFq8pnG9LxxXvo+024FKE+GmqlSewjNmxbyELH/UJRW1l90MMm6CQNhVe3bIH9uHOH/1EaEGLTsJHdo8x7fJnHHzS7iMOLp0Bz0k1tZFGY3dfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779128433; c=relaxed/simple;
	bh=q7M55uZWY2crjc7yhnlTxW39SUEXFPBduvEj+KDflas=;
	h=To:Subject:From:Message-Id:Date; b=tBepLEU69MAZk4rM8rMp6e1l0uuT6YuihbNwZYU/nnu7eLvABifBVT9XVLfSrvtYM8nBbWoyeua8Qx6SQ0wyPeqfYdOW2IbH0PkSgadbf5Ok6/6v4c2fkUSbbZrxka08P5xbj6PwXU+rifdU28XylthPgyTKyRdHvfWjt6FMpO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMKxJfd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMKxJfd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B733CC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779128433;
	bh=q7M55uZWY2crjc7yhnlTxW39SUEXFPBduvEj+KDflas=;
	h=To:Subject:From:Date:From;
	b=KMKxJfd5W3KBnso14ot2QlMKypcEI+Atb+UqqdZazEoPgkDsWV0FmUuTOlo0xQFZr
	 HaqbiqHc2F/AW6wE0hfXNG+7RIVg5GS+A7g06YZNJGMkfSnrIMZGE2sngQYxGggwAG
	 uNxplmsNDNZQL1aW4DoWsc7xPHKaJjit4qshIqfIZa8eHTAg3jpAjKmQdU3Tj8rXXc
	 AfWzlLFWGkzNvk67/1sX+cJPrwTXI6b3MCjaqHBmVVjfgRUmyfFWkk8vOevfcBuWo8
	 whPuBhSrSeRjrVCfeAnUgsmblVUK90cbAFI6ya76PlNqvoa8Fhh2bTQHDMhtYgDGGT
	 ka4dndOv1D8hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA913CD4F50
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912843368.31611.16527237526994076159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771fb3249215cc9fb964980902b4ceb8b21df14e457e999f37379769f8087717
Date: Mon, 18 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779128433

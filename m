Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F5285C99
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760433594; cv=none; b=WWeP5patvbOUGSsADr/kN2mxz1gPZZMaEtfDQYnHxOgRKc8PITpuQtAlMpLa97ZZKa8yblnPEptnZ1aIVKbWfSjjqoUDeEY6ZoxvqSN3L31ufv0FdyEpDGyDbolRlAnM0mNJZ9PjS6v0xUKzQUoohGTA8q2Npm0NjXK/nh5Pfe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760433594; c=relaxed/simple;
	bh=pbmtXazaeS2fdM76SlIqCJKmNwwVqL8no096jgtdZQ0=;
	h=To:Subject:From:Message-Id:Date; b=iPwhOmNrDxRipKsiMyJz5mZGIuxRnzQ+r+VWbTjFbyTM+duHbQbUvjghMOG5SMRNTJfIL8m0JCniOvutJguwhYZcK10Cs0aG7h4hHr51SqgjNR32bd4O4yjagIESF5ppkaIaZ8tJLUtaVLjMtDFkXjhNOZtG0u1aqFypxNU/G2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYrfqM0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYrfqM0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21BFC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760433593;
	bh=pbmtXazaeS2fdM76SlIqCJKmNwwVqL8no096jgtdZQ0=;
	h=To:Subject:From:Date:From;
	b=uYrfqM0lKuFkRyGWxVcMKKCLAi0CZHqui2/RVXxaVSkBKihQBVWq+eETFvpbDJRa3
	 hvXlNykSEKf9LxSdi/Wd0aRPe4fMkxM247IqYmPEYfwKEw3jP/YBr1S50CPzEmnt37
	 +hAOZceKxlQFnN4qBS/yopWO622dru5dbZwsRC2WHT9aHK4PQ+WMV+zxQnxFPZh3jv
	 +IQyXH5i6bEBPonEC70i9C9jO5jT28oIK2H08YGgb3fxt2x3zNUx/l1gLPLiGzjDUD
	 kGb9tKqWCoLUnZGLmupuxPyZ0P0wEVIUW3TAIgBNmIGoxiY4v8OidnA72jeeN3gznL
	 KVQh0w+g3SkpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD4CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043359360.1506.10668251364817432104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d558f95cb9939d4cdd92acc3ca9372dc1ccb14d2404a884519f512b08f802c5
Date: Tue, 14 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760433593

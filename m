Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FFF19343E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775396134; cv=none; b=aEN2XMR/vCjA+C8vnpI4QE6jbyQUHUQtll9SJqqkGpzOm28BLFV8wIGQhnmsSXjewDvW7fAGST6OG0FlCYV8HUyYpxVC787262lEuGiiRoNg3e+lRYF5I5KMYORsbq9SN+mwClcZe8E33vwHRP6QMU9LtI6k69LULka2lycodGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775396134; c=relaxed/simple;
	bh=dXsQdQpQpGjKuI2S4N2AH9vXrEvY0FBmsJBSbWoOPWs=;
	h=To:Subject:From:Message-Id:Date; b=bVJFjXrGsyXi/NEUlJQc31ZWP5g1HM46FYQgW7e7BToT5l2GUx7C4QU3wVSA/ORqU3tRlY96oeSY6mkiU6SNZDOUVw+0xKZNiKdO+/TjBK280MxMuuoQoDVro3pcILn8KemTjz9Ai6TE51TzqhMFp4jk7oFgMz5JJfvRx24XHQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XajZ/TnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XajZ/TnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8F1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775396133;
	bh=dXsQdQpQpGjKuI2S4N2AH9vXrEvY0FBmsJBSbWoOPWs=;
	h=To:Subject:From:Date:From;
	b=XajZ/TnQvnA7wTVNa8sa0Tl0ywrHxsyN+5UBYebco/tsn1AjuXpZ4Xt5BI9CinrRu
	 BKJaorqRVVH8vVGehRZrSjylu2lV5lqhmsgpgjfDdHhQ+qicFGlSHJ3YyiuOLtQb+q
	 Tw7I5JpyA9sW2eazgBxWzp4sGsGqsghTGzci55v9vH+Aek0ZG+IxPeUYf3lWw0NbTb
	 d0/2SfnxHFED11aUfS8mxmHmf32YUkBEZtnxXBPSpKfsSlSh87VlVvF0jwwSRB6fZ8
	 4ol1LGITwSfkpIbBiv52Ok1HpDos5wFrgg5qC/jC/GEfVtqAutGivzlKstry9XW4hQ
	 TexeQeuBj8YSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B6F3D5E1
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539613369.1492.5064558537735727843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a48b54ee8d93669d7ef032f57b5ebe5ec53b6404a40145cf49378d3f9c8e8a
Date: Sun, 05 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775396133

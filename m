Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABA325782A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767216233; cv=none; b=kI25hE8olEG4QOED+0KhHuFUv2MshSvF9ajbYII/1bKlGQet2nTfpFYzebyZLYklr+qYZsWUULKoFOGWwEIGqk5dqvWhvqQadzEKFweIDAurlz3K9zQUdV+fgTet9XKStR5BoCEEBMhUt61NOE1poZJWMex+eAKjOSv4HyOTT/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767216233; c=relaxed/simple;
	bh=uVwDjdiIaF5F73NAPqmV8asDbxjYavxks97soflYreM=;
	h=To:Subject:From:Message-Id:Date; b=cirfOqXY0jEjM+WefJVXt/tw3x3xd5rf6mQwtwGUuZRiz+3aUKeYKxezCZ3vGNJemMz8aeiV27S6LReYR5+L13h2vd+xTi1ar9MwOB01K8JPbTtUeWwrYX3tmjTl9nj6b9ftldhZN8BL6mXE7+2+O10qSbyxRrQwj0NgYQjZ3vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ+GcqvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ+GcqvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB5C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767216233;
	bh=uVwDjdiIaF5F73NAPqmV8asDbxjYavxks97soflYreM=;
	h=To:Subject:From:Date:From;
	b=uJ+GcqvIFkk08Nw2LKJrxA9V9NFr0fk/WMLPHttBFcQYdILFBgxdwxiRc/PqceQLl
	 9jU50ETqnCggZ81B/EdGZPaWpBTX0Q++/pDE+1f4zb1ZI+vPznFkef4z79KM7tOEUk
	 KkFoLbMz6YLhHO0awvWC58bWS8jpsfyFCu1vP1KwY6wvW7SrUctWX/jQlWGz4hdMcO
	 qb8IlP91MOkiKquVcQqfyKmvZpqr31qu/uj9wQ0S5slu4NktMI8gtSGCTT6KocOncS
	 ztQUv7+b2FtDlNarKicmJH8MmjRlpCM1/6/aN1n4qnpx2BqkEbJlb6Qh9JOtqe40IL
	 BOAKD9374asaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61FEE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721623358.31494.6631543039680978835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2551863af6ea60dbc716349db6dbf70c1ab452ecf0636b5e129286268d35bdb9
Date: Wed, 31 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767216233

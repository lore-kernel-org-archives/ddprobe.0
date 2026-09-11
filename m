Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43FE384CC8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789134637; cv=none; b=Fd9dCfVveRXJ9QGoWIoAyd0DxVC5Tz0RqOcDFM6t2GMaYepXsxEYV3Oz62tddZYba5U96odwAwFsB9TUKc2+aALiQq1iC+zEqYiWyx75zgd8l+8AjzfV90icfyZNfDX0eSdaMqm9IyvIOfHjadytdVAHNW7KGHmGfMBjhWU7idQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789134637; c=relaxed/simple;
	bh=Lz6DfotwIVaFnwpF69Q10NJyB0k59sZrIl0nk9yiNbU=;
	h=To:Subject:From:Message-Id:Date; b=Cw5JvQABqdRWMacAltM3SMddrNK3Qb2lR3XrbhscuoXjFIsYI4Q7PglYB8VeLhGSSm7WSsw50Kah7maaoz4o8PSyUhocER4hDITaMA20IH0ROq+i52TN/uQGJY0pl5SGv9WqGNYrjQfHndSEZLtfMuh34cwuHklD8o2N3cv7hwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euOesqPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euOesqPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4CBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789134633;
	bh=Lz6DfotwIVaFnwpF69Q10NJyB0k59sZrIl0nk9yiNbU=;
	h=To:Subject:From:Date:From;
	b=euOesqPfIIPYWkC75srdhYPVm2Wv9eqU2Ynh3oDsyvTjUOca1jnKdq5yXqoHiUZ9g
	 31inK5gpoSZuZW6KqPgrTZKmV5sH4sw5lb95A16GUHjGrQpuOK+Uf49UPEHFBqd6N/
	 qBG6mzz3L0jLxzRxi07i8tgtBtuqk/pQxEWzuoXNYrQRsbyyEJeY3s/1mkZBHToENt
	 OxPEsyRNr71I9sNgRZh3Ki7IeDjW8N9hSVjauplcvOkO6lNDyhbwzYHcPlrEVdmi28
	 Iitahqu8rOwF2D+HkiLiD2pD86/wJM4oZyKjMUTSAH4GrT9czvqjo7v0tJtjdblqIh
	 xELwddcKqsUdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC3C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913463368.7698.573058546960681001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1639982d0644302054c3b655d18bb588df602f6961d49c69bdeae37d41722e14
Date: Fri, 11 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789134633

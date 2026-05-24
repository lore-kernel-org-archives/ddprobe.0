Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DDD2744F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779593554; cv=none; b=fgBgjA74Uzgyub0+LlOJWNdDOx959a7tBMazAm236NqZmDGmQFrrsskJFfoPcYPJE0toEv9Z9+NgrDqtylMkLG0q8ug5F4wYk9WiWe3BjXpdUbiHY4HdwTdn/42Bc2jjV5XhPlzvqNNNKlUm/4tWKv72YzOhAf08OtY5qzuokPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779593554; c=relaxed/simple;
	bh=xsAZYqg6vj8IpPuDuxDhCpRCQd72gbrkkVCpP8UzJa0=;
	h=To:Subject:From:Message-Id:Date; b=EYQEHglRZe5d4pNDGNSSMpROmSWLQKsefK+mKSUnOlHKYglwBYV4gBi4DeMRVNMrUf5SbfaJcQJYcoH/ns7fh1CcWmDy9o0YyVh6ibZxabpQQEuopJjNtxv78NwUCcEaYEokhtrIPQlEpBDAj5o/xU38tf91Bl6tJaAyMh0NXT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaBkAHyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaBkAHyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C02C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779593553;
	bh=xsAZYqg6vj8IpPuDuxDhCpRCQd72gbrkkVCpP8UzJa0=;
	h=To:Subject:From:Date:From;
	b=VaBkAHyNJal5+wEVF/doKaCm31gW/0vbWE4y3+Q4WWBYiG4BKyYjhWgejrK/sE/VS
	 Px7SDuHGDo9t5cV9QNKzqJd4voOfgiK6YqZDwo1vzGx2+diWtasjuZMp03aqYzt9/o
	 ppnK1r+NA48MusrKwtybMNEd5wTHbKl/HUW2u/pYHoLofvMQGat7K5HI4fq+NsudBr
	 ajpT0HPKgViMtJ5ykmUn+glcJU8E7JhvPmN8jdr4JCZQpTnqSQDGwpqa+e8woImkBu
	 GfQ3uMcTP43YCqlfYQi8U3CCd16p5k5VT9+HA3W5exn69N+zIWnRUE3y2BQv//l/bb
	 nwEPa05tcoGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB81CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959355368.24251.14919148874355656662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906ffd2369e2ae841ddcc7e8ad8b80f04578bcf5cafe4e92531638f90587199f
Date: Sun, 24 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779593553

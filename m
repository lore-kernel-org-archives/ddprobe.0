Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E9318FDBC
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723195554; cv=none; b=OpuvaQaY+gkSXCOQnz0OKs6pdJKz9zbAOS+C7cQfO7n9QosEhLphxr7uorfXBAjW6EiKA1uSOfiowF0Y/d1h5qGCxblxWnsrge2mgRzsK9BFJ/yEraeflOV9P3ZfzyajH9iWp6TzxAsmdfnwgpKSFqxA0j2/CC2H29xGC4VeyqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723195554; c=relaxed/simple;
	bh=ojMHOZPgU7N76YnlL5H1Wr2lYrisesSCLsLTncrHyh8=;
	h=To:Subject:From:Message-Id:Date; b=ihsrJk5EJZ258lueTajo10mELPtLXNUwFU7a8raYL5hi/LqtOmvITT+gO18LuTimA7/jrDAan35XLGVzPzLkNgwRK+/X87BfEGdfzV0E+9OTVq0kbxU/XhbT04ykNF3WYQHqJK3Dz9/r6UvH95eyEqHje443ZDzffTGM6Em1YpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF6c05Dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF6c05Dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26FC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723195553;
	bh=ojMHOZPgU7N76YnlL5H1Wr2lYrisesSCLsLTncrHyh8=;
	h=To:Subject:From:Date:From;
	b=bF6c05Ddfurq6Vnabt2fKdIejANGwE+vi5beTcg989GQDHW3rEHMQ5CTl8SkKg0JU
	 o4M2EtjVF+qCxtbOIlrKMo1KaQubIe7qwl36I5sqabQ5Dhfcrel9AwkW4Biph+ktnf
	 fEzTfS+8p4mwkufRlPENaRTH131jTGOhTx0AiGbmPmPRkHs0Qa+w7BVWlX74F1WA46
	 f3bJ+pXT8VFXYqQZg8m30vweYrWpzgRN90FqiEgu9x8V+wWDqsCGrN2Ibg5gn07Tyw
	 CjJZtXnleELOaxZX1IplE3DxVWtFj++Bvjg+21q2uA3VEWOEoJBdVyvIvutoS/vmLI
	 ptTy5S6efHrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A63CC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319555362.2595.12555389123777320786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cbcc76dc063d6c2857fef09eabeb2b7590e6e2a23e638b80e3dc36e275e5dc
Date: Fri, 09 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723195553

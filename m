Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE012E5B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754130594; cv=none; b=Wtcthk/kQiObjrsxQYxSKrK1K/uXhyXtoKP+KHCgWlO2wFkUbWvtACANoougJha61DAVLvtRFHjoEnTrjmzphLIPKznuEXZ2UfUe7ODnD7XOTwsh3nfiEnWgx45MLmu1Ozd/mOClvfL080bWdSD49pGQXGNE8vgkby4j2mYlvuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754130594; c=relaxed/simple;
	bh=aoo3hbbAGjbNpb3kGRLPHZVKVqOWqv+3GTjyuZmyrwk=;
	h=To:Subject:From:Message-Id:Date; b=pm9DMWwQND+mTGhx7hsrSGOK6Egbyq5TclOuIp1xAfgbNqgTMGYVgvRd3PskUVsUWOoKY7fdT2Jt9CK1KqrVfKPJThA+wswwB5J1qH0nv0WmZbR/rnE0tCVizy8Hs8bFbyMoyof45DkYunqDaJXruiyTYsoHWsJ0/JzXZLqa00c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrS1eSAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrS1eSAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B124BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754130593;
	bh=aoo3hbbAGjbNpb3kGRLPHZVKVqOWqv+3GTjyuZmyrwk=;
	h=To:Subject:From:Date:From;
	b=BrS1eSAYL8FNI5wU1Zfi7IbFyGc0nkP7SZ/shzo+yJAkYb5eLRhwIVk9SzwRKlzr5
	 f2NIlLNxsjANnaPnpLrCh6kJP9pTlgi1DfYFYjtmS953DcwNW5vXQqUyB5ZMk4cXMF
	 gcbUWOY7bcBjX+jJQ0J7sMuCdQ6HWppoxIfIdNIetDqgH+aEDHxGGhaLvW8JZqevYO
	 g8Iw36O0dOGf6KkFU1Dmk4h0l6rH30ybBa8wNV/TC8tszBcg2nZ5xiIdQHZWBMU3Op
	 FOBMkSPe8HnX9dQgRjJGUFnznePoHaC5phMCo7urtiQi0xxnoY2TXDwqqykp97I4Bx
	 Uv1aJA6Cp7Tpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B34C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413059358.17742.5860028538435412266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cade99775752007cadd8aa6f57f4f8b1b52c376a5a2966c3408a75c522bb8f48
Date: Sat, 02 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754130593

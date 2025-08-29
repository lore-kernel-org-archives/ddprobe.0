Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DDA1401B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756445994; cv=none; b=b5u7VcdZBvCtQfF9onHQFu8n4R+cYF6MzXcOv5+Ax9vq1mNJBTdwHSQJx83N0lvf+u/VCgBhiUkqGPLnBVAA1r9K+ocvF3BTM+1hkiK6Qz65Eytk/7LsUhCh+EvdgQDJb+X32FgJDi19iPFPveNSXt8QDU8dn5uAMVkoufg5hZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756445994; c=relaxed/simple;
	bh=Vmbi+9Uh4EM574+KP+qxkmGXox0zPaABigfW9wYFtTk=;
	h=To:Subject:From:Message-Id:Date; b=s/0XsartT1sZ1DGMEw9Kb2o62Yi9P97Bysx/N7w/IUxP/iDVzRlybJnbaxuT5umRZcXCD5ZctDRXdt4K25LisWFhi+FvtA97/hPtPjmeduxwMhiPEukj4hnaxAInx4KPuD8OIf9k6pG76p2s9HVoEnJR2OGcV0nP1yTNj35TbPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4tAsSJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4tAsSJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756445993;
	bh=Vmbi+9Uh4EM574+KP+qxkmGXox0zPaABigfW9wYFtTk=;
	h=To:Subject:From:Date:From;
	b=M4tAsSJTVH5mxv99sEkIpkSVQXHIytOX+fyOOp+Rck4pKdLoQjWrTAfnbjyHSQGeS
	 ggs+3QHRKtlhuE4w4JfbVj4rWMU0PzO1inSsk/FFVjH84xYCvQlW81bPLmmHQzrW5X
	 Gm9h2FZ4BgUl32FGQ1060cMIF7e8uC/C/lCX0L4MC4Q9wsmtj5kxnSwVs+l7O5kh6C
	 0OC7u+kMMGDBVUG7+TfICcgxm3suZiMX6izKBcjhPjqbTlozIUYUJBQmwus1uAkEIL
	 poYoLUfPk1qtRzneS/qGveKwJq6qvWQY7Umd4VR+Kmfb4eyX+i5pp1JzYus++ESjvL
	 ytppZ3ePZRNww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F258C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644599357.9162.4371250977497899603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383e1d91628d24687df38869eceaadd7a26d0b49df544ab9d9c19d1b746868bc
Date: Fri, 29 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756445993

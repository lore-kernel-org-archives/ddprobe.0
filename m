Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12388191F9C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751887795; cv=none; b=EX9qvNSeoCJ2CnDmbCk/gGj5TPBa4GHyB1GT4qiIJUo/xHyFJaZzV2jId36w8Hv2LolystlC9QTAgUTKnVFJc9wYdqiq7lwXNZA8d/5xpzzkS/nw2itvHUjaseTA5WvFKBldiGmR6xi0i+iscuk0iT42sJrLJMNH5a2BMyMXifU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751887795; c=relaxed/simple;
	bh=jRcrfZr6zicBfC0qNBfcB96txtZis+KG7nW1wSFZsEs=;
	h=To:Subject:From:Message-Id:Date; b=EueIVzoe4dcxxiI8zgj2f8AFWybblEAchqJ2ufDI9vL1U/pfWA/JSAjiqDR7W1astNi35AvVVMAtVZtt0XqAbvZG+mPQsH1ZQdnXSw92OoAamHTO3hPC8aLlzOIoCljTy22+QSxgbYyOdlWLTlz4RsB3WA48TRbIhm2coGXbKWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6fbCgy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6fbCgy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D756C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751887793;
	bh=jRcrfZr6zicBfC0qNBfcB96txtZis+KG7nW1wSFZsEs=;
	h=To:Subject:From:Date:From;
	b=S6fbCgy3zYZnjEjJnNIFndVxhNnbWEZ9uU0WCHbB0gVZfUgq+nCOScNUbkddj6mS6
	 42itI5KxkOpigBJRDErnJBb1qf0d/Kz28AUJ6p1ZgZ4492gilUrou5muLyj2jlgeak
	 kqxWu8CKOJcYWx+/xZuyPkV/hK1E33FoHGazSjqjesp/hOA/lmXqaYp4nVh66ZSPt0
	 HO4ZH0fOfjMy79P5uATzvKyYlSHu2uUQVOF8fSNqn/mpcivz25iVbrmYdX6wtpcLHm
	 Qqg4RpwgyshpECEmO1urcoN0mPJ1afpYFgTALyXDhS7VYydFtHsH+kkUNxvq64ze5M
	 q2vJFMOluaLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FFC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188779357.26951.9516148097648942742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bdfd600fabf8ba2536560b88066842c7884c2b9035366d503b21c23dd8dd4e
Date: Mon, 07 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751887793

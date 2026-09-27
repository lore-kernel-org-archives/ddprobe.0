Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B94280A56
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790544034; cv=none; b=OH4Ldj26den74X8R50CrubaSaEOJp7ViwDteLyEfnejuUcqSTPQwNNpVE0LE1jFU8W6d1vKB/L4SscXghAjRUDh6FG6KoCJGkwVIm24fl8pIbXJFtyiFH+EclJl8D/ATnX5pw8FKsTj9suYnfU/JRyuQgl7Ni2GLc++9uo/m9zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790544034; c=relaxed/simple;
	bh=S/eZezohs0mb8GqNJoBRip9ujXQU+QY/UXfdY/fOLHY=;
	h=To:Subject:From:Message-Id:Date; b=i5VnrdO7rEA6PYNItpILTxpUNEXB/hVHIdrG4iMlAQEQBsCbOEYZ5/0updE1VFFsru4SLyQFG2OLH/CyUUZ5jVpoPAf0KhGqhv/xZNKMgkZW2KmRxVS2W6N8VBhC7OREJ2WqgbJDiyAZxLFmKEH+ZI5EkQLO7SYovoy+lUYkHFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCn1c6dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCn1c6dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B87C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790544033;
	bh=S/eZezohs0mb8GqNJoBRip9ujXQU+QY/UXfdY/fOLHY=;
	h=To:Subject:From:Date:From;
	b=YCn1c6dE9Xo6a1h+y+XZlCGAkGiVD/uxgvy4pSNN3utM+lDXP4FKpNrXn829n84/T
	 TAhbWnkvzBtS+nyk3Xw4MzXgiHJR8+6Ly1aEH38dGlHBI2eY3Uu4WcOCsHFi0mg08h
	 lFbGzl+B5Pfrg4hxAL0DcvZqAsjIBFIUfG0KleI59M5J8Cd7EPs67cbofvKRIwoUJF
	 EF6+UQdpK/Dt+BzWRrUOqt1J/1Z9o6Hjj7Hc9PUxaftIoPNOMR35KjgQMI4PKyoqt9
	 u9FnbIRH1/tjqmAcA7q6EeJKyNDCtTXnwqs+eoDOZWahKaEJcQBqyVdiR761jCGUJ1
	 WATTgMRmvPmsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01FFC98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054403368.4382.16904712013276671371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60f60250d1e11b97cfa9be207f9b5ff09c91176621a8307c8d62be0d14b4c6b
Date: Sun, 27 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790544033

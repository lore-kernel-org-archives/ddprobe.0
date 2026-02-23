Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91E429E113
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771859694; cv=none; b=PeLRcGeA6l3ECVFQgLMcK2GwBZIiF5aOBzkKepsUVCd3FCOEfb+YV1zY9U2XX2s/Ze3hQmDsj9cUEajncBz4WPCWEA56uyHFOPGnqpAZ2g0KYf8z8RbOaI6oeTL+jN9YJaquJuE7U+Z63r8QtwicKEhXu/fxx52zK36wVrDVIHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771859694; c=relaxed/simple;
	bh=LHk6sUo//mGKV2JbHjp2Ze7apNVsiQomNJ4GqHjUl74=;
	h=To:Subject:From:Message-Id:Date; b=MLOM0v5HphhT3OIOZuBCZ4TOZI/z36wnqQmpUK7c0dUtW8BnYHoyMemvyq0j55kqn+4Uh4bgP3OcmNIEy6UNPo0uc07EwSTPkVqHyEMmPQPaYiO9wdIUPSD6QEQ3gIoSY9hsOAu8SSF5mc8vG1EIuBTXH6h8PDE+lvs0TdxAZVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDL+lRh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDL+lRh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771859693;
	bh=LHk6sUo//mGKV2JbHjp2Ze7apNVsiQomNJ4GqHjUl74=;
	h=To:Subject:From:Date:From;
	b=MDL+lRh3QUjzVz0rZTRWu2FcDwxn9IHkaHN+NFAOl//tGoyUr2TXMfZOjVxGTUnI5
	 r2YH7G6hTirGNMUiI4LRWcY91z1+SMp4GkhiabD2W9PqVBEJrsraZEaidxRJasIZjy
	 MoWwqasof5Sz9h0GplMFM7fQnCuvMC4cxdemSc//FcamncWonxlA0YEDkFOb51whgC
	 QcvGnhiDdjsfhMNZHaO+InHetvsQmx+bKQPjAOOzijSL4fR1ZcpOT+99MBxOVCJaKH
	 OJrZhpsmY86lbteAze9E/YJhpg1+DkxBiAdMXZdGnBFAmGg1oYstlW85BsCCMyuY5s
	 qWNKqQ10vQ77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B1EEA4FD2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185969359.13835.4203470362234291250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b924e46221e68096cb584e183ea0266fb201238c030c5b1d39e12e4fcefadd
Date: Mon, 23 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771859693

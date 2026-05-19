Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C026E165
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779178234; cv=none; b=fB04KV8aYyP5EZ2Qx0YQdms2dzMEOKOAa7tqJk2g3oOsIau4qJShI6f5nks2128iYWVzOodbEmxAAxYhXoaxl9cJeHJ1bvXjQCqIlQrTP2BLMu7+EcVvVS1mCIVZalz7hLPizuXcJuAPlN0tlAGiih/+ogCJYC7aeikpU+x/ZT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779178234; c=relaxed/simple;
	bh=t8Fi/N4kTgcUL3538Apda97jCOm4EmmQFz90raTscuc=;
	h=To:Subject:From:Message-Id:Date; b=D6EMZjsjzJzhm1rvXYKuji7ouCph7evJbccSCAFwyJ/Eccr6AUhzAMG363t7cGSZFF4p48LVjQqD8dCtBNlJYlyYVVMVi0O4IFyT+9HIQBWdhRdNEpiD/E0TZK1rZjt0dTPweuwQRV1HSLRzmDwlpZaXEbz1aFLfMsbfBd5ABu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ/YCX0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ/YCX0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1B9C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779178233;
	bh=t8Fi/N4kTgcUL3538Apda97jCOm4EmmQFz90raTscuc=;
	h=To:Subject:From:Date:From;
	b=dQ/YCX0zEdH8dXPRxqhhGXg9mmrh7LZ7wn/nq8YZxtf/Zy2DNjjFla4vodRXtVl7r
	 cYZckS/Kl2DbWng7NWKPYQsMX8RUh5pvI/a8WwvibEfkroBghRKkfv6RqZEYe5EaiY
	 psu2tFfXV0Iwm2Gtc7e5ak6ojhxk2wHf0TJFQIRUveURmvl2ncBERC0HqHt9DVJSGC
	 b6k4aCvPO/c7Po8W4Gu8t0ku18QHib5igD40ryfITaGPzz3hZ0Ii2m6K7gPK2yIQNC
	 dpKL9ElaI6ThJiLOo8YsVdNQ12BOF9MNGoGIh7XlyZZc8PygFCnj1a3zogohF5JywP
	 QKZPfi26GtfOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C1CD4F52
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917823368.5899.17049256427979712489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97040916ddcdff46129c20a004c26d6bf63996023516df7d6a992b11952c21fb
Date: Tue, 19 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779178233

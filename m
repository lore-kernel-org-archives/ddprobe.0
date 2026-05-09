Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62D41F4C96
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778329054; cv=none; b=A3bvPY2P1IOrfOW0EsQHaH7CEV5gRdPgwBt2Vzz/Tzf62o2vPrascUtIE+MPpKalsRSIxaAgfURj/8coOtn9T0VOTx1CeM25Nibjhh3OXEbtWTAQMoxKWAxQ1b80h1kTR27OE8uUPpQfIy8B4KVvJ6y2Mdn1FsCMN9o2QYCqKZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778329054; c=relaxed/simple;
	bh=ngLccCLvBrK38Ekv7obpZKTHgOiZwldCpzYq7+2/V7Y=;
	h=To:Subject:From:Message-Id:Date; b=doEaALkDjfWe9VhBQG/94XxCcvjm2fwvUyUl4MPEHDGULZ7rcHjmVZAdD+6z7g3lxcOkqjU1z1DiElP9Es4sAdB/cuxBc+Jr2z3xcM5Y3vBkttEQsGY1vEoON2UU3/F65JcPo86fktrbZkX/skQhA+FIPo9akdFwWabWN4DkFl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmKjN2wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmKjN2wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67166C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778329054;
	bh=ngLccCLvBrK38Ekv7obpZKTHgOiZwldCpzYq7+2/V7Y=;
	h=To:Subject:From:Date:From;
	b=fmKjN2wQ7/GzXyS7+Eclarr0r9DYV51h67Bmc7QsGN8PzCY+zBhxjIaYsR3vyYAlW
	 wP4WjgwPziaH/k1LsBCzNu1RYXY+XzQq7JgIS/0PRwL6ICZuv+bThvlbXpat4aStTL
	 6xKcxyRxIySO56SNPqcTYOt/Hc1UdtxNR6uEvZL749muYQrGaPMKD6fw5PdBHgx219
	 qlbh+y+7tayLNifnwgdY8ebybNoff6IUqUXtEHl/jztuxG1m0sIha88zbfgtB81ZW/
	 fglYLvmNdqRkrSPjoJfvlIlimXNSWu/oQzyakzYLo5Y898z3PCs1DMcZGt4a7hNFBY
	 0vItZZEULEJng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F26ACD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:17:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832905393.12300.4656537338801731772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ad930a8210ebe8a44bbefbf6058c438b020b5a52d01c3b729ebd36839122c1
Date: Sat, 09 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778329053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2810F2367A7
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745575194; cv=none; b=pOGdQOekbjKebze5qMV5YG16NMqolWXxaa3UmX/eYhLAzLxD7oSKayrbulAAjW3k1YrhLLH2KfEMaG8UshcsFKHT9IQ97EhnfWPsMnWXdcbFSlO9AaSsDZ2712vN8ERQAqERaQXMOievrofMUdaKePHE/E6UqwDEQVWyse3fON4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745575194; c=relaxed/simple;
	bh=B101qNr+FR1/59YZrjCXCn5atrdhyCB8zHFQWcjn77Q=;
	h=To:Subject:From:Message-Id:Date; b=GkFng2+1Z144FG4gHu0nowV6iE2uiS+1r9MG94H+m2RXKV2SDIb3lYk7Pz5setRJXPH0jjGHixFQbrrT3MsB0AsxN3yQrqtHS+iyYq8Rj5lyXXQ/lLjSqL4DqMsz2RwEdHdVGn4SjqlStG4dwsXgTZMvLZUWR+ZoqYketT6rVuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqBOoJFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqBOoJFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745575193;
	bh=B101qNr+FR1/59YZrjCXCn5atrdhyCB8zHFQWcjn77Q=;
	h=To:Subject:From:Date:From;
	b=DqBOoJFHF5eKGqLpvQ0Ni3K5ZISw8RjrUdUTeeHRklh3KTOZHqqB+vHfrgIOWK0/i
	 iCXWWqlbUCRw/xlaIrntTXzB6o7D63rGYfZcuk29zDURAzwuzNSV8M30FOY/2BW/ai
	 J4MtENeTZLPqToT1qb6wYcPGt4bDdXNjdoqkU9XbQGl4R+O567cVZTeHhrZ9LGSuIg
	 6p4bBWp9ddIyjs0MzkBFmz7AeOLHq/oB2QohtJfM2ge6ZWOXKjtMtBKwA0fkGFkLFU
	 9RbIk5K8JE4w2Ncec/08zrrNnnHbQHkt4qQN8rjYo6EzdS+eipkOQ3Te59RR6qaS1+
	 pNwYNG0auuLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5BC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557519357.13169.7347001876864423218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faefa97f88908a14918c037a2a2624132421d8fdaec52c3f0e6424a7c9033e44
Date: Fri, 25 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745575193

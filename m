Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1399C2264A8
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774733694; cv=none; b=iX+RUxj9b+vMcKtkHgInVgUV80fpBxY6h9TZggOtE1qEWsu38UausJXWhx+StBaLjzOAoQyJLNSniYKkctO5walFtGed+FilXbtUPeMmB2uK8nYaRNzJ6PxsUzuorJiWVsMNtutI/CJPE6rqT4DpDyMsryU45yH+HWmEq40z+2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774733694; c=relaxed/simple;
	bh=F3yOI1OqGFveLpOhqPCjUjGAFAMoRavHQggBFnPkF/c=;
	h=To:Subject:From:Message-Id:Date; b=P18d/ARMVFowpvt9mF8BGCVtO8JgfW0Vtr3meIUadVNGVufwPmd+MYkWmPXOHN3CN0l+sppK8OIMYhztLLA4GFtUtUbvrFf7o+1BYAyDb8ZUfR/BROQq4A77f+AnQ4yx4ehQuLA8YWZZSp70t6jAh4GsSt1ZFIyrFnwL4jEzmgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkWahaUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkWahaUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774733693;
	bh=F3yOI1OqGFveLpOhqPCjUjGAFAMoRavHQggBFnPkF/c=;
	h=To:Subject:From:Date:From;
	b=ZkWahaUv/mj7foejb+fG3gbLTRmE9uD9zWxSps9EnOsIMTRx1ALioGsLMumw7yR9m
	 Dyv87wCJiTUtD6zgz0lHYc/SMoT30LzNpYRelfNluiUbWXyH7u1WHrWqkZWvvOuaaX
	 g5XDPgTfa8uOpEEltiTCwwRFRGg1kvG03hEz/0t5rO/glwXhSwKo0LPokwyQWKJlJj
	 iYrj+uW+AbqU5UQoDLFZs5i/PYY/9yGjh5V38U+P/CuFN8Hp1hdePCKEzXpJZ1DhqN
	 6ClzGiu9zsd7NGeWTTCaAePvxks/rIpAkjbd425+/q6xvuJwttCSIkCC/y0C3+mf4A
	 vj5mqgdG9WAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942D510D1489
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473369358.24440.11532609967077552641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b586336f2e8f647196c39f1b02b55c2ef3cf1fe1388ea6f2c17fe95d13ef3c90
Date: Sat, 28 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774733693

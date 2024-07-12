Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F41F16D9A4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720788503; cv=none; b=NArCJ6NVE9ZkgnffmYThkHLRc9wzrdd9tNMGPjBIiQP3rOZs6R0scH5gQrOH2SSS9vKxu8gxrtosJVAoGYc7xsWJqxqeM/T5Ei7gPUDmUL7dea6Q7xOulmSu9SLhgzL7ukXz41+cgg4glLawWGHL2x91jM/iScrdtEQFM3oasWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720788503; c=relaxed/simple;
	bh=Hc9kDIdJIVZgZmLxfXwI701oR4r1EA82uGW4jV9/tmE=;
	h=To:Subject:From:Message-Id:Date; b=hRnqkW9UyIVlHD2S4KTgRz4xeoQO9jsE07TQhpZAs8aZiEX4QZNF6NZfix1ISJFmy2qWvZl6sPOTn4RwURhDbgAe+MI5NtMbYd0jrrE5KC1UrtIlLRU7Jl9ycxVs1irYiDC/STbVzH18nBz5YcNq36my8pSeG+K7MDLphS6d1ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHqlise9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHqlise9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33F7C32786
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720788502;
	bh=Hc9kDIdJIVZgZmLxfXwI701oR4r1EA82uGW4jV9/tmE=;
	h=To:Subject:From:Date:From;
	b=MHqlise9EplJxydVAp1aw1KEEfzD95pmPmQnVa7yuqb3bee5A2yaTPU0xjL0Kst96
	 glQYQmX6rP+KQ6u8cC5Cw20FrTEuTKlfmuqXhIXti1N/mTcrwK3YA4tSLcIG9GcQFz
	 eT1F7Hx1UXHvW2FHxjHPbMiylvnGeCHnw2UGN9UUSMCUe1apXvxMCWlcjWIgvFukzd
	 ZqSEh1Zm+hLea09280i8fl6qpnmEu+8LxwMW8Hurm4yPEWseO5YIyHVMi0Ftg3NeHB
	 BC/xN0qfqwiRKfNp4eYlcsaboW3wtES7YTVOI5581LA+kXYkryTkfJPy5aam7wgPeo
	 3/Ee6Qpgo+jmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0AAC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078850282.17760.5636882941339562618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c18d1f726d4f7de085f51f445022fd99f84b48b93b374d943764a8b211bdfc
Date: Fri, 12 Jul 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720788502

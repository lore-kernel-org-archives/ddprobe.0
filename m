Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7893B1BDD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720966223; cv=none; b=o+NtJnFfKjDS5rtdLQ7NFZ+3aNEJOOQnEKrL4Kv4rXQvlSLrH9hQuDutvKIBFm6wN6eoPtE6ZwAmEmWTMcMQOEwSEnqGR5HHXQ96n2YbxVgw41tjGHnV8PFrAFGjfmsiFmlGKoVdNqTlUYYh5FqTCCu7QaT+dXiVME++Hs9/D6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720966223; c=relaxed/simple;
	bh=J0Cq7cV5Al0jKlLJqs2rvQl8JguLEfTh08Om6DK4lkA=;
	h=To:Subject:From:Message-Id:Date; b=loU+LjJfSg743DZxqJ6NiJZz2tdSXhGKSVE00BJ4q0BsIWnvapK+LJO07gn9ISNech+EIzZQ8FAO+YBgJVyhwFax/xBmILumdumaUIABKkezrsDtnqfLXN1aGPTZqu1XyC0Q/fKPKl71qL/um5YIhM1GXyFNIB01MUaTyXqapXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCQ36zkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCQ36zkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC814C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720966222;
	bh=J0Cq7cV5Al0jKlLJqs2rvQl8JguLEfTh08Om6DK4lkA=;
	h=To:Subject:From:Date:From;
	b=oCQ36zkzu1kc+lhe6c07msvTrJMhPhf811BfBzslnGuTaTfu0E0LzXQdHGPOZxIlK
	 IhXOpIvK3BjTuNkfJCuw3CqCY44hhOrj2v2ZpzPtXhFOhyYKeTGEYjbD/LiOtLSqIv
	 iWBGyWT7YkpcWcz/yketjROZC46IojMk64TmFM5Xr/7y996ULCXOFdrU6lo4cWUQID
	 Dnnwu1LU4DbNGpWvLC6IBAntLbClUiuP7Jg3EVjJnMvHar0WAdSQ4XDWVrlzaZueTf
	 6ML82R5mBpRkO5jtrIEmarzno6v+hEN5hHrF8KgvFupiT2cgGof4ES10BloKPBYSvl
	 L7IliLMh2CgdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AC6C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 14:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096622276.7056.16554594106846212179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed92a15f26dacb71daaadf8bd0b23294f70f2dfcd62aca3edf7b5aeb1bbc9824
Date: Sun, 14 Jul 2024 14:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720966222

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3775C2114
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735766754; cv=none; b=pqJj7cYlClms9fj//Kt6c6DbXD/cjHGbszlHAJZvT71kInha2LG5MZw9i+4wJ/svTu7qX65hLK0wH/QksIuGB1bRfiTSRY8glqSnaT6DCHRPEDtkZ4joHbOu6rmIXkkinVKEOsgT+bLnbPOEXw4m0igvIHjTfuN4zhoSadk9edI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735766754; c=relaxed/simple;
	bh=RsM7SfMIjbCQ7k5tRLBknsLrJWw1JeycZscqDXwPNYU=;
	h=To:Subject:From:Message-Id:Date; b=pqqixDluFGje0+eiCypLNnMY49MVoA/eyvgQITc8W+gYilDajT2jUDPDT6r4cH7yRRk//T8Y84PzX93qQ7Kc1wURqvwFx5RhRyORdJCZbNBdZeKyKC3UCz7Oqw2qV2xDnDk3QWpL/dvIe2/isw+DDOqp8+sfCR8dO28RGcfj9oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NslnYBtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NslnYBtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BA2C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735766753;
	bh=RsM7SfMIjbCQ7k5tRLBknsLrJWw1JeycZscqDXwPNYU=;
	h=To:Subject:From:Date:From;
	b=NslnYBtrlPwvr8mEttiFYGcACnDM4DTcjoEB9NezgmE74MQgHDjPyfOREZq2s23jS
	 eSnbb7pbnCzVl8HduNi1aLrZBt9PnLMZumSJ1mQw7uvb0Wg6+QNE2kiZVKsH4YgfeD
	 DWtLFa1lduboMuEdhmdbIsbq78hSH6evXrDCg3VlsIjTEATw9gSP4EqAh+wm3w9YR5
	 4+S61nENQF+DMbIsgVRBpdjCfwOIj26xfb4FB8OV0igbVJW8ysr1LTXtcjd1pKYRWX
	 loDUwUEd3GouODl7rZOYbbkXpsEYJno+8E+d0kLNqFSIF66QGRn7bZFhekaIywEl3b
	 9VzejWstrXOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B8E7718F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576675358.16685.802632051206693992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ca077e5fa96ca481bbd4e00b4a7db31285ad54ed897654c7e68581e2c11370
Date: Wed, 01 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735766753

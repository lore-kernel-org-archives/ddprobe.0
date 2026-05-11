Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168E3362151
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778476234; cv=none; b=RDXcn04UxCjH0KVOijx1u69V8xzprYeWHTruFXI0CaCokB1BdBR15xwo5wmGmYyALN6+4GafIr0P/EKfbKsYfPDFYuhbmasuaO0y82rmnHqxq+YyQSelPgRgSF5Bz3LPScoSa4vlbAbqN6EBy2tjG6QA874AvMX02CIagxf3OWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778476234; c=relaxed/simple;
	bh=cHvxxloVtci9Z4CysBuDJTiUKqj2Z0Q/70akvSCVb+A=;
	h=To:Subject:From:Message-Id:Date; b=NA2B6MchEm0kl+nJN5AOqYkGL9smW9UhIWsiPLTHp9IuCNb8qXFvVA9K/ukvmXlEnQYHxYmbQksrGI65hZvB5jEUEjlUiIUNf1rX9s8MskLu4nCwdvNbDj/1vFZkXNo7RHAhxduv/bTSwjugAOBpYoh7VGVnt+s/jAHNfWILJ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoDwUtLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoDwUtLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8615C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778476233;
	bh=cHvxxloVtci9Z4CysBuDJTiUKqj2Z0Q/70akvSCVb+A=;
	h=To:Subject:From:Date:From;
	b=eoDwUtLu0bJOeWCGvijsNNUvEHEA2KEg1YQVp1pworghSip1z9MphiRroXwrzv8fC
	 aye6aovTJPBI+MRJRFp5ByBsSJtATgPpJEM3iXQFrOQhp5O6wb5k2lEWZif7+qlG7E
	 d6nLw/6ud+ivwomaR0okosrc+T3X+YfJ554xTTidtVwLJzJ1hS5QEvHlCF4lux/dil
	 F0leF2JQiRQ5qkKdCVO1OHYpsj7v5QfDXVGwA7sHXatfFdkRNWnFCBW9FjUfm+ttZ3
	 2QKmzXXrcQySwKA30v7B/2Oa8u5I5fi79CqSZA7LU2meiRHRIYjlQ+bA1ofvLdL+Xi
	 83v97tDRwNhYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB117CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847623369.25095.10189672773810517895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd52c72d98fa8ba04b5f55bbf6056bd0b55beb76b8a8891d92394cca3c52256
Date: Mon, 11 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778476233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356982F30
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738137354; cv=none; b=mkyLlc2uMvp3RrgZkaIK/GLkyGinCe65AtzfztJIHbl1sGFpEMZskrfSk5m5/bstDv9evMEGhtQbkgey5k7YyUEASQJF3iLZQ76Wmf0OsRQAbkeJw8drqmD1NfKKWv6ao/2trlZqo9/M30HlLWc9+GCGb6mV5Q/Cljs8AXVcUCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738137354; c=relaxed/simple;
	bh=QSiNc7VQ6y11zit2N+rEbdmTRmDbSb67FHHzJZMTOHE=;
	h=To:Subject:From:Message-Id:Date; b=eNYwolE1nycawAwdolyR+tI721ZRAGkI6Z3+oHNucQosfaa2hcDS+3e+icmkENqcPbFTwG7H5M17mhsLMdcdIl08HAQzOW7++Ws4Cy83kvvVzMIKWTYJ0wV9LStte9d7HxkVUVu6haCIUT00DFwUoRsAuP+ydw7MRust2lvI4Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGmZWwBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGmZWwBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F7C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738137353;
	bh=QSiNc7VQ6y11zit2N+rEbdmTRmDbSb67FHHzJZMTOHE=;
	h=To:Subject:From:Date:From;
	b=mGmZWwBwChwGdI3Ke+XviEYxRwbapJ2/e3E/fspvW7iA/3QLN/WDae5BLqR/+o6L5
	 I3ivwnNmpiC+wY8PCyzv3BR+qa7iciOS48AY4HYxXioHtZO/4c+GYPQvLSICL6dM0p
	 K2l0K9pc32VwaOES2/U1HdVKWGfCc30w/SOF9z9EXaZ4DXi9EH+UOZA7ji5vFWwlQr
	 FS9CFFeUWddGYpAbPgv2y3Ag5ft62uClMrh2ScKujQSKF0pfmWhUeMiftjF87ntqQt
	 fGXRu77zrsWlcYfmomsvtRhYFoL5r2RUT3T/bqKtLfz7Mg4uVhDkvyn/hy0fuPN//u
	 Y/cSY2KeU7u9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA7C02192
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813735361.12027.824622250510893520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d16ca47f42d8a3b73d541031bb94bca703f2bbb777325e36ea77133fa7e867e
Date: Wed, 29 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738137353

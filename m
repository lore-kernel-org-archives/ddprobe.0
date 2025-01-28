Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA623A1CD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738029954; cv=none; b=irQwIhir3sxmgiaS9R92d+8sKckt5PXBs4aLwL+TYZ2ohWSgEgP+DftxfWqZdobc2HbekqfIFO0kRYfGJvpr/W9N5ujyqF68AeCyGC6Nmoh75B+wdK5kqj9SZ27Ui3o+EBQ5PQgG5uQV+b5t5QPyBxJlhRRWvdzcd/mUPRbzZfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738029954; c=relaxed/simple;
	bh=CpFfLFKrwTYQ646q/mzQfdxjGfAG22iDHC+lOJ1acKE=;
	h=To:Subject:From:Message-Id:Date; b=Hd89oRSVuh9Sys4udxaWRzpIV6J4qaT6xM4BF3xhtpgK1fnxV4ubyBRzValIj2DmHA/XfVVfVkyXMv6yWXtthwAzwg6Zjk6r1dA0LxDQTGxqBMMBEki3jUuzgniurTL3PgKHwfv6pmohj5ShWHWrAt7TpZuDb3wB/2vOl+dbkDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLhcL409; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLhcL409"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5018C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738029953;
	bh=CpFfLFKrwTYQ646q/mzQfdxjGfAG22iDHC+lOJ1acKE=;
	h=To:Subject:From:Date:From;
	b=aLhcL409RFHotPMtIbzKSMcQ6lEcd+t3oYUTGK3MtcwVJIlBh2SBvywR4mlTTUARM
	 S2HLiCmQs0n1jgedPFd9kSed0p7S4gT6rk2XxGdpll2JlOXZ+/yCK8dbvjJ5lNJ6Vh
	 rXGA7dl5zqfa4KwIqb26QLF/a9WeUr5mWeCV9adrhArNZx8xgbeUhoQDPT+Egl+brA
	 iPnns/1sPQeGtNy7ARBmMDTzLm6mYLY6OG4jn74xC5Fe5Gm8ko0fhEH/OqI+nD+/Ga
	 FuUZaqSweEhGnGgqsVkdEvA+tksh4MpxVtlE+Q01aGM5tS/h+SqmJARie6pfUFZvik
	 l0QeIdBGEMlKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E84C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802995363.855.5333998651164997636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d3db749ee1f761653debda357add7ac95733bdd62773ba4df43287abe5f8eb
Date: Tue, 28 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738029953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A6343896
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787637634; cv=none; b=GCKZ62XA+cx1BqwMjpoI8O0/P9QMn+Fm4G0HKQhzhL+3QKyxEf585MPEOmtloy0Gpu/6lkZCtKRaaY/z/MqrHuGKAIvS/uI0OJ8vej69JC04CS305+Lhzt2g7TMXkqprge+uNyUX76YRtb1tDoTjjSqcDHMhmSYWXCb0C61fD0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787637634; c=relaxed/simple;
	bh=vCRtm95ofAOqZdarlFmxElQQDyEsdqOkU4P+ZqL44rw=;
	h=To:Subject:From:Message-Id:Date; b=kxZq2DfTmLF/1FrQsg6EqXzwQHkw/RPUGE+VWvM8NUkCiMYf2z/ZibvtMlZQxR7YstUJ21yEYP0o/lY7npsNg7xTDgwXdGzjwaH7nHXiMUs7cN3uUKbq5vg2A6A/4OYyXHJIHIXy35bky11IFx01MjA2mLDLOCAT9TN1UKJkePE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g76J4WN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g76J4WN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC598C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787637633;
	bh=vCRtm95ofAOqZdarlFmxElQQDyEsdqOkU4P+ZqL44rw=;
	h=To:Subject:From:Date:From;
	b=g76J4WN/KSaNRJjTTOCl635yp3wchiO/nVCIh9PbbTWlGdBgkKR6hO+HTEI5fRu6X
	 GwJsOAJDPUe0j9aUV3doHUwONUNdGG3amdF7truYS8eEZDn+HsYBtEfdRfaAqeoqDV
	 UD7ewWf6ybwZMZ7TnOMWfB2/HvTLQpVqfbF8P3ZSV0mtjHON5bqiTxqzn8+RTfy3p4
	 Rytz3gVo+iWFs1t8+AeW6Rw4qq8p69n8VWbg8qR6yQx8C7BGPHfCKNxNhAhIa+FSLT
	 27oT4eMDvW/+cPgiDVSncisuz6Z0Z3tII9pOah1EUfon4CkgD8ZKsqotq/Xg3ZtZQh
	 rYafOEXup12Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E08C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763763368.29587.16992584956876096357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7918c2bdb7871afb39ca02b77aa4bc8a513c617c423a9105421c4c9109041b5
Date: Tue, 25 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787637633

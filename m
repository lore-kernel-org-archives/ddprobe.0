Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470804879B
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741739934; cv=none; b=NhEgckVEZqo1D1iz+6cQzdLVlkgb09g38hms7Mm7aWhYsWfZQHF8Tn2Ssg7SvJgtHh3v8x0jrs2Kwvd/o72dG9KD5qwQcRnEcSHgQSJSWRi8FUvJ1U3pS0hp1sMP8hfFWc4ROxBaH2xPsTYY9RNytYimNU9lo9KhARA/8JOFRag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741739934; c=relaxed/simple;
	bh=BpscqMkgdyLpwJCxbeegAqxM3Gljrxl//6AeHNy7EFM=;
	h=To:Subject:From:Message-Id:Date; b=VFPwXpnteVixrsdO59BkbpqMyaxhCeoCBQGiaf7rSZz9I1lIhHZSyd7DW0nxPlIZWPAea+DmDXL1Kts33lKJMnJIqhIt2xwrGElTC9T01ETRPP/ATgyzgVODsPaF5rvRLHjpcppYwSbuJfEnu4LUCiJrMVQHtsIdYc4BjyGgBL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnTwzmpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnTwzmpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7371C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741739933;
	bh=BpscqMkgdyLpwJCxbeegAqxM3Gljrxl//6AeHNy7EFM=;
	h=To:Subject:From:Date:From;
	b=ZnTwzmpv4QBqIc05dbcEZ0KW9cmn5Ff7dsMkPSsq80KjNuZyCV/+GOZzfHARX5GK4
	 BmLRVQKJU8Z+RIJVryS0O/UMhdahSMzXUriEAtumKE843ckK8m0fs6NprZgfqi9WWF
	 XwH8GbkwB4lccqy+3/zT8sCKadppbVbMckH6rzVybWOrtZqNP3tfenn1qLQSUI1lGq
	 C7PYd/HGcjiWcOl72XmKa+P5rXxUPcDUjsDOxklyKRwJwYZi96Ck1b87wlaPeNP9UQ
	 URTAxFaYNT+H8nZpwja3PCDycKJd8URwsWa78shvPFq/3DfhWlgd3j+Ze7RzUiO/0R
	 8yX8dAV6sEgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC7DC282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173993363.6045.6790327989494505082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672d60a65cc8d2cd6c375913a47e90d1da370dc3a75bb9a8615759cdde3c6d32
Date: Wed, 12 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741739933

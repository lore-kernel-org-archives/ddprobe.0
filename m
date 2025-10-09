Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3FD21A95D
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760048994; cv=none; b=BbXAGuQqMkG48iuXfd7OvqL3aZtQaQQ4NS5zW65hvzemTuoyu76eUvH2J59mrCpxJM1/0YmY6pbLJaIcxCp5wGzTYQGKo2HlWANrIJySw+ZOB1Um2CDMuev6Rm8Bi7RP440skRW5wE2GAka11sC7fGKkRDmoVz3rwKtC5gi3QL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760048994; c=relaxed/simple;
	bh=NayB+/XF8V0JnIr0+4Tbpv+iWJIw7IS1OdV4IqWwItk=;
	h=To:Subject:From:Message-Id:Date; b=B1mf4qtiO9iSFC+zYUCHhFUPDoI0zrQl/h1dkRCrtL/3Uc5tdx4DMnBuYZ45p4MG/4McPnmwqORAex9RKFYJxMupp1PvOkaoTj06VdZ2MtlEFgaKoi0I1OHvCcMJj6UniDU84R1OPX3yVphXcqlMpLvpjoTaJvwNniw0gmcrTVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7JL9NJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7JL9NJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B0EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760048993;
	bh=NayB+/XF8V0JnIr0+4Tbpv+iWJIw7IS1OdV4IqWwItk=;
	h=To:Subject:From:Date:From;
	b=m7JL9NJTYSzWq2clZt/gdOeRYtUZ8MF5vba/nlctUWBEFGTeyhQi+H6Ft07MuMm6q
	 6gxv6QkMQTRdNmauR4++znxdtl5tgOviJb4KDjDpkQ3Qic7eu8x5YSZnuuWSM6aMm5
	 lnhfT8M/Fa7gxx9lhYR/VPbcz26Bnulk/+V+2oZTtxjzr9rHW3MUIAgF7SIutARuby
	 nAnPzbF6dEvCmRjQXVb9lPLcWrnj7szy6tuICP8qittPlSzmdZgzPcF7LwlmV+P4gE
	 o0l+VgeGnSXUTzTBfMorph4yJkyy28hKctYAR3jgD2SRHaqpVfQCEY/T+y9cr64A1a
	 xXOLUKNOPLZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3BCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004899358.1718.17633666538155551624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95256ca9c47967ad8821ade88376b97682a869b65c06bd3092331f0b77d14936
Date: Thu, 09 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760048993

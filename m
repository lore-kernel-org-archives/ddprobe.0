Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203DC1DE8BF
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730978754; cv=none; b=fuard5lv5NokSzPxYC3qpL8YfIzXN37I0d+1zlnNhfSmo2E0mKXJaiNE77R6psu3CQzqL5vQ01R2jowSUbBKL9ZebkXNty9nwTKvfHf38vv7ymrQ2p5FKYH4CMAeEndE964xxTLkK+Ulk51ExfoQ6e9rU/Gxa7e1luPG0cEuIsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730978754; c=relaxed/simple;
	bh=O3YHtqDL5fOyu7i2Mo1DOIsMxScPAikBtNim9dXnwZw=;
	h=To:Subject:From:Message-Id:Date; b=WMQD/aQn8uVSLICGdq6Rl5lk7Og4NUxXBXUx7LQA9OrWPHQF2J/2kEVvvUlgiCw6dX2JRU9lruFh9aj6/B1uiINppytLQ45PvOzuIbFgnzl0jZhlB/4JgMljHphCD4p7GkGgdr3tZHLWT2T9jBatm1dUIiRsTOfeI6gJUgNoiU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ee9KrbEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ee9KrbEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D06C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730978753;
	bh=O3YHtqDL5fOyu7i2Mo1DOIsMxScPAikBtNim9dXnwZw=;
	h=To:Subject:From:Date:From;
	b=ee9KrbEJH3yJbIB7vf2vstlVjk3n5k2GN/NYBvFwLysjwFAfWpLpw1QawXDtfyNnw
	 Drby5Y7VFKCTPpjFpsVB78NyUQF6AtnjId4mThlsg9W5lQ4UjFUfITGflNhJUQVre+
	 zV+wLQbBjex4eol14eCrgttTKyBiKe6xNVtPpf1hMslPjCqEPqatAu3t/buklJaaDL
	 EmQUqMyiq1QWo95fhTmO6B28xD/vCI6qD57oPcqkvSrha61wFDPEbZoktiwllaI7kX
	 Ji5d/ISvPXgyKqNct4lJh/pLmRQ6RTDB54J9XX+kUnPSrCYSM1gF3cvBcMhrfzz0Iz
	 KEw1CsZFqesAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D71D43341
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097875367.9824.11644391149759750352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a1a2d5e238016ae4b1be542d1f82ac93544b798a07a72a587930f725988cea
Date: Thu, 07 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730978753

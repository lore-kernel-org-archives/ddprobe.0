Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E1D14D6FE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727447754; cv=none; b=i/pIKG060GKrBQyDNdKXNUiIVEVjKmTvtRnp2A+SEw2aWWbOYZ1xbYHEDZY8FEbxF2wrtGUtdr1ns0BpDKF5IFseiaxrjAILGpr258y6IS7xNPkaoJgxjUBU8rJBX+pD/Fe2fpcwAZ3YbM+L+UTTfH2WdT6Xk7sbvWd3TAKqksc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727447754; c=relaxed/simple;
	bh=Do35gspz3eUKMTrAYLKqO0v7e49j1tnmfw5oNb3WbY4=;
	h=To:Subject:From:Message-Id:Date; b=ufi4NtUqlxD1YlMJZ/KggM0wQhvBDnZUu64A4TvbugDsN0l6W1GQfmZOfzWZovSEL9/O4GqMIMbqXAmlDzmBMjnstkOlSKDybM1ZRXQspa2b3lrtpvsPyR20s2E2cJ5V6/7+bEOy/egsq90uywtdn3qt0fI8mueYQNxxLbRz0JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGHRfJM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGHRfJM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF4C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727447753;
	bh=Do35gspz3eUKMTrAYLKqO0v7e49j1tnmfw5oNb3WbY4=;
	h=To:Subject:From:Date:From;
	b=sGHRfJM8DDLGvJVJILdCuo9g0It9Q8rF6Z2mH9x2uwxlEhasHnSTwHPzq/ukQJtxQ
	 mblISmz2pwKmQPw4iwsh+HwLyvZYBk8vT6kvNJzjJMTSJhpd8hvfRiPRClx+F+v5gX
	 kOEMCsz3q1XYGLu5580oDZGJEuK5yXAiuRdXRJbB+WJvuICuOoBMx3Wn9cMWTVEtIw
	 NfB6TVQ/IuFzlEEGkb++zjQMXY5XJ6y2ww7+OC4wgI47TGrq8TsGs7T41BNprD5s2r
	 0gq9bBjvSPTKsr36Jhqs1/Bun/izAVXCRtAE9Qk//Wtt7vUM5Rnd0LFa6p4P+zPP36
	 7/A+xw+40z5xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9746ECDD1BA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744775360.3911.14159073404656514403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee4ba4340e320e93e6f52e33b45963ab55f8c84337cef5fedbd3e76cf8d4b31
Date: Fri, 27 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727447753

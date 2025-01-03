Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499ED33DF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735877154; cv=none; b=H1JL7Gc1Y3+P4cxsDHQxzHXs0p1bm05NM6SGtkojLKlHWwwpJP1jmAUdUOlKlLeWDwoMo9A3cB/Ri6YeigG8bHH60jdJa+Y/rCVD5TcydFt/iQn1WRgwl84o5FtNC9oHafVcp6g/A1m8nDZem7aHaJP0NkTlP8cVKPhXQrEhMZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735877154; c=relaxed/simple;
	bh=4IVjrR2BkLx0/5jMKDocODSVc/aKcoUibJMg6kaYxAI=;
	h=To:Subject:From:Message-Id:Date; b=ATzag3S7/+j0mWmtixyuXVRG30Ia82EkiN2ysKWCBiN9vAcDsgxl4rLd7dDBAep+C00fw7t7nifU2oOuyo8oO+VcMx5WMxz4mR6LTHlIWLqan2tyYG+X+OyooYyibXcEdYHTxmvrOBZxVQZmCpS0fVZTzXgPVA4PiESQOeTPkvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dupq34MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dupq34MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD465C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735877153;
	bh=4IVjrR2BkLx0/5jMKDocODSVc/aKcoUibJMg6kaYxAI=;
	h=To:Subject:From:Date:From;
	b=Dupq34MA0KYRjkgGegQN5cp6dVmnB48ZFV25cD4lyJKJsu2SKBNRSVx2WnQjfUdyx
	 ZsJWwD0FYZ9ZO4PB0zNEhkxN0I/i8zY+dsCRusBIaTKq5fmE8/Jh6XdP/w2hbxFF8T
	 swOVYmvYn0CWhIgCBoEMftGxymUwbj9ANPwmDlwuAsQFsv7IGF5pCOK5zfwwNBuTRG
	 8dbSBIKNuqaTIml9Q87Hc9w6m5YRY7v08Z6ERI0HqqES/F6aQCKWAa1cYKRGzO9sWa
	 rT+8XjtBvbvGkxOaglmAk3bqUzcG1vTvbKmfFwIqcv1TvBoyTUBjTJM4JKIH8PyZT7
	 AhFbv1FJ3tUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6C6E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587715362.5652.1958789558694321327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5bed475ad6de62cde927a4483e19dccf8f3aedbbd2f49ed98d5b6990d58bb4
Date: Fri, 03 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735877153

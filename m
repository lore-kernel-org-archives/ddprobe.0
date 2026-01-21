Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103F72FBE1D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768988034; cv=none; b=lG1yv/ubhVn5Z8G0GJNZBd1utRFSKRT4POYIiwu3iJrKKhEuk9bF02/UOXXS99tnONHSelifDOywqel3AbaeHFhozjuUtVrfcfJ/wLSdEitsTqhUU6hxJj9UwW4dbgT13z6qMcQaLQugiLWdREv1fKrJZdBPTAWOPX/FiIzbfto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768988034; c=relaxed/simple;
	bh=INkKAHIYWcrz5o5UdyaYf93OcMxTktinkjJMmbVt2vY=;
	h=To:Subject:From:Message-Id:Date; b=oYg8W/o90pu2FN73oc0xh1PehKXyinRM/RfAfsYAs2Tiw8nZ7UurWNJXQ9kkUIeEy4Sex4cO/NHUrSKdZoYR9Jmn9/mRacGGjqqJ/H5WYmwdfvY6kcFvmFblBUhwJn5VsOuP0YcAE4nlKn9W47iszyzkV35Q089ysyuDlTjfZWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VP93ThvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VP93ThvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A021DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768988033;
	bh=INkKAHIYWcrz5o5UdyaYf93OcMxTktinkjJMmbVt2vY=;
	h=To:Subject:From:Date:From;
	b=VP93ThvK9x6xfwAbscrSbeKc1p5l8aA5MfzI0MNcYlFFlTHUnZumCmuCfxX/egrl1
	 jKxEYuSnQsvVZYvwGcHMR6v0iFFAXbBxHp0pP/vneU8xxpruoL1TjK9QdCdBTJb+zZ
	 uk6pfHjPksJ80KFmcwdTWJcyY2LqBMcHnfkKyIr56iOelebl67eGuafcGAb7A3Q5LI
	 aTiqx1/MnBkqv347dIhVWbIKKr7/LOXDt7ct1ca9HbQiKj8kQjMf027x7rH/niI82M
	 wd6aZWU2GHOd8VRqPrA5sLQBBuRoOJDo0PwEOlJJG3oQ5JrE2GX0o3L1d/6NbHwXXo
	 +Uvz7xPV6BQ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F532C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898803357.15066.17764287597337416424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0c83930c84caf54b58e3c4463740d8534e9ad1a2d01bd2630dbe01f4d97a3e
Date: Wed, 21 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768988033

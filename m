Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7BB30DD05
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790387434; cv=none; b=fyXHXYBpMu5Oh2KC8BUDuqe03asNYHOn8lI42npTa9L1FFIFH2ecKgUEdk54+bGnFigr2p9It6eqoNI6fqLbh3SbuREOlnqJk2lC4YmDvQ8qKZiqb8HG+s/Tz2/dfH0rQu62LHsi2jthyiLHH9WGAZbGrk10cvnjQJWLFe4Q+QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790387434; c=relaxed/simple;
	bh=eeugMKJ6CobRKRhRMrmc1oQ9PZ9kRVh9yxX8xwsRPYU=;
	h=To:Subject:From:Message-Id:Date; b=QIHT8BNrFePp0kd5mEMlZfDPNpK8ctZVymHT+QlhbNcokqSEdoqz02akcZbB7u8Al/s1uiu+GdfW0vRXvzrU24qOVYj2id7IMoh1aPtdNJVlrREnQyKFSRarEIl9HpgnTl5J4F/qZRNaSPvRSf4eeN1VoroT0XnK+9Eu28lNJIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZKRP7vJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZKRP7vJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06CEC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790387433;
	bh=eeugMKJ6CobRKRhRMrmc1oQ9PZ9kRVh9yxX8xwsRPYU=;
	h=To:Subject:From:Date:From;
	b=FZKRP7vJADExHuyZwptltu8aV1563DQ1HJ9VmNZy5M0hpsQOUWzxHR/ZMTBOpQGOK
	 s2C+EoV7fy+UAEXsmWm5Br0j3+upJqijq8xg1heIxRpdm0UzQsHDQbTAV/nGu1NvAL
	 8n9znwRZbYt6rA71WZcfbUCq/BqgGxn55LgMag8vcVF9ctWU1I8dYT4D0G3qrGKyO1
	 /f9+5p0wYFLgWb4PK+GKlYH6+snIryqHd8xW52CpnX0Rqhg4F4fP2xxP89OBGrmKHm
	 WMyBqGWiJz2ejKNo9H6Z6mTdNuJjN2+P6ayO0Qfc4HRjEvk43F/Xusr1biXT4MzvZ6
	 Gd6dH+GYOzpcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B4BC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038743370.915.17380164178084965422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d47f8492baf768387dcccaea77bd0606b9f098b940e3ba2b1df7992e5af305
Date: Sat, 26 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790387433

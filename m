Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E80625BEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759403994; cv=none; b=LxLppRJKM3c2m/+8MX4iC8GqjWdLjCzb7OH2Tgc57lFvZWQq5T4+82g/WgZ75toawyna+VwhMhU+Dc7RNRvGWDi5iedhg3kXpO3/TNjmi8DKle8MkhUpm/l07S0wLbo/mfZLbnlGABFR+dSRvUVFdgNNT9FS4MZhoQyvhXM/+CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759403994; c=relaxed/simple;
	bh=e+xqfDkdVHy8q+RP8lYy7S9eWwX0cSqux0T44EXwkII=;
	h=To:Subject:From:Message-Id:Date; b=H3vG1NXcOGMGme0kVlZI84Yq0pGSb+XXn/A0PCLR3zrC4zo8WHLMO7yejaoy6cXNqL5Exdu9q9QTE4odsuLviuTCmKilvKLL+qYZQB9+fbkWhMjc01bWRJ2zIiWIX7M3uTkwvhXQA7Ski/KQOou54fX04p2lgaJl2wVD+6Xzvv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOk6R6kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOk6R6kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C1C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759403993;
	bh=e+xqfDkdVHy8q+RP8lYy7S9eWwX0cSqux0T44EXwkII=;
	h=To:Subject:From:Date:From;
	b=UOk6R6kzH16s2CPRHHFNEKr8KDB1VsF5LULaeT+kTjDfYzUUURMAUsNmVm2ovDAMd
	 0Z0Ezlbfx9rJsSbGhwTFp9FdDRdZ6w7I7RidKw1MLx4Xd7ULPuCCj8Bc3rCHbS3Gn8
	 OtwIf5vyroulBTJODdJ9oIWMxCRcV34otMDTHNAAUSc4zHznwTfgzqgZlE+LQq4d/9
	 5CN+PN82TzyRZrhs2Ktu9wBektdaXXwbAr6Blumr3iooLvzEciTOkYLLQZ3yTXcT8g
	 w1dx4ezudJR/v0AIFY3HfUzlxeEUC5VWbJ3Qn1zFcowdi2P3Ho7eczd11E8h+jR7ro
	 MZpW1o7pMH/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9FCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940399358.1681.12013308190271301786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581c90c50a0deca1e654f99b64f41b3c5810f9d9d9a42e7d33fd0aa82204a5de
Date: Thu, 02 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759403993

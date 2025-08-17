Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9D42F0680
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755449994; cv=none; b=CHJVP3UWBP0J2whBKQXvCQG2iS2TWprAUNfmOMnSt3Jp7V/HWYthPry7sjO+zodUOm8GEvayPN9xwEO5PZdABre/A+ZdrxN0oQWyaX3+gZVIG8wC33bGnxRg7MWIYO8jLZZzAEcD7l86S/4qP4hE3/ED6094sdXYEqsztqoBqUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755449994; c=relaxed/simple;
	bh=wGNqqwS4ibAYZkoq6L60TNM2RkbRPPKBYH7hF6F8AVo=;
	h=To:Subject:From:Message-Id:Date; b=r0GgAWQNojMk9UXj8tyXOfLxlDuIU9MFZZcNbE0OiEKKYJ4hCjQq3mOfCJUOIJCqU+7rw+1QtRqFZ5lgpD+bPkOZ+OUlsPugayfgtPc+EBRwraeB8PflXWYFNez/KVNhv6v//aUuovudeYFe4JeZYy9wuKXgE4RwsV05yKMuRi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pj+l6ZG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pj+l6ZG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26C1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755449993;
	bh=wGNqqwS4ibAYZkoq6L60TNM2RkbRPPKBYH7hF6F8AVo=;
	h=To:Subject:From:Date:From;
	b=Pj+l6ZG7liIXRwJcPI1zATD35sKbwYZd1xwLPSlZJ5Nv+jNqV84ENCM7qtNQnEaZS
	 scGcSe/o/AJL/jjXDrVFh5kpQWbaM1O+BkVhEA1nRudug+CpPyBWohMwjN4j39GmTA
	 7P/ua8iGdmPet1oLcvuMbKfARONEHpA70vyWVWk3zO3BnrjXlqtxrbd58QC6wtOr3m
	 JZT4w5oGE9AL67SFD6TLbTJOW9JHagr5TeXlxPre7fr1SubZ2tcwuOjz0/gRS3Ho/z
	 QyXpiRKwX7xxpoaGgPmtrkvCgoMcHujwGC565VWD7I7uG5YFOhf1nLuI7C7YeerZds
	 jHFskDTQ5IaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD7CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544999357.24611.2283378747906773551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eac4156024e2c2e0bba6f56301f172a777734bad82da3c15f95126e894bac5
Date: Sun, 17 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755449993

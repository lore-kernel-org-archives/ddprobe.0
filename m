Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E65A330301
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770178434; cv=none; b=O8Kk23Z0dQbYfO8ytrjS7cruDGMaRyqFNBqN5h2rZCTer4W6lcQnOG9zQQccUVQVc2SziQkYWN5K+2zZjLS3QE2gqIr6SM2xOonG1bqGdXjdFf8/1HiSq+QaaQMMry5ww1C66d+tJIDrfQ+G+FjoD8HZ3DELrOQ7sjGo2tDXMMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770178434; c=relaxed/simple;
	bh=alUaDae1/Sl1Z7ijOLZJLr/v17V5cMd+cwaorekBb9c=;
	h=To:Subject:From:Message-Id:Date; b=OuAzi3sV7YadbKxLEZrRzo8N4zmVWRXYyd9QD9vxPpIKM4EzmTAfeeMw1VQOpn/NDbRWG4mLik7omracgIV0elxXUjDz3FyXtBYRufkbkmJfbvyh+oZYdZ5jpdpkc+oWsvzulh/MChGhAx+KKTl7SJDkdZA86bEZXw2s6FUOI6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2bTPOZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2bTPOZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86DEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770178433;
	bh=alUaDae1/Sl1Z7ijOLZJLr/v17V5cMd+cwaorekBb9c=;
	h=To:Subject:From:Date:From;
	b=e2bTPOZNekB3eIFJ3FVi/R25U+15nAx7Sk1Xg5oqxjnIhSr3rx9a+1Q+/6ae1Pccj
	 cJyccWCd08HvtNGyObbbNtqhEuYpK8ECYNGrInGu13j+29oglS4tSYetlVnTWXM9Ld
	 NeBlgDT43+0YbKiqkhMBKAZNJlhQAkp0aCJmj0ntCJ+L3ushqmEKAaT0ab3FUYb1Mu
	 fUhZN57OMzIMo3WJiWPe/mjrQskof2/KIMAapP66CGh3F1h8XNpzfjU2HG2fzyuMmr
	 FvOGl628fhjlbUPA2NAs9JlzxAGvYNa+xyFRBhj4YsGQTR1HRzv8gO4rw+NwsPYB4I
	 AhvMEx1Q6b5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970EFE8B399
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017843358.17999.6725133492176628186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93112ba5ca8cec7e33b56d030d6771c727b0660fb1c73c79704fd2e33876781d
Date: Wed, 04 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770178433

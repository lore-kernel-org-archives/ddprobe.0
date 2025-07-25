Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A7927472
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753406394; cv=none; b=rq6S2kGhGNmag++223dBA58Nh0jCDCyEYvwmG/a6Jt9hW1VbIr0BRIyXm+nkKY9iEtp5ittgmB9qjmyPco91t9K7wTbJuGNQaPek9utMhJcsuSr270r4YNCuGua8trCjPjuSs7srqka/nWRdR0Vdk6uZBPYF2QQjqCesMzrwjcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753406394; c=relaxed/simple;
	bh=xMnSMvxhVv7zWcZSkURKzV+qkE+v6NHWYu5XUJ1vuz0=;
	h=To:Subject:From:Message-Id:Date; b=H54MCUbRfTG3e6CTnQs8YBZTS2sTfVtoWSoODgqRj2WrZhSqcGeBQyxmeYjldnDkaU0TE3aFtp5pvXPsbYFBJHPI4qcwECmFl9yRozz4Znb5ye+iwKeje95RefZPhP10swjzc+4Ozd7Rr6rN8oQOhXpauM/lHNxLemP9NbBp3Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+LgeFq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+LgeFq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5218C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753406393;
	bh=xMnSMvxhVv7zWcZSkURKzV+qkE+v6NHWYu5XUJ1vuz0=;
	h=To:Subject:From:Date:From;
	b=t+LgeFq6ldU88PoomyK5iOlc7qvDDMtiwZdnQug/mfYKlSYy+sGxix0SuYn6mK6tD
	 pwQpiLB5h+Nu43GejPaUyTcYNiqh0HqX+uJ+IIxG7l1DQiMsvBlzccjIoBQl8P/XV6
	 nPWFtFhj9aFWeWMacuIiAmCkz3fXc+dEOWGiCVfvVByXUKUZU7tn9ENOTHsK0Zucpl
	 BRuzAnMh8ZplnGmCU4O93kEOymfwiphrelaXZ9zH7PKkg/tkE5OMXzGGNvFUEL2X7x
	 ljnHrNu7RwI+6B8aZVE9GHBnJWk2HuKGmuC+NrL0AIJc0M9FFd3e9Axte+gNPPRkML
	 roGVYd0+K066A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017AC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340639358.8392.3273911877683183461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834c6cd67eb48a0f220ab746f205b30c188b0fae9e4a070f43b3223a54bed469
Date: Fri, 25 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753406393

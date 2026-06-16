Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B5B4508E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781624794; cv=none; b=DMoMjJElsov/ANRZJ35cjnQj9LNd+XS9zLPD98x/OjpgqCBhVIPFPm4yhPnDt52eK0bI4lpTm9GPPHZj72atdlH4txnxICz3ncBXI04Vw7MvUOiNlpYqUjlKwFGUKXzDAa1OsODpIM+0WLyhln4vR8n9NZpa+kLXIYkI9LeThe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781624794; c=relaxed/simple;
	bh=d7uyoGOnY/391nDNKKbrLyTktn36EzMSCwQu/tBPWsY=;
	h=To:Subject:From:Message-Id:Date; b=Og/0NZ1cUbmpFOKt8qGrtYxb8Rh2EiM2uEwo/98g6F8J8BN4K9uFibYnXhP09Z5xsQYR3jkOZQ3lRtsfy0uHjZe1FoYrjF8kYd7eGinJMdUXKZe6yu5KS92lBkRegXWqooRu1IvlLgsnfCoWo+fHisUAGjw/Q5AROEhbgwmEdMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPACNh/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPACNh/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4650C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781624793;
	bh=d7uyoGOnY/391nDNKKbrLyTktn36EzMSCwQu/tBPWsY=;
	h=To:Subject:From:Date:From;
	b=LPACNh/O1quFchwsP+6Xlb4m6lIBgYsHPDDOPfck1/Dwk3aTjfiAVKzhLzb4eUwKc
	 Y5Ts1Yu5ErM9BCR4rvC74KRKNJFpp2U22ZxBAaLEL82PbKiOWX/TZVyYGiVGlIywcq
	 U7KuBU4jkmKTETdrGxbOxZa5xhrISa7F3go0NXXJpXKr+eGgUSHWySt7UuEHjBWIdb
	 nT/fujvxXan0cuO5uMZKAmVckkcyb/DNK07NL16I5sGRAlth+vZZ/pip0DDLYdDy6U
	 v0LClCvnA1b5vWdzRWJGx92FcYGh4juu1/mY8RkILJGACu08eIOrK8sqkE2WC6vCfH
	 83SQNiixpMmBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB89ACD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162479369.30569.9447048042177563176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415e871ba376305c26d232753784a0de523c8e63bd8c29f7c68c40bdc6e8c34b
Date: Tue, 16 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781624793

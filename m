Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3576F13A3ED
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783385914; cv=none; b=YtI2u5pUOBiMPEkE4kRpm3MQuzMAXT+7dE0ENzhPMDWTu9jEZ4FsR7p9LMA291vQBpFw6/X5i3K6rMMUYhHa8KPp+iBbD36h+Hq0AWjjlDGci0OXiE+OJB4atQXmKf1N5CPqUTF80zy04iMAx7KbZ79aNgQQelQwRkPHZ6vWNCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783385914; c=relaxed/simple;
	bh=UyOm1JMNGElE0iP9eW3t86wv6VLB82z4iY9i7SbATas=;
	h=To:Subject:From:Message-Id:Date; b=g1Z5HaFgHs/lm4YBfO005q1TCx34UYO31VyMDvsKpHKmdbWnIgRvBvwUiAsYuCQhM8CxkKRAQkZ43wZABTlEKbstJkbY68Vo3DZ3wAcQSbhR8z+Axpdl5F4jGD2BAHSuwwIKsylOdYRTMZM6UD7zXAdHs1etc9QeJQzpVlLrrN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQhSyWP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQhSyWP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CC3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783385913;
	bh=UyOm1JMNGElE0iP9eW3t86wv6VLB82z4iY9i7SbATas=;
	h=To:Subject:From:Date:From;
	b=pQhSyWP5FQHh5RW6MtAbHpu4wMjdBSV4iYwmrN+mBgr6a6TNmiq2qXWumN3JWlMTU
	 dPTmZQU4hOYWauEHnHhBstqkNqU2dJWxibL7j5k+cj4BcNJIWY8eGhK17lk+/r4723
	 nKIV0gpZWVVp3tbthgWbLPTg46pJhMurukEFkbZTR5zMIHpO550sJVGqYno+YFrnBZ
	 h+oyNs9+7luPZ+BNmr5USFDreAnY966W1Z4SQdVWuK3+ezA15kBnx6UofOF4KvA26+
	 zb30N33RDlgttqvnU3o1DWR+9TIFTErBNVn77rKB28kqfi0L/6A2zmfMsaMLJNeyq1
	 N3yf80vn4Vlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85BBC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338591368.3631.4560992688669062788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ba6fd36be3d7132172748f0a60ca5b569a72478e90adbcab4a533219b007a3
Date: Tue, 07 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783385913

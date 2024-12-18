Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AD01448F2
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734553554; cv=none; b=Gl/QOnU0u78sD0vZpbTBXmno6zk4u3mW+/bk7OmvLKFY2uzqFgjrcxNYYn5ChYCigvOOmK5TQ/AOva/hde7Gl8ZQqly0MhWD5SXuU7ApzGqYzeIF4jeZzl2TCcOHfhxnln9VatpckF53BbBTdjNW5L7mVvcTsfWk/b8eymU3xsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734553554; c=relaxed/simple;
	bh=KvhXxJJ67/3ExW7TtzDApGW2hwNEqIk6s6k5SHwmW5Q=;
	h=To:Subject:From:Message-Id:Date; b=tdKT24vyNNrwsDE14GDazvhrbaH3/LSRExp9nuBHtghJjaMb/SBlU9tM9T3qBcsAOMaNcGIQCAULQp32aI2aVLhCfMSy/YIf9pe042ZprPH0lSy9440buhGP1Jirgr+wBcW1ybE3sQCXnjd5wrWm2hUjsdgbFNbs7drheEIIU/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc5QEFYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc5QEFYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F66C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734553553;
	bh=KvhXxJJ67/3ExW7TtzDApGW2hwNEqIk6s6k5SHwmW5Q=;
	h=To:Subject:From:Date:From;
	b=Zc5QEFYz+zyjGlYAUljVfXfvMrbIbkhfllysrdwKSibNcrDnfzQxPmyLfkaHUU+JJ
	 kHkqlpUdZtYL6vbuUz1slFRnmRuP4N9k0W8iG5k9sYAtoDqnePzQHUGKLtr7tETyvs
	 fJMGtJ9xOMV6/rXhqWmnA2QBR98e3Gxwp+U0jcUm/i2hfr4l+/10MDpDiSBm3XEDJb
	 jLE/WNQ6KvPQG7J1fF/fMGuxrcFgTrNNx5VW+0XGnfbOEL/Wk1a1iV/y8hCAQv3OAo
	 nGuLLj7mZgXvOO8qWuOGPfNl3UjPmz6GNG3tgCp2ZN0khWW+1DkWx6RusEs7SqbXfG
	 /YQUS83KuWmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0EE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455355360.20175.9841830997340003989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80df5c2e49bfbc253eb77de751d9d5e240038b1c662f208d110281d91d5ce20d
Date: Wed, 18 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734553553

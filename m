Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC071D5151
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775870854; cv=none; b=VtXKVPsEtBHb+uAIlxZKAFaNPmR+J6wqrPznkdOf5F1bbKVUsV+SfGOWo0yqBkDUIpbtU1iRfY3bYElTKQy3oijyAZOzD13J10eg8bjhoGnIC+aopgvj1Faf5S/abn4ly+ZqV+ZTnRqHbbfrZ6TB/Brp1B5BJgFDvvP/EhgzVKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775870854; c=relaxed/simple;
	bh=H4vklbolDQxDvnVyjyJSEJU20O842WDfI5mPcZEgwgo=;
	h=To:Subject:From:Message-Id:Date; b=DnZP5quCyEqto5vVh1EpJTIJkl73NcnHdKbwa4+57TUYabjrpN4T/CEuLarVugpzRIsVd83Sl6UvtlV2vPIKPiUYFj7bO+NqMkA/LSV3M8QwHIdGZ0S6kmLC+TZSZxgvTDOjvud3gVfCaeZnJUbTcvRWPT3YUDhkeg1aYkKkjYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuKJd4Xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuKJd4Xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C081EC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775870853;
	bh=H4vklbolDQxDvnVyjyJSEJU20O842WDfI5mPcZEgwgo=;
	h=To:Subject:From:Date:From;
	b=KuKJd4XoCQkaPVwyiycIwDthTNDJyzBRDEbGdBD99yL7jFW/WcelwSKljtEXKIads
	 14j6l9mUzo2GWPDrlkEqkAa6LjB4AOIytBAJNfAeYEF5F+B8eiPjSYtlK+cLvU4DQ5
	 aUw3fM/h1ySZlfS6iBBuT4M7d6Aok0tsvHPUKW3rrIGFfFpIdbOViApmaix2roLYPX
	 l1H825q3tCDlGwsu7Y7LCEyd1RLOjFfrwCR5lxSub2Wk7v4/0o55BTBK3Q+VgVHNKm
	 vuIMx3KmA3E6qXhpk5Dfjtx6I9sjdzzjHcsdbYGkQE1rhQlmgLu1uHHUuMJ/zbDxK4
	 VawBOGo8YtJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF6FF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587085368.32096.4896269072684556895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cb211d28707f169db5ae2af5893323f659ad8195412f43c2c700e2d9a44290
Date: Sat, 11 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775870853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1134A77A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772639694; cv=none; b=WcXTWfKWH0r/kY9i2CymBYi26cq5ZXTvSiaza3gPtpNA2f2Xe2TEzBcfR18a/fbiNbj3vfZgyR66CxMHmJZPv5mc2IePB+Zbv6jFm+fyMrsnivxvlxQ/aSqazwnel8Hmzbddq3OBDRZ2LIZVtIUmCSUJI3bZwj2fxwrSXX/rVZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772639694; c=relaxed/simple;
	bh=SnmpnzJ4hQPCz2kR6t+mrl+gh9NLw0KQW9Cw4l44D6Y=;
	h=To:Subject:From:Message-Id:Date; b=cv3xNDE5rGnbbGvIhsW6dMgmLO4i7VFgR8b3ztadYoFeNhBK0AUAyFUSoERGIORJfAfC0cSv8H8O5Snluf7jGrhySlg1T45xqzE3urCsTOmwxtONPum0yBUDy8q53vSfemTAlpFsdonNlsr9Tve65WtmUkavZASEoqFGC6gAtjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI/DZFLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI/DZFLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6867C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772639693;
	bh=SnmpnzJ4hQPCz2kR6t+mrl+gh9NLw0KQW9Cw4l44D6Y=;
	h=To:Subject:From:Date:From;
	b=MI/DZFLryfZk63iI7OxeyOUjUs/obU6F60pNwXSpkcQwlgSshjV6Ro360ll7Wgsyd
	 QkDjF8z6AL85yRVqKXJIywhgIDhxPsjGwHV5EYVd/lbXfpbsljS3nisUvAk3uhEAp9
	 GglFAh00ovdIenGCd1xKRhUGZIMVdd7InRDfWPUz/RYTGRL6S8WP/eSK8O2v5u3m9L
	 V0ZsMnqDbNvFKNSgTg5ApP+Z2ayrs50BOyg1Z3ZGkFaUNimjsKCvG4oMl+38kp4ZBj
	 kQtmt80RQksp/dG01tcZIy34irLrkyr1rFW8Wl4ztD8WwDWuVwFoD18MgwXZE7iJcJ
	 JEJYkyx4RR6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998F6EF8FFC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263969361.2082.8332452326538269082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d171382017c0c78f3a94416af798ccc14e89b1527a25cf3964844dc72b5660ea
Date: Wed, 04 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772639693

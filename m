Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F5E4A24
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727376954; cv=none; b=m3wcysNWUVKMSv2Vj0C2QBPPwLE1IIq4yL1VA/5okn14BRrz95Vig83T/Ca6FzJ3Jmzq1uqHi0T5f4KfBQKBtNofDVtfsvsDcaS59HRY3douw1QNMR9KOUMiPa1b7S9uioILYk0Y2hb/df49EINQdmr8g2RJDLqgxU32V5MJJSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727376954; c=relaxed/simple;
	bh=+3yJXXXqCfDjwizGCubyUbPNrKn8eagnzN3PVjDJqwc=;
	h=To:Subject:From:Message-Id:Date; b=LUSUEwNEY16eaRNhdvuddgSZ0gazrc8uT1gGTplGE4GFZ1wy2AVV5XAcduQrMYSCSy0hwbTUQAnLu5m9BQFPeI2hd1ls1AQpKQmWHJPDLDIQpBcaJXwCv+daCJa1NHXVtSwDr0PrTpTKoJ7dvBsML2E0aQOjzgmZ2GMfCeAgJ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzgC3CWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzgC3CWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727376953;
	bh=+3yJXXXqCfDjwizGCubyUbPNrKn8eagnzN3PVjDJqwc=;
	h=To:Subject:From:Date:From;
	b=dzgC3CWQxd2ej3AgrkTCOKWSc4DxF8pyVYziE2c7IcF6w/SwTyzjJPYiJC9xYTCD0
	 WTFOrLa+NPtCZRFqd8DS24FwDQON57AXeKuyrHGWZCL1Kr+y3QSCH+Lom+DpoLrsVh
	 NKUPgv8+yh+/jFf2LUTMO3zW4ExVnvaV+ecS6WJ99t24RfO9mAhIErZW/JOv4TOeOh
	 sn9cjsVaC0zd0xJKcXt6goziRpmPEcLhuvoFejgrxoWBF3M0afOk3QMKNkHm7p7Z4t
	 sFmwa4jlqhP/azoCXpB8cl61wrBQ8gu6ctxhlgZuywqqiZ0BYW9M7WgkmaW8cjfcy5
	 CdksHkbKEwd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81ACDE032
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737695357.15583.14327254356173836989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5725fe32c8b1fd3a5e2020c259ae129baf620b061d08d78a95ca30bc070687d2
Date: Thu, 26 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727376953

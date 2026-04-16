Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2709C38AC9A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776326854; cv=none; b=C6sasOaIpcep+z1zjuqCTQ5NcM9hyqmiYGVWiEQu1iOamS+6VXEm2Eg6vGT+fAfXZkBFrrb6gaHkzIpLWAWAdy+0LHyaX5INI0G9/W4bWAEsZM/d16vR3sZs+3letHDWw5hxAZqANULVtP6md2kaRAPJG3YleBfAvt3XWDSd5BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776326854; c=relaxed/simple;
	bh=3WY9rntdqNtbXDF7DWsQOoBErst+S892v2twxnZx3yc=;
	h=To:Subject:From:Message-Id:Date; b=kKhzYFtTvzcL7R6hYPitxKN5fTPu2KvHE0Oe1Zn7V6XurIemcwJKlZsQ5rDbEqA3LS+aK6ZtV4s6eF8QdVAskvHRyKW5hcXBc8NGoxEAitI8YvISoEnOEpsN2jZQBGMD/hY8IeGTSopARM440dPY2OdvkbsZ0rQTuZ2tLT8uNVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmYHr/5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmYHr/5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C157BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776326853;
	bh=3WY9rntdqNtbXDF7DWsQOoBErst+S892v2twxnZx3yc=;
	h=To:Subject:From:Date:From;
	b=XmYHr/5jw/hMvJ8rBlIptgjYBikUnjHKGhLnqT6qs3gkCg82gU/utMkk1BmhXcxkl
	 uoI8F4ZLOPAA3zvHFnovbAGKcOetry6tZA99JhGFF9vBrMKdRKzZBueHyNLa3/aNMn
	 FZEEZxuhfmZxwM1uMOJSpc9Zent2om5WJ9wGTecoZV3JiVo6zGBePsnjx6HzhyRSLx
	 +P945ad49qpLr8+BcnyTOrNr3/3cAef1CrHm7IoV0c8Odgnw4BWaJpfyYbi+EY92dN
	 niYSXN3ZiFpPceFV8MVmX0z5mEwJ2s1fjksMsaXdKgVSvkN/nu051S4PPrzTmyTHYQ
	 dIwROB0ryKlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE23F8A140
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632685369.7062.10863056866912381426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fceeea23359bcede2ab9a601abba7ef3d48defb81ace19afd476a1a9922359
Date: Thu, 16 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776326853

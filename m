Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C119446C4
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707425897; cv=none; b=raGJdjMqLbubWBmAjjmBg+yqF6OTgJuK0rnjkFfG1mO18x8cMwrBx2JOnoAzOzz4BlsIskH7Pgj4fnIlYGwc/Wxgv8YOBB+pKpQx629XNMARFce6OioUX/Y4HC42biT/vlxINeMC5pajF0lUJGXmoJqwKSQ2S84W2Crz2/XBnKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707425897; c=relaxed/simple;
	bh=JSptgB8PTkdXCHjYrlrYU0Q9mRI3pEDGbkBv0+6vtYo=;
	h=To:Subject:From:Message-Id:Date; b=mQnRKRehaKv+djdyKmytm3Ffauje9PhUvSeP6/f3v2S6qbal0p6Jf14o4H/i08407tdp+DlAFhaRxmklhHL3ZguWZF8KU9IFuItLjoUwt9m4I7RN/CPKskSDau4JNpeV+nQfWNgY0AF22PC3pz3JcFpVdpoGcYH54dIGTBhxyv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdtrAHD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdtrAHD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6AFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707425896;
	bh=JSptgB8PTkdXCHjYrlrYU0Q9mRI3pEDGbkBv0+6vtYo=;
	h=To:Subject:From:Date:From;
	b=AdtrAHD7O/dFl4aA3o7dxd9onVwOPZAmXbmN7XR3IYsKt8cQCGqXgJCzLHlFvSJxH
	 UOnfRbKDiUYIy0gmCVcElwo7+n4ZWoJoNwtbrMAY09lhLNIOLHSh+AS/ey17UyTREc
	 lwTSQlplQLZkW+VaJ4koIggztY/dIE7j2EjIpUMJOZ+8rQPolbK1+lr2/7K2Xo76y+
	 s5QNbAQ0LAoJvpkF95OI+h6u1FtLpbkN17GM02/eyfs+mnk9RNFl/tOncLh7X/vZWS
	 BJO9s0CjYGhmHlC3qxhMHwwcEYu/RNCaTvP9c5RTIqdxOhGFHTs91PjHTILssG1bjD
	 dmzqJiD6SilNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B91C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170742589639.23916.14934701251034854029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef43bd26448ba78c46a80ff113f39fdcfd7a45568040cb20d40fb7b7124f9c23
Date: Thu, 08 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707425896

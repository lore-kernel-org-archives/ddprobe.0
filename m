Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295FA319610
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771637094; cv=none; b=BsFW4ThE+VUO4kn/MCLvvivXIv3IRHi0V3EJLTWFtJ9Jm43LkYjDZIHQ789VaTDMEyccUwmly7aLNGqfOGytQifKVJ0zb55h3eC2dMuGpAo/mSU+Tf6ffSGYKMi1Z1IyZsU97zO9o39/j2R+u6fd9bPrAL+Jgd9KywEYZfyTx8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771637094; c=relaxed/simple;
	bh=3Atwh4/9PpnV/7+DkcffMofFxfeAD8Sn5vr9Ayexivc=;
	h=To:Subject:From:Message-Id:Date; b=fXj5P0hW+v7q9+5S55BS4XdgDwLHP4UwvuHdBxGHNZ7YlyqJ5KITeeH8h4wXPSUZoMvW7Q2dPtLIORtn3nnHjS5vYIrIwzt7D1RyYWN4lED4Ih+XAoRWH3NFz67N+C9f7Qae3xN/MNjDaJaN2T/8KhN/YP2eIwZmocLzbT06BbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iG1qM5rY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iG1qM5rY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA9EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771637093;
	bh=3Atwh4/9PpnV/7+DkcffMofFxfeAD8Sn5vr9Ayexivc=;
	h=To:Subject:From:Date:From;
	b=iG1qM5rYaZPi28aRkXTGwLY6959jwWvf9l06nfbwWBpvwKn3rTmYb3dt+7PbfxJd9
	 0uKeLAxjAigtaOmcFxkUe3yJpeHusOgPcIxj0zqOVBiz4nW2GrbX/KgjaifHWQ6hjq
	 +7hP+WCHGWILAKf+zY1NIJIjK67cLRDRciE2YMtv/0aNKScmS+zrScUX1a3X6hvI0R
	 1D4kK98bRTgt+NrTuSna3YYYc+8NWPq0m7T29JyphPWKjUAwPwhH9IEoFj1Uawe6K1
	 l2bvcaJ4fNm+BuIw2AIHUUywomlLD5SBniklLmrCNMB7R1qACdR4bxGv3tg4znceSX
	 euzbDttQCjcaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B804C5DF69
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163709359.29658.15220241263084489389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d447a85003c68c070a899888aadf31fb181c65b6d2c69b465c127c39c069b9
Date: Sat, 21 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771637093

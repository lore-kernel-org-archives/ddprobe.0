Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A794A32
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751170194; cv=none; b=m20oJVJRoOsFnwKjVamcmL8RkMVylInUXqA98yNYPn53c6Rc3Tmz12at5Zs2MCFaGP2QdHci0Sou/2ilbc9V+p+Ho/hGq5HP5MiBv11DaYMtm3eEMdY14cBeW6/e1bz6/ZsBvBlHpa/D6z3m94p/UX8NHWOm0dY8IuDbC582bms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751170194; c=relaxed/simple;
	bh=lvxUU+F62af6sbCP4OoPcnaWOc+p3chFAWAVPfvdiDM=;
	h=To:Subject:From:Message-Id:Date; b=uiFydxUC5i6W6biFVKmtFEd9JJiYrDXvHYHGkn8gPYde+rsBT4tfKQhPYoslrp+6YBwcsoQCmoNLJZAdg2i42eBdwOsguiWiDc/3yi4uz6mODYpwl1aTT1fiOqIYlHBoTn9zD2vL8msSGrGGSikGqUJ76sbLR/kA093/7kuadYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKcHg30H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKcHg30H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751170193;
	bh=lvxUU+F62af6sbCP4OoPcnaWOc+p3chFAWAVPfvdiDM=;
	h=To:Subject:From:Date:From;
	b=KKcHg30HXMwLGT5zX9GS49Oi/i718k4IF6JFcDUUsXZ7Enem/4zxTGuO2kMGSmz3I
	 JbWFxGFOVmyXKLkeKK660sC1lCs9dVJ+1r6HMdJjkyVJkhEeHPHIxcGXNmWYxV0Yc2
	 7qoSZYib4/ZBl3lRAMdTydsomVa5OvCJ0lZ0zSs2IbijStf7O7Gf2R69pQ3+3Zwgj5
	 CtEAbTGtJ8dMzoGJFcaapmbXrz/EKMJqjVXB3BAv/1MuULOFugj88Hhc0fKWdWij5d
	 qSPXejrj6wo6UbH01/9hAgiHmde98orutjPVGldTpCCfopoLhUfJYFNrth9bL6VDhf
	 ep0eo9ZtBkjxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E463C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117019357.17133.1974691240115076973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e8272b09ea7b438e525a9caced0a6139eb1a04030246fcec256984f565cd81
Date: Sun, 29 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751170193

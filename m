Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADB53246F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770743034; cv=none; b=FOuQTGc5nN0QNsGWTW5GL5AthwkjkP8h9wBZNujzGR/2WTvvsWTVTVgiP848qoxfVBbHlMwDWpCI71knl2NkGHTk3xBOGjjoT2NdbB8iK1M3QNIy+bOekkSbVERScrbT97ix8o7DY57HDtQEdpKsbiOOJoPnuL+azUWu6ggiNBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770743034; c=relaxed/simple;
	bh=gnVDPRxeneHrNx1a89/Z3e40m4fE0mMwLsR/wkK4sFM=;
	h=To:Subject:From:Message-Id:Date; b=EXYV/FXuzEz6Ks59o5svxKzvbQesk8b/NFLqe1zsfiMKlX6vC6Tj4nKM6UgZeSVHPtPAl1tpP1Ijl3sikBkEWLejvmteXB1zDf9j5F4GljhhTqsYLTppf4/+ZICw3OYtJDfCgOKpohYhtzeSsEUdKlviE2Q0LNWmD0FQBllj4u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFjCBtdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFjCBtdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E5AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770743033;
	bh=gnVDPRxeneHrNx1a89/Z3e40m4fE0mMwLsR/wkK4sFM=;
	h=To:Subject:From:Date:From;
	b=qFjCBtdmRxpLE63LybnjALqYYTrtAUe07Su8/U3jPxLgN6+nzQfkya5AGz6XKiv0R
	 CKAVenExXtVaSb5pGZ7en7vr22McfDSHCUgi1yISnmIYwlND3MxkFFo3gGZQPpBl4Z
	 I+zwgNCdEUZOoKdf356XYeKEKzTeK5H15dluTqjM8g6q71fYNtF3iVpccYdp87RXyl
	 dLapy4u7nUVK+BhsBBqe513Xwav+QIntNiHfu356UaZcO9AYheWJc3+V2dsQoVguUj
	 xE/N0pFARGnAyf1v00T3EWfUcw3itubnmy9SLtuBJRpZkanfPA114wFSnFmE3cuUWX
	 HIha+hn/N+0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98345EB26EC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074303361.2918.3703818580880350240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f008575a312a78525f7066210e12ac7930fb5872b8840256b3b91a5869d878ba
Date: Tue, 10 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770743033

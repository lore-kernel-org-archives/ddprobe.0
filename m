Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5BE17A305
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751069395; cv=none; b=SCyV7dgaC2oDVe2rN2OnQ6rHWwbQd8/RVVzvoZnREkdWjE9XQkEOphWf6SQhOpZIMRAgrsvHP5ZPqIgAVLwQZDYgmbdDq5QukTv1zN2gXHRdgeDt8BwQMV1Tku8+eSrTCn4BHHr2UWvo+Xfg6JKJA1iU2QmRFbLNgACf9JFb2VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751069395; c=relaxed/simple;
	bh=ZwM1AgGOGHldWbWJydpm3QFlqa2gTMTRrKbQQka7gS8=;
	h=To:Subject:From:Message-Id:Date; b=iw8fWbzk3sLCPmjPjU5OsB1tPiWhI5+0Zp+wDtvJ3GEtqhGBbhLxJ3bLueSs5zwM9Z5dNfaQXedW+EiYZ/tMHLcl1R3f9+Abn8RGlipz2yAhM4vPvinXEV5dkDRTGkhaQCrk8TalUrKGd7loIJ3k3vKlpZ0e/2ZSQZgLVQc/x80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYhj1/W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYhj1/W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5838C4CEF3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751069393;
	bh=ZwM1AgGOGHldWbWJydpm3QFlqa2gTMTRrKbQQka7gS8=;
	h=To:Subject:From:Date:From;
	b=GYhj1/W9vaYNla19GNcCcDDwmqQYFvAXpvxJUc9Wqw99CHb/IwzF8Y8GpBnLyoz+A
	 +LX6yO0r6I7Z5vnFkBID3LyzRQDPIMk4z2ofd9kW5eq1fqkxrB9EK0bBPP0bXZttc4
	 RdHQ+b3mZ/qbCoUNrnFVo7RW3K4YQ8xN2NZk4ebhujGGgoqhjNe+igtsb7EWpg6Yz7
	 5q80beJPMt6+nVnQo0spdcgatYRQwPe9NCtBJNAdXmZrC9Bfn0XHoctrIYnrjy0jU+
	 swua3kDs7mtpbJzKsaQb71Vg/TNvXMgHJ2bwXvuzGScfUd90FDrXUImeE70MzkpC2n
	 sJn4GmjbglKCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A0C7EE2A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106939359.29972.13062668143045687050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e4f8181939ad8bcfe60d888540e45c411e952f1b0bf3010ae0e66981190fde
Date: Sat, 28 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751069393

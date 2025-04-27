Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3DE1FAC23
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745750994; cv=none; b=BWmOBCK07CmdRjxdGvfXqt58GBAemZdsntGUumFUgKrPg3kP/a8o/JSLM+5KLHlhFje340BTmWZ8s2/6VT0hfVIqfYu98W/9G/+riQ5f+iT8Jt3Pgt0Ib852f9VdL8KxI3i17PYUNL/3B//fKo0aPgOGTNDKkMlEo22qy1a3MmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745750994; c=relaxed/simple;
	bh=UqksjSTB9rbTriF0IaiZI6TxcHEJQItv/kWrdYZ01CM=;
	h=To:Subject:From:Message-Id:Date; b=QAXfFuehdvpdLKhqow7cR2DM1cjfnXEbYo+m35swMqw+ovmp4rlEzhst9C2svBoFgKsyQYduOlkJRHlqqcAnvJKhHqFeoYpWIdG25xtsplyKEoCkmpF29oCYsKNnA697cfZzHTeDvnNQg+fJzRXnvwrsFywkNWkegUnf6EHMnHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slrWr9cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slrWr9cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745750993;
	bh=UqksjSTB9rbTriF0IaiZI6TxcHEJQItv/kWrdYZ01CM=;
	h=To:Subject:From:Date:From;
	b=slrWr9czsYio6DKboVJNz/0CXaw6NaSEa0Uf8VX9s9pBttKvjLirxhWjfPbNi8ycD
	 ssMpiMWgf+0gIn3yAzcuaMd7voDPh0ylgyPILhPYd6FklRmsCxFUUu0rLTsm4TZMH2
	 u6c5ih7JhVOX0e2VA0qFrKstTw0I1GpOf3997QaZDmEjlU/vPhlJvx+OPmitnrEn4B
	 91zqUpfZ7149DlEVERvxKcEZLCoRgMgcCHpk5tN5GOLYwWiWODOz3LRtnKeFx9Gsyx
	 m5g67Fl9Aj3Nea6AloTt8oNDPunpkuRBrmPTvRfTkUif95tVPr5e0LaPXT9CszVJ+E
	 KwSWY1lpYvzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91631C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575099357.17160.6245023317715783551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca767c98ffa1f4ea0ef59ea4d7522b8c499a44530ad579e10a619d6d79cd77e
Date: Sun, 27 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745750993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B54D1DA61D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742989194; cv=none; b=exOaqeKwbQ+U+Nfv/657eQIgSfCbsKwHp1izX8YuGqjrqHq1HvTXDaqt7XpIgF5FfDCxxUR3Q3osmqecnkkvy3AcKW5n3FUhrKj/Hq+HlcZGJ1H4BZ6oA1Dm8MH/hcPPOVWYadnRVTGPmKvkEwUgT9sU2ldrdSzid/HNOA8qB3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742989194; c=relaxed/simple;
	bh=NNbUeTuABXLzrKbsOL2M4gJftIHvRdN4/4zCFZtJtA0=;
	h=To:Subject:From:Message-Id:Date; b=r7f8DHRYbj507rwKnPVoDSTZA0eOe4oU5/MZMagFh21Sr0GGJg2ZgKmbDSP8yXnJhwzw80eSq31Qd7j5dNF2chFKt91V+EV5Uokt3nG/lIpgl4HfxGUWdAV+e0CWL4mYOLVqm/PfNmy9BFpkAhK+fXu/6x3JKTlO4MUR0lrXAOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkV3rCDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkV3rCDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5681C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742989193;
	bh=NNbUeTuABXLzrKbsOL2M4gJftIHvRdN4/4zCFZtJtA0=;
	h=To:Subject:From:Date:From;
	b=qkV3rCDVHol5GGLpw7fmy7xvS6NP1VfmmO0Gy+vIMAuXK7VsRmNqFgwNTAyhCnqh/
	 Qii9QvYvZGfqibANQSmQmZ1JuUSjTGCzX9EXt0ihLf96ztdfM5/wlWTMlDeh24eYLa
	 dxXk/2swvTUyr81qLV5zlq+sFnQdQ03yJdNPJYlvK/9+EJEPe6gfzrol1P48D7x8Vr
	 HSxoPU0H1c82cmp9HUEwHu7WUIRjv7AHU+95yn68nRMRWFvDyMqMWMf0GfUC+fQeiy
	 L/sG9YGbIIl3kVlR83unFLghnr697lNCODHV16+uFORDmZtMhoITW6N+vPkA60BDoj
	 ikDBgF28IheKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB2FC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298919363.8169.2078137872267798959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10abc265d12c525a08233c4a316265be81b70bc3d09d794d66e9371bb77e6b8
Date: Wed, 26 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742989193

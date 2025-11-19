Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB6B24A051
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763570514; cv=none; b=bVrGp5DWHEiATEZ5UjGzrCmSWH/I/x8QQaEIrLokVCJE7+z5oNfASaPjreEaevsCn7UWXtn2Z9XE2cZkVxq25JkK68dUIidmNJLe3ADrw6VNrKPHYO8vgE1trwcdkV/oTqHssK7lskIlx7+x5f/L+BvZenTrbJ18FSfqTGw3aKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763570514; c=relaxed/simple;
	bh=tF/osmpERn8q6GKX5MxEli79uVCYmjxHVicVJKzXkqI=;
	h=To:Subject:From:Message-Id:Date; b=d8SWkS7Op1JKXVeFhJEChcfL8FSWDaMw/eqLX3Dlg7WpDotzBenMCxLRAERk+rOS84FjpjR33fOGsCG2On8mAuckHaCz7btUwVam1rnxeRfr5hdhuF6yQ7EErDqnwJ0b4qm9IilnqgF+oUGEe/CgO9vov1IqPTmGkkNuBWDljdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG2fnrOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG2fnrOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763570513;
	bh=tF/osmpERn8q6GKX5MxEli79uVCYmjxHVicVJKzXkqI=;
	h=To:Subject:From:Date:From;
	b=lG2fnrOgN3/b8Qd3zO9m/KbNnXrZgW0EcY1llUdGr8aeoKx1JCrQJ9lm/mKRFYINl
	 2Cut5lbb+TYHMcdsK+HMOgXam6hn+QjJgGEk00QDBa48MwsPTnHdceatrPr9IO7qBx
	 ZXXDwgfaLL0sji0A4E1EaeT4LJEtevpynXqOff5lclDpxXr4PUyJDbmt360VAFztjA
	 loMUVpm9df9oG+JZmd/UHO5nWvxTomtNzuZQlqKUqSWcsy8NVgo3/y4h5H0QpaUZlG
	 JI1dBOFWGGkjavoMZheY9tdGAD0GGodyFzihT/XHD2Ek3OGCGVTCpRPs011JnXjEFn
	 iJjMb7fQIO5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90590CF3959
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357051358.30839.6190187160148487206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28ea54e13ee95d85e562283f189d3d70d1a5f44939b1e81fc4873203da9d52f
Date: Wed, 19 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763570513

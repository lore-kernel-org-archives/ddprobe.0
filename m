Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C553D3B3
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772505294; cv=none; b=GTjhPxujVy/RVOYZrEhRf8iZ5lKL+Sewm2bZtHeQv8lap6rwTx2z+TQ6weoMxdvUx6wl/lG1colRb+NlJ+QcFN+wFobWj3chf+WicPex/7UyIlQzzNqb8l0tIbdogUs+lGV7x2wqKbuxnOL9GMC+Gv2Q4YCvr7vV+By7YpEg2dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772505294; c=relaxed/simple;
	bh=nBspTddb2jIciOdph6d3u2xxzODPNZTf0rwPNzCzDsw=;
	h=To:Subject:From:Message-Id:Date; b=Ol/WysYd/XohL3/NUg16N0w7odDr8fGe4PplJI/kNWVmsur2ZsP1CWePhN7nVkyd269A+BFLVE+ba+k2LBnOjgg3X9Vb+yzhs7vvJURq/voxkgozyxjSYcrHujV/gD1QxA4H1moSgYSX+fuEmq9y1HXhk5iAU0cpsu0/Yct8RZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq9fGiqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq9fGiqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C269EC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772505293;
	bh=nBspTddb2jIciOdph6d3u2xxzODPNZTf0rwPNzCzDsw=;
	h=To:Subject:From:Date:From;
	b=gq9fGiqpbduUZKVkgN6BOPhkFlfab0YoNmsGh4j6R2WXxWsJnfyZN77y8SG5IJzQU
	 OXI7NTmQMCBFLr8uZ84N8JUHvC9BgFnKIEIyuDoA2JOYcWnXe5r2RCWStZPqz7s2XK
	 IlDaUS8SpFTByZbU7s0Nu1qP8qi3gZ9ry61u5XPdo0oqnlY3uxw7YCcYJo6yseYRyJ
	 94/mymNln/qJcqVOu2StoBOR+i8O7tq40gBwFLJy54FD4Q/agnVYCmyuhqRMgvgOfN
	 FLULsxWK6cRi4zyUZj8sVw8+ZV0dEN220AAn14Mlw1rDd/tZd5J1Vmk/sDhtNO+ruf
	 EB5FcdKlJLzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A9EB3659
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250529359.28544.14820267206193300784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0cac2dfd1d4f550547e501db6d7da9bb38f91a6c8bfbdab15b40c480661914
Date: Tue, 03 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772505293

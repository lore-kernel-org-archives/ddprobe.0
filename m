Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C4F1DFE12
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745698194; cv=none; b=hRkZsz5zgu0L/M/dMGqaZYVRjwD7lXL3FKZYmqOBVn6N2mxVAb3tSZpjtKjJzU5sbGZlFIAB7GSSrVx51pjjNG9giCSlKuHrCSUgYHgt6eFdHqlfGGHVdAuTp3XXvSxr6+0iiWHxihhPAhm3WVUw9pxJ9k3JuXukGeFBU20tdFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745698194; c=relaxed/simple;
	bh=vGVTtzsSG8QmX8MfpVostp/YMULJZ1x8ub/13D3cBKo=;
	h=To:Subject:From:Message-Id:Date; b=cmafwcwXGIJmNmg1onbj8HfNdZAQrYZg/a+/rqxi8PEOGx3/MzLCFmHj5qj3cTN6Z9sYVxPLIb7vFlqIb6qENQffdsqdlJIhJGwsNMR8KOB3C3iyMgV27USsRBnQvZ9UbGLU+gEFkXboOx14JGkqbLND889ze6nCb79b32/ej0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAX31ZgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAX31ZgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745698193;
	bh=vGVTtzsSG8QmX8MfpVostp/YMULJZ1x8ub/13D3cBKo=;
	h=To:Subject:From:Date:From;
	b=JAX31ZgEfv5ervXyn60ePnrudIAl3oNBKQadP0VlOzL9uolLUNvx9wxcmti1i8oPe
	 hMZCYz+ioTuFe00oWvvtjGZqxHJrNwk8IWM+5Hqjs5Ysi/L4R6hJzlc1Xq/rXQHt+l
	 65Q5Z5+wYTMAQaFHgzhiCM0rhI1cAbqt7q3jOxh6w3KhNsc7WazLFsc6dRFAwoCCu2
	 DQjHj4Vp0vr/D0aHbu9dG/TV4MutTiP3CyDuTcpgA1skjmULjtZPVsuWqdfWgYbo05
	 QqfHL7pYk6gQiwbW/7woswLUZGD4AjsSkcbOIqd/H5Wjytxj81ShCH5iMm2TUrya96
	 gWmL8ftRtlMpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9FC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569819357.5547.3869039180798709043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed43f5e82ca19099bdcb426755b7dcb2d6d4dac31e5184fde72657ad957ef63
Date: Sat, 26 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745698193

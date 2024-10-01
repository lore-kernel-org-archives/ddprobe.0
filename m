Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171229CFE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727764554; cv=none; b=VcvSxE+8SMnOk8BhCiYPg4YjI4OP0lTrXqclfvvprexxUMNMFVVU1vAxY+FVAYhPiod7zdVMVUTk2BLwHBPfH/8JyHpiUEECCjidupiQKGn72f9zKB1d3GQvaC2vH6O3RyHv+8AOfL7gcbYAAoE4L6vVG1KzCJHH0ZZAqPbHGI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727764554; c=relaxed/simple;
	bh=wYiocn2K5sYh/rE0JkOluAKZZURwYo9NRdLND1F5tow=;
	h=To:Subject:From:Message-Id:Date; b=HScvfHTwpWNmq39BSwKDTYVE+rCnGr1f9lAbZgHe7KpEjszowhM0O//Q+d2lqyq/DGxg1pCotz02ry4ho+3MiQc2pZJ1dBElaFK83xPUDYCadG9kxWe2CUM/zCpV/lB+FyC41woUhMYwGOs5tJ6A73n1ey/dTilr70PPwkxCL6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzhx9z7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzhx9z7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD83CC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727764553;
	bh=wYiocn2K5sYh/rE0JkOluAKZZURwYo9NRdLND1F5tow=;
	h=To:Subject:From:Date:From;
	b=uzhx9z7DBxb2JQtBzAVVzCRhst7QVdwe6LbwXNhLChuc2h64NvwDJNaJ4DR79egsf
	 w1xtGLcgRLIVSUo74BN4e9/MyLsz/0bdkrtXE5+vnUsAdbXE/MMI3Q1XT8hW0uRHOO
	 4wteZ1bdGIk/NVSefmXZzypX95xPHO++8WqdZ20RZLoV9w7yF9Q5cFOSl6l7BVKBMT
	 prRrf9dfehJy1CPyztlxTrTsGfFU1SB7MNEs6RpE9A4dvnr2blwzMNeF6Yp1K4ehNp
	 /N8GjH0ohdXdx/NDqzTmld5gxjbdNIKQzm8Gc2eckepbyehomXcGnLy1e3cblZkKCn
	 TjfVGuAOQUplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF22CEB2FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776455360.22722.14554264963951542603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2febcac1bb0119657bfe813e0116a0fdc53e093b7122ea52b511db89b7ae7790
Date: Tue, 01 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727764553

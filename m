Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B472135AD
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786407634; cv=none; b=cPGx+0kXA3UbBERwwu/sA/fHAmztJSwh+/i9xPZnKxk71ehuZOgBWVYnibcdFe7AZqV4t/bEH2q0B5RkuTvuqtGbotqjeVmqmv7E+/2A+bWqr3V/urh4/DOOG9eRrh+kSxAL62hQQ/xiH0tP8HHo+l1fwSx1hC+RwnTjGNPk8vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786407634; c=relaxed/simple;
	bh=s3V0cnogUAJhiXUPiOeoDEAzr/u8N9gLGZ6SIEio3yQ=;
	h=To:Subject:From:Message-Id:Date; b=df5ZTLNTCqdZ4eqFffyjvnn87A5LVuZqYIY+XtV7RbN6ZBWh5DuH396Ig9l6bLO3JYIdiQgJSU5+jltNtbtpGQDni0vUL6pGjX6752iO4vNLX+5pLVDh+1Jn3Uq+yfC9Ntmcuj+1DlyZbVsWbeElderbamKG/lEUgzs/+lswYuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k91gqON2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k91gqON2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC220C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786407633;
	bh=s3V0cnogUAJhiXUPiOeoDEAzr/u8N9gLGZ6SIEio3yQ=;
	h=To:Subject:From:Date:From;
	b=k91gqON291iostY6+wRqEABGLldvYLWJYID6GnCk3wVlZik6ZwykJbZottipfQbkR
	 Qp9hg6EfClQPNR7i9/j9vdMPtB2szL3HgHBLxVZhDH/anSqCYOzARRzqqsBnZHonsD
	 tJfj11u1/QfKlhb0L1dWhImXYsKwIPcnaH+NW+tHf0trgf64pgAcLE/3PMXA1OEjki
	 rFg0CjrLqkR3ChGrP7WGyNSeiguU9cvTPPZfib4TLq0IOH56VSCwmZ7onBXj4NzxAx
	 RdbFu3xEhMgEq0jydlb2TVu4fZHaA9NBu8ODKmnsShBacvGHY5hih7RKCds/kb+s/g
	 ClWAlYv8+wfXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D42C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640763368.13453.17759162201469202167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5774d649c43d67901d8b772d5c82b832b2ce4b34a714ce06fb9132ef3f9d52
Date: Tue, 11 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786407633

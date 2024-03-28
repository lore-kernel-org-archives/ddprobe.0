Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20343380
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711661297; cv=none; b=Toocs7MId1zjHm/ZtWB+dv2n6DUeNR2upXNrn2uvZtGSxNjRyPI8p0pyElNxdBnyVjcykbqQGLeAMjxvOXNTMzdF9Y/R86S0emvcpsx5+6VOs4lRFIcFOJDgGZH2D84wRZfxgNaoHo3zh+aFl8x+bGQgsYk+YJL7iFMUs/OEPsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711661297; c=relaxed/simple;
	bh=0DZtOiQe1usUbwRWzF9yIVdff6sk/ndA0DGLNczLCsU=;
	h=To:Subject:From:Message-Id:Date; b=Ij+dWGQLSYKBMhFtO7zRp2CfYeqmrvBqmk3EKJxtJ16PyxJzNwVu6jO3qJ/DdGfT4wUa7etCYUP1MAbli80vVoK1rK8Gkj2QnLvjegWikA8RV2ojEAgruGXt04rK7APUXgiIm6ll8D7nSlbJkombj3rytkZjPyYT1Uxg2WSwqoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvT9bcl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvT9bcl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D7C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711661296;
	bh=0DZtOiQe1usUbwRWzF9yIVdff6sk/ndA0DGLNczLCsU=;
	h=To:Subject:From:Date:From;
	b=EvT9bcl4tmE6Zh93w8hEL/iylRZJ3IjBJiazqseN+4nPLIzF7zuDJmSgWK05c/XT3
	 MT0N9f/yVrQaVQFHiNSe8PeiG8ijWQswq70So0kBJ07d1fkdQMXsI6D17JZwEWliGn
	 FcFzLQxC+3KIpj3yHiKTmzfJ+sMrOMUElRtmtoMhnMIo1yDXVB619+cl5/CNlsq9qd
	 1bEhlQmVP1PXua/LYQIHaG8sXc30GjfrXnmNmWH10e3jWxDPALcRUMORN9KB6O5xER
	 gi5UepG20sXmTosMmGA8AdDP0HPQTrKJQ0VJMwYP4WSpgqkD5euaxzfWpsbkKuGj0i
	 Y/IzbbXcAZAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D14ECD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166129651.32381.8365875770982581316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552ee6f0238ec472c2ecd2501e22cad99930f1d42dc0992c020c2c0a298d6ea0
Date: Thu, 28 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711661296

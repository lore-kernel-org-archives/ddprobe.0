Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D932D322E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791664234; cv=none; b=B//VWj5vcP9v0TliJD4LHzjaWOPsuxEe/bNQBUSuGpgEygdRW/ly1O8emCPYj6OKUO+kf78BGHRI42HBfpyTy7I01RmJyNRlKjUpKzJWUqDf4wyIaUvzQU3QO2bqihwhOI6J7kayx7j5sREgyVqLGPoMe+eTSqL2440K5bHzKE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791664234; c=relaxed/simple;
	bh=UnJNQvpB3EqlJ3iaSJEba0xp2zBi2Ba14pPPFSndn2M=;
	h=To:Subject:From:Message-Id:Date; b=P6xIyndKZioJzYh2ESKcOgcJYuJgZCPp/LSc6qVjSDaLUrz4KfOBUaPmACwkRXWdlNRjnyEE1DwWjpooRTIg2n1VbeSsgyOn1JLA/xth5oK3X8jfKatlKV7XTB9NOnjFp+hGOGU8VLUSm0+XVg6mfeAM/Sc+svfcAX1SE3C+qDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm+hWxmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm+hWxmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC32C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791664233;
	bh=UnJNQvpB3EqlJ3iaSJEba0xp2zBi2Ba14pPPFSndn2M=;
	h=To:Subject:From:Date:From;
	b=Dm+hWxmftRWXe7DSeZxMVwWvNZjv6SKEflb/e8asiWZYOhcIqEmro4jQl7E3Og9Zp
	 tEHUNWBF5VonPNy0bjvZZJwxPbbamu06lfy+KSPPLGuamqzGH5naHvyB/Vgmdj1fv+
	 v2FbNpKFHSs88T7SWprskq5ubDs5xeuIzp6QGo21CqDPBIp3jvcOefuUV88+WWuQXF
	 HC8uBbDQeF9M8QQBqH9JKelXTtVgLZxn3xw8Elg1xYLfp+hCLuFE0OJRA1C5ckk0S2
	 A8LrnhUitJvdQUXmjFZzaV/RHw84XL/9/m/I+4KElfwrp0cT0m2bWsPFiy83SK/K96
	 IES7NSkSEDK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE8CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166423369.25908.2574471918791565696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d00754d546951eb0ddc3bee82026ccd05a67944bad102cb3ab132735101fee0
Date: Sat, 10 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791664233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8FF1EB19B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752338995; cv=none; b=hhV1dLbe8GKkvbd4UxKXo3ekQYKVNTex3xPmm6MsNlWkYLuGsBS9vs5/gryQoyRmtQBz1g5NDHIA4sdM/uqc5vJOmfaw7LxWja/3Mky5aiAETY+PUTViWrbZI1f5iL/tHOSbAKVX7BxHY4MIEey4XlNZuca62HUThpmu+BVOZIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752338995; c=relaxed/simple;
	bh=ryEq6HQ2lkHJRAzrlVwem7O02VcyBfvm89Mo/YVIc8o=;
	h=To:Subject:From:Message-Id:Date; b=G4H/QJVlCEN+uxruE+O8deYSmrLLis+WCt+dgbGXZ/OEuLCawtB7+qaQb94IaDTMJO4tzoWfmx7tPU4o2M/CLS5mXYx0UrbLtb+xa9itFCyHF6zh3ICM1MytvdyuHWDKo610GqIwyN2j12T45XQwsWjqhGGihOPA5l+i+R/k3gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N683Oi1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N683Oi1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752338993;
	bh=ryEq6HQ2lkHJRAzrlVwem7O02VcyBfvm89Mo/YVIc8o=;
	h=To:Subject:From:Date:From;
	b=N683Oi1fWJ1wglVXEjiIp2NE0+d+pxM5l//9z86GX6jbdCxMzFQsklcitMs6coBKc
	 sJRMP5hxC8GSTfAmI8SMe0KRLHWnFaL9Bj1O04zOV7XdJaqV34FfXGDW0NQN5KGXBd
	 0Iy+pj0vvqTG81EIU3CAqYlEAihPc3SJfHOAxga6msI8K+Dags3FmTNjxdJkv2oalu
	 DsR2wBWEjyUtzopYw09bd59fcdzv2fEnABkyk58hvWY+v29LUM5TUm7wK24/Y0QqQl
	 vVgiLZDawBerVFGcjrGpXJjO2ieicCVgMvlI4t5ik+5exCQDXzhx1dTlUCaPUoH6sm
	 OkyqjFE0Mixew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EDC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233899358.2329.14879860123607222050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8025259e10fd619ccf9e5a8594429ac5e3fe2fa448538c7b877224c32c9c1f73
Date: Sat, 12 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752338993

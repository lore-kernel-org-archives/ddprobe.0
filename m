Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DF61A3150
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748893794; cv=none; b=uPA5pAbeb2yUvly9Q/a88mHbOKioeAwGdDXWIuZpDaqX9BBdeCmd3apEypNhr9l+jNCPnGqYz+vvg9IR/TvOlYZFobgDFcoJXTercUs2/LNweKTMxZOytRTH7vv9nlfR/9HgeKlZ3DeCucXC9HxToFG0Vv9hFywvAk/0ZDO782k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748893794; c=relaxed/simple;
	bh=mXhBhUkMP6TwnhMoCR9/DbLErYHxH7PQKHOALjVOysQ=;
	h=To:Subject:From:Message-Id:Date; b=dwWwIhs7XYHQ/vG0FX+qBo3AmdMXAG9deuU4eBSoaNKsnNcA1vBKALAGmdFboT5eWvCoUYyKaJQ6VuUF6uXoirT4WyEdAmYu0a64UHB2CuUutt0880o6527JD1AAb5SFGlct2Jw2NheF0FckIdNVRlZxPwx2CAb/s7I8Q5Qfr80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA7kF/VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA7kF/VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3288C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748893793;
	bh=mXhBhUkMP6TwnhMoCR9/DbLErYHxH7PQKHOALjVOysQ=;
	h=To:Subject:From:Date:From;
	b=CA7kF/VGdzum7VAuhFVFrrcdJlFeVgxVHF+3CEeDFiOChVLlALuEGIZ3Yey/wUVcY
	 m/SHoUprKbfCPHZUXRsrwxvH2YoNKTwA2QA4gPvHYZLbQ4/IOh7zZoHYxxP00u2zCN
	 tEtIqY/++eIO1CNbQnyzFlJH0+9EOajP+T4rkXBfqM+vva6oM3cnok0zCOcVTyWPsI
	 dNzyo4KBCboxZtxz0bDhFgxMbCeP63zDCcyIfhLN859n2h65Nfl8gKyASqf8T9uOl7
	 PrHnb+3lCX4VUbQ3vvoD9WRxEdsAFOQ3MGrIu97OWUuMg5egg9X/ehVxSxKOtqKw9K
	 ocGPMJp1odGoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AADFC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889379362.32337.9649961253111759257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945d648e31bef138838c3e4f3207b10f8cecb4bfbb9c882c895442c74ab85654
Date: Mon, 02 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748893793

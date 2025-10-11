Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C321386C9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760155194; cv=none; b=UOeEjckpnfDp6t32zVfTTKENkDBTOwlqCuI1hSdSoUinkJRLl/WT0UXWBiN7+rduTmBNjLRdronvphfCDBU5w2D5CajBjGJC7IuCgH+cLFromRTOw5z05L7ugxX1y9VLAzFK9d1stRi8qYm80DWsA0X7Ga+BsOg51t8g/nt3mkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760155194; c=relaxed/simple;
	bh=In2ph5VG0BnAaqiLcNlXiux16nuMXf4Jp9JyZ7NH3pY=;
	h=To:Subject:From:Message-Id:Date; b=AnzYNXTo0D1BbHV0JM0gSVL0HEl4DHKOPN1+P75Q/H27ukc/rY/wgclfpNc1VGJkmuXWiVXqPf3GUrqUBPH/morH2Pb3l5qUzPwBSWEo2j4Vd8if+7tjv4in3dtMtDapPz+yhwoVxn/rZvY/QuqPqyPkvbfjUCfmHacyvJawdkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGMZDKey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGMZDKey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FAC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760155193;
	bh=In2ph5VG0BnAaqiLcNlXiux16nuMXf4Jp9JyZ7NH3pY=;
	h=To:Subject:From:Date:From;
	b=OGMZDKeyJ4BvcUGXRssWMwIw4QE2GbICn8T37NZbLB2S1fBcF5np2ta9RJGYsM/2N
	 uYM3+50/gyUh+EoeJro+A2vNq1PqX3iBm6/lWB3uZ/LfULB3Q8NIIElkapiFzVEM2B
	 xG8cHTlSQWdiuWhenL/o1QW5lO80JFrsyshGnNHFRuMq7MZi4FqaRNJJZuWUMl1ek2
	 2EYasBxuyu6n7dKbCJFntBXCcExOFW74yxE96bis7RPp0MOvKreK3kk9h49YBu819A
	 mse6v3aG7q2Hwwx4KdUwP52VWrOIhQMDyz1H57pBOyHdWDdh/s2tOygso28rX1cnjn
	 XuHmc+taXdbDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95164CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015519357.17784.5738199239255600433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c698818bb0d13f8e6e96274df08ba0d3302a7276d107a0a9eace2a50df212d
Date: Sat, 11 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760155193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197A92B9DB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721997954; cv=none; b=dVJ5SMVxcYsWTUQvs2BHl976CHZNx/ASkDdpL8W7QRdIhddbVmCOk1jT76oJkuuPVnhq/2zmyaBGtBXvjClaQtXCxDtOj8sqPjv8XStsrMVOki6jPTWbPV5lWlkiRtbC8p8K+OjDaGAZCYrczykIGHpTd1CFEiAeL9Kf7sCnSU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721997954; c=relaxed/simple;
	bh=kgS8TcObyk9BAggSTeVBm4ElPx789FyUGoWTodJeWpo=;
	h=To:Subject:From:Message-Id:Date; b=P8tDORpeaDhZOM7W/1Cz8wWOttZtphqvfM1y4mAxHis8DbbOu521lFhYk5RyuUPXJRlkTWe2XN2KeEBLcRcA+xCPYjogY5giVknDjkzQAGcC8jAHq06r/BePo3Nfmx7xkmNqGcs97YlwjATAP8s6id/l5SAmd8b7tA/XtcnaWYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcYHgcMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcYHgcMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E6C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721997953;
	bh=kgS8TcObyk9BAggSTeVBm4ElPx789FyUGoWTodJeWpo=;
	h=To:Subject:From:Date:From;
	b=HcYHgcMuMZLjncuZ2uMWfx1AbGdVr1wcqecbMcOK84jELghowMMmkidT3A9dc5jRH
	 KQrOK7jAOmFMaPC9ljupccR68zKTxoi8h0bIkVNq2OoK8WUKdtfdsyVK+4lLGkhN3T
	 gayFFtitCl3YLHWuSrL56rk+jjq+8P7Udl9o8jP+NP5YwDarNr+1Xxba6dJIuXxAQF
	 BOYeJ64ZwmSAVbkmV3MqlMlk31+eoH9SYph1dUi0VPYfigAylPvuBlkpFCjtrA5fYZ
	 ILXvKn1Ge/2DSHjTkjT9RGyINR5S4kjopZNRyzk7tBUrAMxqvwjUxH1s7ElZPklK8T
	 aFxe0lodW+poA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7CC3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199795360.29115.12799599678626864308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04677bde5cd06f49fbca4bf78f359a39cccb96dcf2402f9bd30660e56fe7e78e
Date: Fri, 26 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721997953

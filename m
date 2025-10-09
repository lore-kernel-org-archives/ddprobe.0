Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2739C1E492A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759993794; cv=none; b=N2syfYRwUZjchNo0hPx7CXl4WpPQJdzn/TGgU4TIHFP9jmq6sFkamJed25XHAqx3k183cOfRfgMzfosjMYgaw3EUKayNII1MG4hPXPvDPXcPT8YPtAunQPVOG5/tZqKb7tWUupCE/dyuGbHZWMpc1qpU/78CTswH/1TuZrywUF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759993794; c=relaxed/simple;
	bh=U0f8fARhY6Q/aGPxz/CSNuF7M1ZYdjU4yfjCzZMSdCg=;
	h=To:Subject:From:Message-Id:Date; b=ZZ5XsWKiMg5Y1uyNvXAIcC57TKBrCXhKUtwjQo57yGUwJ/7kCNWIyTP7b80EFKUM1OSp5s/a8yVebooG+tEC2O/kmq8Y2gp9iPdhDIuF+68T/gmYh7Wvm6vezKey4HmCv47e7VWAqXevEhfA4mRrbJJ6Pp5yxx6dhYPYCX8UleY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwtPtbNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwtPtbNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB2C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759993793;
	bh=U0f8fARhY6Q/aGPxz/CSNuF7M1ZYdjU4yfjCzZMSdCg=;
	h=To:Subject:From:Date:From;
	b=DwtPtbNYMkbmeEzS64mGcfxdu+VRiaX0fHdgLSe+HnEKFC8V4Ton5/QcGafb6zAFT
	 3DHNpLmcd+u0cGF+mkGepdhKhXI1lvpqMEBd2guzC9yQV+QvbDrZLieNAi2Yh/Cb9k
	 Xfi/fmmP8195ajVZVPPYHa2a7GcPPODBWtZiEYlgM46KfIMmPxh+6RfOt9OHxMGp7i
	 gcAXh8FVRFASRItUKn41JEcfw+qYQCvUyqjrgNN+zus0SpILIPWvqnBxDt03laWY7q
	 NCB7bbCX/NqsaLIjgPfu6LSdrm0lPlYjHROB6IxdnHLnf5rapjelZX5xAz/XhMe5Ie
	 jXBHdlnJ5z5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6FCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999379358.24167.16162900696327380584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd533d4879005371863810ff2b66d6385ddf1a93cff60029f64d8b07b292995
Date: Thu, 09 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759993793

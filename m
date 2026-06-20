Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCFC176FB1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781964994; cv=none; b=Ju8j3GiRFg2zM25vRPAeUE1TgIcbPP3cOpUCxE3nOxw9HF73Hy4evnneWSYvoWXZCDT4jXhh1WOgmhuycEQRtqa8vO/aRQdiJRE6jnPHPiFQL0EmB2SA3CXq2DSNlEHVhokpYStQBFamoiTP6WRV3OWYklF20dJlOwdsIgXw4/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781964994; c=relaxed/simple;
	bh=jfIm1oiCA5nLcmnnvqSBKrvR/MfwkLPB5nxQhxi/3xU=;
	h=To:Subject:From:Message-Id:Date; b=himwDriE/lBrPzJmDcMtFd3fn3ZLSboiO7gOchX6oQnhwpTv5PJORR3pX7unncxYr6rT+/ra7JoHMIvz5iHhkOt/7KxEsjunGczjectO9q/UQXMWXtq1SVd8zNoydC1p5OzVKbODGetMLQAXJntNyAdqxGrXgDYpNHIsAE23YfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Khn1TP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Khn1TP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F27C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781964993;
	bh=jfIm1oiCA5nLcmnnvqSBKrvR/MfwkLPB5nxQhxi/3xU=;
	h=To:Subject:From:Date:From;
	b=h8Khn1TPyMFOO/xc3myAwOJXrKptbWuy00EBm7hY4M17hbqf3OCWacaqE353gqqVg
	 XHu6zz5cSj7EewUi2Xq1pukq5TOnhFitYy+QkZF+daQ+OPXRucQOf6w00mftNcTBc5
	 xxyLxQJi8aJ8SxF+ATumwiSjDh1SrlIPV4XJTykqd44pY6oDsb2t56gYOwTY1PrTff
	 2diu4xc3ZHdqUWZVRDK58wKCgVU+8QXovVhOODWNYIlPbMn88OQZx3UmHGpJt+bzaU
	 3lZt+Zaa95DkxlWCYl88zazS/E9NbtrQqZvAFYV+rwU+arR2iDYimG/bwwwPCdlXn2
	 CnZz0YhebqbuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B381BCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196499370.21968.9345444054235074221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062ceb897e3b7c054a67e40420956e55415f4161f0c71052b5950191f9488d5f
Date: Sat, 20 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781964993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CD92ECEBB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769104434; cv=none; b=LCwYI12ukQRRVBTyeYRs2GEApyRKeTCuc5mBXSCOpF3v0SGZPhV1K6JvRciHQ2+Mvbza6VkYTEe9mdexp5atn4YsAc3CzYsUFo0CeffiQou/u01DQntm3rhIyI70vB6+70Slg0lpsaw3wFVnoJ1ikn7yQjT5EEZF8OEQRknP8pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769104434; c=relaxed/simple;
	bh=mDJyUmxemVKHQpuusErwy37v9YhWaaPvlG/Nj9q9vKw=;
	h=To:Subject:From:Message-Id:Date; b=Wrxo6QD2Av4XyTTilkqtKERXnhHNKNpZxF43idT6P31sL44cCqijn8GDBVi3OrHCOMXBl4cfK7HYWhHadCqk1cq8mbcwN6dDZy2OCBUIxc+sRa8rsA+hbAG4dViTOzuaTPiUPrWT5poRp1obTHGUsxDqUBRKs5q7wyGG/ZHwpFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmqYEoZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmqYEoZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A207EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769104433;
	bh=mDJyUmxemVKHQpuusErwy37v9YhWaaPvlG/Nj9q9vKw=;
	h=To:Subject:From:Date:From;
	b=JmqYEoZcYOGB0EYUgs+wBsLSg91AvHtlxnJv9Pz3C2cPfylCl0iPHunFCR/mzkTS9
	 I+NV4LWtDR2E5z4Vo+4I6poyGPLmf3f0oj8EyW7EwoIZHDZF956suj/QEr9njVcQNv
	 +oaz67Xw7iQ6BWM1gcqoqHWRbWMwvaaJn9uHkKTArekV/FPahNJPM+JsFFfWkmQsAy
	 v3Ik5mrem9Cab1nDf4UW0+LA+jddsnawHwDR7gzpxOTdOm47dQM/1Mg+s3qFbOJWad
	 7CCuIZ4XfrtVIA/oi+5AWeWzWkZH3HRPc5ssSqboG0aFZsO5v+6y90fNhv0S2kw4Tx
	 F3iyBc8SFFZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90574D489BF
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910443358.29697.1860362280837667820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5906be6d1e975f795d4c45704a8d73db878a66e7494658191f7e5885d0e765b
Date: Thu, 22 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769104433

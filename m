Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B422AE70
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760894994; cv=none; b=O9Ku1ksq0W1XooHSW1d77252z1wRScZw+RD97ww2tYydM2cVliND05H7DkM2COp+t2/tTnYFKb1X8JLw4x1fv05uftRNVB6oakerfu5p+fE+/H/aUV+CjtkF/nRCnJcfGtgDTm2IcqOdCi17/norOIBmSW2OFcwW1DJY4ERcyUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760894994; c=relaxed/simple;
	bh=th1yHqNJ0mKYJXl/rrFWc1uM6QNHzkcbbyliqJPXDCQ=;
	h=To:Subject:From:Message-Id:Date; b=f+F+dVBj/tfO1zi4XUO3XAWMjcGDH/UAqxUNpcSHOVW1cqnhWaMR5G7BsW+7yZF/r4NN7QDtnePVB9+P6u5CVAXt11/5k5Xp8vWIoyuJL+xI5MROe9Jr3MuzLk7hiPHBdvtuxDKXZUfY9hiaQvSaFUQbyo3lVhgUic5u+m6F0oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNpZBmfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNpZBmfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF28C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760894993;
	bh=th1yHqNJ0mKYJXl/rrFWc1uM6QNHzkcbbyliqJPXDCQ=;
	h=To:Subject:From:Date:From;
	b=uNpZBmfvO13UbCQYxttr5BItCC17Hd381o/3rXfJsGAzKiWmNVlS7a1StAo6j7kly
	 lEchXGTaJkng4h+7gZCzq570vr7hEIo3tcktUjoyGM1bl2GwgJK1zKSjA+qeNj/8qN
	 /Nxy9+Y8thjfeZZBwE0sKO9Ui62QbGdR1rx96FCUtfZ/hi1aQsY642GzKSrzf8C2VK
	 Tkn2itakGaI0kO+NaVYNQcFhiL39+E0scOKGOXQo7uGlG/BpJ5XpSIS4TQTv4TJ9pg
	 4D/UcdqlYkLgcLnJaydvM75HwWjJprBr7MChoYUaSCUMU739YFbb9nwpUueCDoFw3v
	 eTDK3brATMNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258DCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089499357.6292.9059795945774489297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd988c1ccafd1ca3101e40a1eacc117bd4a764a8654fd1948aba8cfdf379687b
Date: Sun, 19 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760894993

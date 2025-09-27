Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300FD5FDA7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758983996; cv=none; b=ofisC7f0kSzbWsNZFH2Gi0ddZe4TfczIibhxUHL83QvQ+Lrj9MldpfRd32nhfjIuhv33jYQywWeCkUv27L8TO8mRq7ZBHY76dypk/pHK7L+afUuVgK1WLcB6KZwJ7pPSJetIjMWFPhy7mX4GXvJuoCKqzq5tQSOKCMY9l23puGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758983996; c=relaxed/simple;
	bh=g8aXo5/pNrZBRHI7648CANm8p3gqDN95cmBpfVPKQPY=;
	h=To:Subject:From:Message-Id:Date; b=D2VKRJ0m9rBO3NHBVYXvaxDMwkClLOt41LRT34NJY8maCkA1SCq1Hn1kTnjMgunUyrh++lV3lxz0GxbkaYJ5W/smOeWKBKUMwJ1r3OSYmymEWakO6YI1KKCBgS0JPHUVB6hHuT8vWPRFncmBoITO5gl5efS64D6Izs78yZEea8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FASUUyhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FASUUyhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB601C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758983993;
	bh=g8aXo5/pNrZBRHI7648CANm8p3gqDN95cmBpfVPKQPY=;
	h=To:Subject:From:Date:From;
	b=FASUUyhl9FVVjDynajLCM9E/DlrT5Xk5O7agDVELgjPVwUYNMuyVzk2AvWlGqQTTz
	 vFhIyigqmaKXIeY1dZQHIOQWsqFwqDmkz9wTF+TzvXYJs2RQ/nKXy2Jx6nvWo2ZwCY
	 pZPVgZ+aDvj1Vy99cZcFI4OdxgHlfKvjgJ/VVWFmbVXIkB1ScuOijAiBOYdfqIqTC6
	 sg5tEou7ioSsBrfFr0mE9C/jrcjp6Hfs+Xtd9lJ4mhU4iB+KRP176j7sXviZo28Wm9
	 WT9pu9tiEHkHIDSyuYx1Dik5sVNHG0q54zd9wT2n+7xAivFlypVhQrqJ0WciSSNFhE
	 049/iMrYCu2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9365ACAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898399358.23122.16704796802701334724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e12b7a68df5a2c96e6e0cd88ed9ada25eda3b9f57088b26755f18b1ce336d1
Date: Sat, 27 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758983993

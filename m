Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040027828D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710237497; cv=none; b=AghawuSPEAqaWFUEX5WNQ0lhiun3JFVdC1eMbjy0S0AZUnZx5Halvdn/2Sr6R2wr7uFQcIP6QStReJ2B0z53SlQBDOM4VNKSBh9WlsDrdUp94pyr7ph5p00VvV3XRkPgk7Mukst9ewHCJ3pKC0/q4y5HZVLRPNQInQq5yo4X7+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710237497; c=relaxed/simple;
	bh=SBOhdbzjAxSLE7/uzszyDBYroRm8ZebJfkUyZ/Hq60U=;
	h=To:Subject:From:Message-Id:Date; b=LTxXKmdLwbwVz4NKpIKRiZShhe7lhijPZk2TUNBiFK7PHk4vTgsYughaejpbAQQurSk1EgoDjaryJj4gqJ/UqiKrfisnIp4duz/VzBXBWaQUnGXx4aY64fp71GQXQ+emKs412pskapzHW6zmsjtKg+vgnbnjSUBoRaQR56wiLWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpDSm6FX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpDSm6FX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0F2C433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710237496;
	bh=SBOhdbzjAxSLE7/uzszyDBYroRm8ZebJfkUyZ/Hq60U=;
	h=To:Subject:From:Date:From;
	b=CpDSm6FXo0af5Kms9O+J57hgssKJdkuRbKSC7/U+e6P3VFNoyjMUsgb0I1hCPf1x7
	 19fykJuotdecRZx2+D0XXqY4CySWhCSI2D3ZrcAeqUqlm8x/862iwl+1uCDGbGC42L
	 crY+xW4iOv+Et+N8LIIefUgcJG7gExiTCedftf5Kzhq5z+u7DvkDPs3mk9y8kjcFxm
	 +YZc0W4HeWOalXhfCXXG98g/F35lbw9XO3ljCvlMW9ljpDgK/lYx9yHAAfw1cuD89l
	 3Coh5jUtQVWAeWsjquET25cmz69Vt8egqob4lkLcqPpCSl26q0e2+H5kI7QC10a/pJ
	 RqQ6fJrhwV1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC40C54E66
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171023749643.23344.10706365749813999895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88eeb97b09e156d4fe52dcd99c4abd716ec99c858dbee56e31ad42378a2d5b39
Date: Tue, 12 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710237496

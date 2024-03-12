Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4101E529
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710275897; cv=none; b=lVAE02xJdEH0TyOWwZI2QPrTdB7uHtS6fZwFTjgIz5TlPrTRkjJmw+2lZiDYS06CUwQkrxJZ6dUwc6zfh1wO2HMXLxL6WNlRCEHxB1lS0t8AhrrDpeA0wwiZJGnXa+kXB39xCbttKUL31A0K5WsJeaUoYbeGJo9GWfVc13c1Uis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710275897; c=relaxed/simple;
	bh=ctcOWc8y+HvB+CSedkextTPw6VH+qtzKoYGTfetbCvw=;
	h=To:Subject:From:Message-Id:Date; b=E3vp9OCmYnKtkYZCWnhGuYrLdOSpai7uEATLw+kiH8HnPbmU2Qs5C5zfMnxeqFZRtx554rf3Zw2J78Tho4aaO1zC95zMB4BX6hhuxdSOpPbEW4SK6zlcf04mGekDt2k7Gs6affY+IiF/y5Csg5z0/hAch5BGFhd2UDG7qsTeoxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBMIin91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBMIin91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7885AC433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710275896;
	bh=ctcOWc8y+HvB+CSedkextTPw6VH+qtzKoYGTfetbCvw=;
	h=To:Subject:From:Date:From;
	b=nBMIin91ODEwwBPO10ThR3kTarPqvUnbCrTsezHdOoXeHNtA63Cx0gy2NUJiQJmsf
	 QUz0x8hqFG0sJdqeb/+kWyMiZQFNZaO5fg8fKmLthezrsvUZUXBT5wnuMUwyOCoQkU
	 cCfdgMuB9Be4D8MXXzsT74OEQboCYX07faXguR7/FepcBADErmG7NvA0SVfMQwRc/E
	 4UgCGzdfvgPsLzAANXXKP9ekfSLTgY+nyRHaTvxCbUOtt2GPh9f8BZO7ODoaabeVf5
	 6y1sqA5eHUPCA0Aq2GKjR7pLbrukMTDFm/7Hbloe18/Dqk3Kexg5aEDhGQR1btYXml
	 nqIRoquVJP1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F18BC54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171027589638.29802.16921054887470114354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a0dc0d9f5118f33b68bce2b8bca0252a0f6efa2dfe6ebd7fc7560a0ed07b9a
Date: Tue, 12 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710275896

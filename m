Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C0D2CCC9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749617394; cv=none; b=AFCbg3pORdSKcPTlf8M9DPEL34HTYIEWHhmO0hK/j8w6v0Mu9CmNAgEkShMicFRjkN560/65BU9UCFNv47uYQ2sOFagGFCUKdC7rcWM9gpiE83L7Z/9UpZKECxpnJkMcCJEIb0WBuSFBooy6fqkJYJo+L0j+UHzK2MWcPegmqg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749617394; c=relaxed/simple;
	bh=pb++Eds1NRTrO0asWezksUin9GZ2cC60nGIJFjX7IGI=;
	h=To:Subject:From:Message-Id:Date; b=MIwCZTh6yMzpeZNCNISZbFjMKy4b+EUv251iIYrMoSOdb7jSOmC5mZ+9ArcU8gxqdtgbfvhz4l6CZeDcmsEzaBLSvjK3jgMe6tJ8lBeKzToEZFvxjnDx8CiNPdp6nnsjUV52WLrLGhnvWOH6MSTZPO50JsbJWb0gxd6zhqI4C44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjXcgEUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjXcgEUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B72C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749617393;
	bh=pb++Eds1NRTrO0asWezksUin9GZ2cC60nGIJFjX7IGI=;
	h=To:Subject:From:Date:From;
	b=hjXcgEUNKLrSIOFIw6qCpEwSnnjwbpcTrD5ppbJ1OO6K/yjhilE7PdR6ByCu8IhML
	 Iz0nHfjnjcdzi0H5TEPn2hC02lprUTb0D3rIrE+VOTwnQ2a6yBu03nUcapbShwdcFA
	 V1uva+o1lKbNQrMnC910qO7RVH/lkeUpdHwoV7lD9mL5FRc6ide4w2EgChrPneFJZA
	 7hddyU1uvpLZcEgG68Ophy5OkcXY1x/647nXwVZjUjiZq2UC3gAmWpsGL5T4kLSWvY
	 CUfvjmgipvLCHIZSGivCdsubLA3ITFwLPtl5zAO4FF3Db770uWtMftOMK1CCHKtgnT
	 9lCjAGn8KS1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D664C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961739363.27111.338401723550559757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9820aa11822fe9b7179485d642c566ead0bb1475738b62086d15c230511c2665
Date: Wed, 11 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749617393

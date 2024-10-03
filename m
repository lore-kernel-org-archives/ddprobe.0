Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357FB126C12
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727941554; cv=none; b=Q5HD0UwZhXk4eCwJCTWH+Xc5RjAnsIyyRiYEuy14SqqftxtuAEcjLwHu6pLpc6OLASV9d2lgS0FWitqLEpIwM8b+40LlfCtjwq5b6FOZHZuk1Ri22WC5VUC2+AfyM2bK+CcMKwEynkkH1JodeJSyBpOedDhYv2k1+TjER74eJQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727941554; c=relaxed/simple;
	bh=8yAbmfX07dV9P3rR2SS+drFfv6iCjVtERHg8VG6E6Rk=;
	h=To:Subject:From:Message-Id:Date; b=IJjj8F0zOI/j0A7eccYvBzTk3nlo3w79fGzZnQcXfidTNYGLi5Sx2va+sZdZEcggDY3xmCC3WkhxPJsWI11t7pj+ur7sx4f/2XukhYIeZYJQHyPr74qfqOeDKfmuZyuV0gmO65z4Za+IbC4VX/GtDx9i3AmM2NmZgYEhrQ1UOxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGBMK5fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGBMK5fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA871C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727941553;
	bh=8yAbmfX07dV9P3rR2SS+drFfv6iCjVtERHg8VG6E6Rk=;
	h=To:Subject:From:Date:From;
	b=rGBMK5fs9Tr8nDGhxkcrzQaBs8nivTd9JqMSck4ex77y2xnKqyzT9vXYdTTyuBt5/
	 Tebfm1fdDu2EHYZ1kx+vTBhpYzFZhNhZxdN7w2ZCi97qd6aSgk+j/XHEQqvvJdA5Q1
	 klz/Aqby3W8giaJdcBdPpuAglAQaCIV+2RpTJLir3/wK0/fLOKZEVst4Hs8oY3FiGr
	 sQxyAaIrbu/yJAwoXIpNBe6ZUajZ1YQ6rcIILpn9k0DHvnbFRBjbfQbsBzZ/ww2QN7
	 NVCRmiB6WlsA+znH63PWGE4JvznXumS/GwK541SBf2rH5ECz/EOv+PvYI4BpaeeD9M
	 h1YbJvcZ1LvEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CA2CF8563
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794155360.25667.16998883418504130746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b87b222be9c6afef559f5de7f69d9a82abc15122fa9effc691d8aa08fa4ffd6
Date: Thu, 03 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727941553

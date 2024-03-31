Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57614C629
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711921096; cv=none; b=rmYtZr6wWA5fgXAI2z1345FGoTOQIZCvf7diP6/gMC4a3Fa7U65h2KTFB5Swt2MlB+cU4KPjnmBdsxGDn3YkyGCFBz9DZduXCTP4TtG7fxK5VIBfzMNTY5bqsZK485w2i1D7ozhOe+JdU6uP5c7zY7fYVLoxa7Va8z5U0N47NhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711921096; c=relaxed/simple;
	bh=aiwKl6m3bX/jRADZlhRFSNPbp5f5ripyq61ttu0ehrU=;
	h=To:Subject:From:Message-Id:Date; b=oipSBrefWlF8/zVxtyoHCjYZ/OLeISEZGJgCCUL7UTgCuX2brlfUFQoF1eSyXHzfw/k5GR+ByP4dAyftslGcddewyM9hsGNDpY4ljLQHl5GcXcfsPED9nQqyXHxIfn8NnZ3dXOztHTOR70Q1kyDiWq/TlaDOd0n+HCadzR9VSZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDNE60ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDNE60ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C9EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711921096;
	bh=aiwKl6m3bX/jRADZlhRFSNPbp5f5ripyq61ttu0ehrU=;
	h=To:Subject:From:Date:From;
	b=aDNE60ib9g7qprhkmQnEYEDT6C27aScbgOoQy9VMMQDthdqtTZNW3AtFz1MJO39tm
	 RakgihtmFANS5taAmWQyZDlwTyGRn71qV4ewM59Bb0d8gNUqnkh6evPLgQGHucp4PE
	 o1hRAvoeKeOPxcdp1u4sagXIjaCMKn2MQz8PKBqdO1jTG8sWxIQxTHtJ06jA8aaWj5
	 RNR3NT23x0Vpi6ww1UB6dE2if9oR53XSN6UHgA0F9E4abZAFwA82zktdLFj1bsRX94
	 8ZOm232OHAJmKz1nZo32CDDeWUfmJD+0yXUdR+xv1R5WGvO9eQ7wyBcT9liuvfrHzC
	 hhs5aQLFMK/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66487CD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171192109638.15678.11890004280463594675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ea34ee474222329e75d61b070716de2ca464ffaf532777978a6b1fcd05fce
Date: Sun, 31 Mar 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711921096

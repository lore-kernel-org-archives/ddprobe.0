Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3162121B9CE
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752674994; cv=none; b=W9zYDyt64KEm0q17RD4D7oPwxOw54ha2/fwb8C6M/6k1aHQ/R2IJL48AJVPzbWvxzdmeLE18PahHrN/DZDArQwaxJs6VBsXBlMrqkTw4bAWgody612IU+lqEoHYtvBwkgccRrcuQ7E/8ZSAVZzmPlIQ9XewpoBqZQn6/1Bq4kXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752674994; c=relaxed/simple;
	bh=JlZ7b9IDsODr1HWscHjA/buRaglqo1EBHGF9dPLQ0gk=;
	h=To:Subject:From:Message-Id:Date; b=lgVTv5XDygzPEmPTbdrP2mii0AzD5YV5WFZlWZOxUxRCX6NtQZZM2wDUVg5l1Sy7qJZJD7bZpbilWC1N5aHBfl+VwTxfzEUXKh4hBtbCirhS1ey2TWy7JH4vCVQ10kfwHJrorepoaqmF/SCrdb7fyriImnqokwaPc2mJdcKkhN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX2NfjtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX2NfjtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F842C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752674993;
	bh=JlZ7b9IDsODr1HWscHjA/buRaglqo1EBHGF9dPLQ0gk=;
	h=To:Subject:From:Date:From;
	b=JX2NfjtBk5v3fGGOmIBugZIrgY4wWcBmSZv2H/SaOxxKvBLEmi1BYav0j/Pau4zP8
	 5gxsFIK1MJ3WqN+iCEu0ez1Fhnr1XNuTKvUOL32wGeWPQ8Xw/NmHVEc2dlrUMq4MuI
	 /jCJG1Xp99h0VCMrYGEQ2ggZJr0SZ7JLQxT9b8kBlIzRmms50jVm9wLzOZkaRC1r0w
	 oLaxpnKFsstV+OTDT9E2cjjLWX5MDwmleMixJfetrzaMD2yjmzB5sROVogoZAngClk
	 pJ2R2KlMk/FuL+TkKPXC45aQu63Rv4nKcAzYNueCqc5xk5WzA9SN+YDh8Z2LnavoIF
	 6r+T+hoJlrh3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004AC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267499358.8727.5012089416007113587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8041c0fa42bcf05ccdea7bc92b414f3dccea800cd080b01466e76f012111858a
Date: Wed, 16 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752674993

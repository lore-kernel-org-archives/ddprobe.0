Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1E11F5834
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750665594; cv=none; b=SwJ5TJmdd5UMqVXirJt31K4F6AGDSypairprESOE32iLgXyjyxU1E0FyndKMhGqLq7gPVvwE4xoLUEjVIPjYab3ZzISiG/OCJb+O7dMs4F0aS61RHNhMnntRsigRQZ2BQK+rGo2c6nSmXfraNnrWu3t0k5CmOVjsHHyhw91EpJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750665594; c=relaxed/simple;
	bh=kkaiyVf2uEsXKHZQr4OJYns49bduXQWtL2Xi7daldIM=;
	h=To:Subject:From:Message-Id:Date; b=t3McHUY0BRdsAt2bCxnV95mSWPHawvE4Z6oLvBvxoAQ1MW+UOfGjbhVn7ef6u5crIeb66GgVvcsCu/dky0B4JCHMIVJP50/7vG4vN2wsoKt1HY06o+vmlt7+JmGsz+gQ5JE9/bTF0L2eJ+eZeKQV/JpY1Re3eZnbioVqUtLeeJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiSsZo4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiSsZo4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDBFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750665593;
	bh=kkaiyVf2uEsXKHZQr4OJYns49bduXQWtL2Xi7daldIM=;
	h=To:Subject:From:Date:From;
	b=OiSsZo4TWVZTHsCl1bwhTFyhKYKQ+sB8eqQvpGarik2CgQgE6qso8SNFBt4h6XK2J
	 Qa/VhXL4VxG/rNiDBHkG/U0JrYX1akXfZ22PqLJiAHs0CyEs89L4j71+362zHHAJop
	 /rPogNngMEbf8kpGz7qJ58tB3WBdbkGhLh1t+2HuNRlv5xbczm8BIhyDdS5ruaQfCX
	 gaN580qOV1nf5woXZNQSSOtxB/Jbfe8PCCOWt25dwZWq4Zb6Nd5dAplmkFK0XmiHbl
	 jw1dEeIk80Zknb464MbfJVrJDVEvcNe4g884yE6/RVCOxLRnsoTxrDw7V9mWwF+QZM
	 6x5k75uOftbuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A4C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066559358.19048.15662063886917051216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25c9b373c83657c3eda78cc42b173beab86afb2b4003d76dd9cf363368b8a1e
Date: Mon, 23 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750665593

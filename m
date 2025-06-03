Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498F23E352
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748968194; cv=none; b=Afn2SaMO4PIYoImFcR1A8PFrdByeJ1gK/9rJUbymNwhhEbXJSee0Kh3yvHMiA7CJOWOZt6/nS2eaaV5b7a+J3Vw3PTpNcHNGJrC6vi1fuMN+5pO3D9NhCh25j1bE4TKFBf9VV+/IuRSmkXV5LxytbLM9mqBMxvf0VB7fcfVLDZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748968194; c=relaxed/simple;
	bh=4mT53LT6jUt+nbHPmGa1a5vgJYDDsI6aMFYpL3/YICw=;
	h=To:Subject:From:Message-Id:Date; b=sC9IiA1wG2KqjdIF2KIbWeUn/lJ6JcsleH+BrLn+VrWnPuwhgXzhLtdupTuHoFmY0VEQRVk02QpsGT2uV79EmtUJCHAs5rAPd4TW6Qlw6gcHfe3HzhC8pvF8JyHTz1+yT0+bCah9Vu1rnqypmP2k46+sjHa9SoewZnQmZ0ucJf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKbOAYtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKbOAYtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748968193;
	bh=4mT53LT6jUt+nbHPmGa1a5vgJYDDsI6aMFYpL3/YICw=;
	h=To:Subject:From:Date:From;
	b=GKbOAYtS54KQ2wuVKCyFLwX4xDqHIxVw5F/CRLlHb8BtqKd3wQPSLeQjpKQI20uH9
	 26fBBEBPIz8sO79eZd5iG6ku2pC7aITq24ht/l5Vu86JPuFfuIMcGNN85YSczu9WQN
	 aHy5QN/aMO0ju9xxZ25eYN6I6CAphYqKN6XCClDxhhnSs6Zwely+iMn6VCcxNk3O0X
	 /36XlkLIsh1Gd1h1aGUYsOljQ5mnpW+DhFooLmvIm0N87TrhRIPRT1lGeaIphSlLTb
	 1c+OV9Iw3atzge+dCvZIEUjqpIsm8FWinN7McUORNxS7culMsB3sUKyk2uBkORHXLq
	 p885dzCYB1aEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F156C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896819357.29349.8499368917703557896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9fa26941a2c3e7ee51bfa4673ea110f5983c71742cebaf354b884683f77295
Date: Tue, 03 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748968193

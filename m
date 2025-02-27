Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335462777E4
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740695334; cv=none; b=GumddNsxbRXTxuvlw9fTwklw6EZY3BsDkS+J7jrCjtN7HzGwoINqJKiRQpYTGHY1dEsQDLYWJ6HBhezsmHjQH/R3m0eBvHaImFfcB8WzQJSUDLU8eHf7OCHyMzP0n5GXz6uI5M+VbFhdIrLp6g5AyFcR6VZtlx5guRbeE1gw4jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740695334; c=relaxed/simple;
	bh=se5G2kQvj8yi96t2x07QWP4kuHBMPHGYCmJi+3nochk=;
	h=To:Subject:From:Message-Id:Date; b=lCjaEyYQXDkAiRiH5J7hNFUlCUOYCgxtfbdyp7d/S8jNgcGO1qsI5NHTZsObf22tfTlD9rATrPsJw2samb70Of0WFJscL0CvX20+B156GtaxBzM5zPT5L0CTnxw8jBUddXReroCjtopn3qSyhUrai5F4Veeb3fpHc1uXMYCZM0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QogOWt1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QogOWt1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740695333;
	bh=se5G2kQvj8yi96t2x07QWP4kuHBMPHGYCmJi+3nochk=;
	h=To:Subject:From:Date:From;
	b=QogOWt1gAsoiKdu1c3v8wlB6XzYjU6XyuBF+aZ2VtHteHTMy7zFdkO/3vQPHPh30J
	 8QoGOnd+mAZyMincFaz3Y4XUKbScyfK9iJvETP5tKnzbKolN+K+vaul2tFutoAQWoL
	 UeEZzZHRWuYOEvM09X6EU8qey3CQXZCG9aZSB1kbxtaSO1Tn6dgEIeEATYuMQ6onbw
	 gLKcZ/VcBxKqPyYWj8mUdk4YNI4C0fxM4Y8NSrO7kkVV5ClUQF90CjhU2rmxyLyeSQ
	 ms2ZDjF2CK4wCbtDed9rVL1owkBlg0BogWBoFlc7SrmyRIwf82zWuGCThmJAIzsio1
	 hyX2SIYeYmL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9EC197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069533360.17132.6447461366628868871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308707435c3fca84d6eb1ab683ed2fadda47502c1b8e0c0323e4ed686fd0b019
Date: Thu, 27 Feb 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740695333

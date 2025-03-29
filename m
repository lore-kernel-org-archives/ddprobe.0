Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8B35942
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743268794; cv=none; b=PX1KAcGg5rVLFcgnldTVrDf0q+7pLABUjTTXaUrwYxRAEB1/iI2RxbZVC9xxq1OzNudLOZoPdE2N4A0O/RRSt6p+8+CK9b1KBvNMVXFlZZYYmNBya9DVCVujj5uXAlCV8jAeTLZ7q0jPeWaNq6+71LkJJvM89Fmt/mq1WPJS9hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743268794; c=relaxed/simple;
	bh=vtasZXvCXMvJKMknI9YztmIJDoLuuRXs5oHyIInq3o4=;
	h=To:Subject:From:Message-Id:Date; b=W2EP0icLMSuklLbcab7dMHPQA4qF9SfcCDIJY0QuTcWQx1wIfJcOxbrFqd4p6KLmamz2HnOwFtSjvstbL6/TzRZ7SihLaUVk8jBRmIgb2qUkHW9crb3ebJYKTbThtnAjrjo1nCScQyqT54sAljvzm1dS+b2wgw5dWXxrvI55XWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU58m9wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU58m9wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5893C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743268793;
	bh=vtasZXvCXMvJKMknI9YztmIJDoLuuRXs5oHyIInq3o4=;
	h=To:Subject:From:Date:From;
	b=gU58m9wpbo/Pa/WWE5SkfrAkqPcJBDeg2/7KaZ0EDvLpBT1P6ddGp6t85vDX7zy3S
	 Szv/iJvNRj4pX6Ti402Ryt6r5MEEhHzgzYS8XsX72mnWw27EwXwp33TPh8C4jrmEw1
	 LoHg98dp5V3ykEK0hJvZ1cdZpa5/ueALC/S7R3DapqMFKz6uX6JB1KHqqxoD7sFYyL
	 5PZeHPaafJIBJFh4I2qcklKuyVMRHt1o0ZM2da3/hIbfaSp9zicEf74Dh3txnAWL1I
	 O90SNOclYXnY+DS34Yye2/7cz6KExcrfHywgt05A9jfZU3m3WkEarTgNmemPNfPp6Q
	 DAiZz2QhV8R4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C1C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326879358.24573.15266383426321028296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbfeeb5416a55151cb763d25aa9aafe764ada01783312bf2fbc67033cde5093
Date: Sat, 29 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743268793

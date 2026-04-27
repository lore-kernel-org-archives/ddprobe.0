Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CBF386C36
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777279654; cv=none; b=hC469G8mpmktpko/55ddIBqbBsrOGe9Dnp3dmGNjybCj+1ZhAZQTt+Snh/eivuCyh2CEoMZZb4BDjORACoAl6UH+mXi5SDnwM6mHb8CuMAqcJZd8+V2+sjfemB7ne6/OCafO7ct9Tsm42a+nW1DJFYb5D6RnmY0DCuPeR2UOxFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777279654; c=relaxed/simple;
	bh=wm7xIlEUwj7TYMiaGATKZJPtZsSefzYvUIkdkduT0aE=;
	h=To:Subject:From:Message-Id:Date; b=XCytBAdvRlqIX7641PD2BjSzeYzO4idJ/JPjJSgoX5KDrEoVEv1/Y+nc7HB8+SxePEcHe7ytj+wub57p7ZxxAQtjGXvwGG9gS9LSntAFgh448WvGMyuFIj+QEtIqdYJmX0Z1DHGi6oZHia9ZIX1oDAp0FA8fRFIDgRBqcajDiNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkKw7d/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkKw7d/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84BFC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777279653;
	bh=wm7xIlEUwj7TYMiaGATKZJPtZsSefzYvUIkdkduT0aE=;
	h=To:Subject:From:Date:From;
	b=mkKw7d/H0J4S1flQ8D8W2IqquqnOStM9CmM/ccWNJJnxfF2/hRvHTUcLS9ZQ7VFY/
	 WWs4/BIqyMM2wdwyp9KO1D2j4+GfddZM/Ew4JbS+ebKvhvXIL6vCkt5aflQSEzUPMD
	 LyfJ+GGcZp5ul/RwhIhsKWa4j/AGG9qqzwMmzHG8wxfUE55qVZAIMYvvJ7fB5VOoNJ
	 VIceBA9k7jo10qIecyJkvYKdCiUheY4jN40D+I+XjgCGtpozNAhL/6d+iE6kuvzzNL
	 CoaGtfskB/E/Dzdy9Dl5OcyWuvEvqGGOz3rXQTq7F7N6Y6gtkfcFcBRCVQPxS0jbJR
	 6CFNhhYW8Y18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC5FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727965368.8232.13297912954302767572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba27c2ddfd0af4a9c7dd2691ebd762b7c3971721d703cb636f09b9efd72eeab
Date: Mon, 27 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777279653

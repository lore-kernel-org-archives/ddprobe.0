Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489AF800
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760193594; cv=none; b=iZWCYBRznvuEiWze1bA9LUhjfxm0C8woCIzzfUh6V3hDoPd7UfGFKzWyTgTIvvSAS9JAu3l3wnen7pSetwEUvQPJcLzMv+AmZSuHXLeoDJUACkEl/lSTVX8X24g+1Bi93n+8xIVQxWwMbP+9U/FMDoQU74IVXnpXNulNvR1oDjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760193594; c=relaxed/simple;
	bh=sH2dKNb2+th9cM1QZQoC23rHGeDOf4v1xGOCr4InXOg=;
	h=To:Subject:From:Message-Id:Date; b=f3oWhriCTZvMEwzGfz4grN2pt0LC67yoY+psWWJVIYS8qrJ29GnfvV451nDaDyPGPHPd7868K0eDGpOlBO+fhEAH9JVqVJqp2T47MpY8yRIICOiGTdSJrIB64lcV8mUyFj0cVl6t2F339BjuDFy0Luy5yLeDHh1nRtwMr8vYi7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxIosEGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxIosEGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F83C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760193593;
	bh=sH2dKNb2+th9cM1QZQoC23rHGeDOf4v1xGOCr4InXOg=;
	h=To:Subject:From:Date:From;
	b=TxIosEGE+Ym83JdvT5bdBRTHvpORuabekSQrqxbeyDDCpy0LMJUG4yYG32P+boHnM
	 qJCZi4Dw1kV+mb74Z/0js2aC+RrSAIUV77jBErm9MUbgJJYinYBFl3WL9nEfyI+CMq
	 gtZPNkq5RHQzAv1V8BA/NFSQ7JtrSnaBB17A8Mfa1sqnQYyfeAlD/gsCXsTy0faDeL
	 c3GvtkXCAEEdoojGYVMDZOezNZ1DL+caAsJKa7CJb4Yb63xepxRcGrr2fCWvM0HB0O
	 al3i8aYgwxHXwG2/VvmOqzFbN3wlPEjcS9bBDg4KNG8PCfsWaSrP4WjkL3n8YWC5Q5
	 9x71/YzfSZDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92437CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019359358.28282.13137974640579094244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7179d1842b9d3714e62639ecfe4a875e6d805956bf53012a3a97bb7186f25c17
Date: Sat, 11 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760193593

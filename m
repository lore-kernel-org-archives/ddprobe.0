Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1968B30594A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760462394; cv=none; b=ga6sfBeEjSJFmDuTjO63409Uo7OWD/AouV5jvbCh5ggk+AP4ZISVGqcmGWwmKKfhzumT1bENqQ4bF7p1C5B9ZB23qAXm+7xcRheGKqz/2fW+3RNXwmlii/Y/NHYvwvjvjy6WNswhyN+AmdbuMIVHbZP+P/Z+GbNKXEFU/EvVxV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760462394; c=relaxed/simple;
	bh=vl3R8oYgEmBUjweUi2kD2NGlX17rVXZjcHa/KhKU/CE=;
	h=To:Subject:From:Message-Id:Date; b=YHZ2lrZ+jy5PTZFsYjvDQiEnjJ5p6x5AYZoAq1FKSe6v+WM72h3fAZjsoNhrRiJLGeWbo1kloamib4onmAKIdQ1J3etf+ddSlJLk1cPgPQXMc8zB1skhaZ3ve/9BBxfZIClSMh7JxiWVzoxZFCugUlhM4nLc5AzfuagRTuf7tus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6W41AlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6W41AlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271AC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760462393;
	bh=vl3R8oYgEmBUjweUi2kD2NGlX17rVXZjcHa/KhKU/CE=;
	h=To:Subject:From:Date:From;
	b=L6W41AlWbZRJEcrBzm8AXIZBZ4ICLk7M/E1OqjZ2HcnVAfeOQDSKSlnNpAlKO/tLm
	 g3yriLDIc1lDK6RWN9Dc1fU0SYZStBMH79tC3SLRm0S4hLBzrXD+DM1O2v7pisJsSI
	 T0FXaNMomvTpiSBy4ScI0wah7fw2E6h8N5/1HY1+UQwy0dd7iNDOrfO0HlamKFaI+E
	 f2qlnZpwuFEuge4txtx1hyl5rTFITHcsIn5eItr+mOPsAQpzFt4mRitM7xoEZcYnMm
	 iCsSV0EGMXhwCQnuBe65grQRNbDddPDvD0k3m6yIdlQ33AIZkrheZv1QRGzXgzPeBS
	 egHcAREBPlBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048BCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046239358.6601.15542224970191143498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbecb67e0da48baba0152a7b3c380fb893f0fe798ae481b784baaf6997a93e4
Date: Tue, 14 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760462393

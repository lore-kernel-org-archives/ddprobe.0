Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0541A3177
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747738194; cv=none; b=byoSCqxWjUVWF3U767KCvkZvVtEHG7ymDmxJVw2oRJbgpZbodRYeYfOTmKcn1JJRHNEzWUThlcziHNt9+xE8JSE8H5fTautT7OE61U0mShzVrv6fp85dhIBEI5PMx1xNcjkvudnRO9YUPtfLmbWzJKUPKL7kRb0itkFT1ATQN9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747738194; c=relaxed/simple;
	bh=Hah+gfER0cNh3P+KwcseJfOFhB0ZI/NsACogH+TpmKc=;
	h=To:Subject:From:Message-Id:Date; b=Rq0f/tnOjprCyuSuXVWarK/gFRKCaIS9thVwZKd79oggiHY4mzm6b4KsHbpDZHQaStCvQfvKaD33+7GpjWzbSwjGFIG9Bs6V3GqaFKI6/3lLWh6+C4Mw9vyhR1Z+O7BKWVq+bJkPDyRBq+/ZUE6Yj7LY5IT3uN7viBcndMJdh/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sToIrtSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sToIrtSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A003CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747738193;
	bh=Hah+gfER0cNh3P+KwcseJfOFhB0ZI/NsACogH+TpmKc=;
	h=To:Subject:From:Date:From;
	b=sToIrtSYjOthyOfFDFYESNIzTypivcVSkM+dQMzgLEmbHCaTzw99zOE+s9i1VN426
	 cO/BO8KIAtIgvJ38rarYLQGxbgsltgg0N8RYTywB5MDhoIIImRxITe4LQjQrmIJvop
	 gfjiHMnvGnIWQtBSFCJ4ePsb4fVZ+PlGmKe+BYXr4Qv26aT/iwSKmoUMAuCuxpCE4a
	 E7GxwoZIJ0elY/7GWouh08vXUUh66oZfcgKJZR29ttD7vbYcynOM82Huv2/u83z5Ub
	 63jVrUIBVfQUePpct7I5cBLshDr6DKF+K7j3pMRJRvi+b9PErrMiGukjjOVFdDFvcp
	 5cGqn+CSDqblw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1CC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773819357.22327.9341482272105265224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c752c11df03abfa8fcdef330d2d888268fd4a8e85b187d2afa0daee19ca1f2
Date: Tue, 20 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747738193

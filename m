Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EA121E0BA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765241574; cv=none; b=CSRrPqZGm8/rHt4vstdDd5a6VxqClbra+5mDGksAUQ+WhXUi9sOTmG0uyN637B405kEK30lnWWTpBkD6vS8OqmG5/TR41MFHu3I8/U7yT9lX92MQUehpsJM2hUPE0WE5H1BwRH14Xm28qgI3eIyjUeI0gax+pJs8QmXGG+migAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765241574; c=relaxed/simple;
	bh=rfvQKu7p5NzH+DaaxM0L+oI/DN0U6dergriraHskAc0=;
	h=To:Subject:From:Message-Id:Date; b=lAFOdst9xuwayjU+5JSzRKEoLp7gAsv7Cnu/zR2DnrlFlaY888FlfWmlRPRyZ/wZEsAW0fvzoHE8bwN+KOSsq48u4N8a7NheySFBUNCtDPVJO/KK7w7hQpRLUuZ0PRMCSiIg0Ylc3D/kB4rZS/sbPj4TsyO8cgFiwDr/8FC1WhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8ZHWkDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8ZHWkDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765241573;
	bh=rfvQKu7p5NzH+DaaxM0L+oI/DN0U6dergriraHskAc0=;
	h=To:Subject:From:Date:From;
	b=a8ZHWkDkxZcAhMTrodSkidiBIXFR2ummkLQN0uuGh8QbMI74983TYMEW1Dg1TiTNK
	 PDFEV6RJ3/E1hD6mPod3bHAE/Azmxps1Lg0g1tKh7McKx562xi7DIOU7cv/1AFmK+J
	 vcEOmaJACWMt+azqKWfd9WRDvNB3EjnZCgTldFnW0VBN/dVC4JO8KLAV1llcDAR3pW
	 9+yexjQjCJYn5BW0guxP4b40hyZGpdqvTD6VLqFK0O3fLu6n0Sz92CP8eJRPuqsmC5
	 4U1uvL34qkeIUpQT/UuNaAf2UkUYjbJRYcaMAvn0CL/NjBQfOi6sGS6RtnPL+Rma+I
	 IHPJ/R86mz7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3DD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524157358.16265.9910732952953106095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c3e233643c96208c262ff14e02c7b4d8a4a0818205280db0941e7cf5ae831c
Date: Tue, 09 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765241573

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E23421A444
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757240994; cv=none; b=umyy9pQIVn7jAeOiIchfY+I4SPWF21ShnkPPYk68KKGi7HQSPHO2QPtSoK2ZrCxW1D07ptDJLQrc8dORxA/gB7v0RcynH7tFfonPkud/hwj2ZEHcJoF47vO60GGSsw6F+Swx9+hDvIV6RHs41ht4o3KcGuo+m+f8MfO3Vl+TmOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757240994; c=relaxed/simple;
	bh=jew7Dl2k8YyYDBymN+97BFdwdJsXhJaDo75OCNZik88=;
	h=To:Subject:From:Message-Id:Date; b=DsPw2V2Q4+5/OamfRk6Tw5RyE63qkSagCohWI5ESjQBZ2ZvwAUHDiSmicFZ0yh3SgKMlnpSl4iCixUzsPEArFhyjQt+zDh0MpWU9sSxa3iVW+o00Ar21dCR01Mnm8neiqJYrD6NNSijCV1WNiob4W/IlP/G8GlfPpUuAu17sya0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnYj/6Jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnYj/6Jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757240993;
	bh=jew7Dl2k8YyYDBymN+97BFdwdJsXhJaDo75OCNZik88=;
	h=To:Subject:From:Date:From;
	b=OnYj/6JwVb8JwRqVwtwTGtMyoqp0RP9Vno3n8scW3wJK7JmkJBHvM539qwlS0/Jy7
	 8iLruqqs03zgAKoogDgaVaWfsvlt6n5J1chP1FLlJLscr7VVUlw0Inwjs67VWVAqBw
	 ZHiLPAlfQOJmgPhbSERZZ8WMSwGBfRfV2339HbjcJOcYYO0K1jas9OKTOHNCqsg2Iv
	 ZNhj+xCjvmKcJ4Wp3UI//NG1Vx4K2wMLFbVA5xhfVBK7vkz7Jrn9gu4CoDk48oaEht
	 s3RSSbjFDKtWeD2rk3pFS4wIXv8Ou3vjCnejjoNu/v9dAfM7yC+uDbAxrCGqOwbV2I
	 9R3CdlIWP3cvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B0CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724099358.15686.6535393194765752609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c1fbfe398bbbb7916e8c739201d7c37257b918cbc2822e5f3d772d29289e73
Date: Sun, 07 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757240993

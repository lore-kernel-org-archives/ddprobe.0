Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601371D432D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768345434; cv=none; b=JUpw70k+ZZwGAaV/SBjMfNmCSPsf0ADp8tsXKkGIwzLFXdNw6CV9Ij3ka+u9D2+2zfR5sGlqQyC+T3SC1aGcinkaXMrLl9gSihpk0OCmveFneV2sAIdpa295Ho9zRIiD5+AXfo8PhzMWcoGuTW9hNJOv+wJrw0PekVmUvd0ozok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768345434; c=relaxed/simple;
	bh=4ChgccW7jmB6StM40VGwQgscXo9ap7oS1RBBnw9MqfI=;
	h=To:Subject:From:Message-Id:Date; b=naNdr5yropF6B8OzuFofYQmehcczeO0Ue+T3mqIwLAePKdBqkvOgdi4Ljqm6GphZrhuphFKDCiRag+JjjuhwV1vwweEMeW3WWk0HPFF59h3RH9wReIAblkcZ4/nQFUWVhXVAtUvJion4vLnROG6NmNZNpoLerwPfk2EURafg0NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SE7KX24w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SE7KX24w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD80DC2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768345433;
	bh=4ChgccW7jmB6StM40VGwQgscXo9ap7oS1RBBnw9MqfI=;
	h=To:Subject:From:Date:From;
	b=SE7KX24wl/hCgmCjmHVSRRmkJ1IrxnZs/+AINZPaCMjGVnPDc4qHsDEEUZVKBIKr3
	 ecAbbHVT30xRHbKHw0Y80EK3WEaBCKk4Y+Y4x7xW01BEf+nDj4ubY2keMYtzRVI5//
	 QRDLI81Vf9ABhclQlwt1klhJZuf/pUImKkrzzntHg1HFQa8tvUthxHwOOLDQQVxpHL
	 Sd3EJC06nqkl/4V/ERfxy5+AYC/7LIgneamIm1SbXOw6QBXmwtmlnVZN4Nk1cC+aQb
	 10j5zeWnWWySGIiu4joKFSAHVhY6yNLIFopNp4nC3V/ibhUHDeamrFwvZvTz0pxxg7
	 3qJ+4ETSX3lHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E17D31887
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834543358.5205.13321619711070993337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1575070f597b2f8ec65004568e1437a0f7863c8382780f1b5fb715739fb604
Date: Tue, 13 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768345433

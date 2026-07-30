Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2512840FD86
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785423034; cv=none; b=UeCI+uATZ5cAXThxf0RxOUrBxEAnP0euXOfPCzmYIf5XOZ19RpBYgCF2/4MGhaEjXKjYfZZq7KXuMZ+UNwSV1qewR8S3NSY/pAGyWHzd9zEov+CrEOmDFp4NCfNNXuza7pP0GN3jCvQEnwhswr6VwFxdo46FqjuH5iLWENpdc1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785423034; c=relaxed/simple;
	bh=xurrJAuToVreRBx7Fcgwot4d2cmaQjrNUyBjf2DafF8=;
	h=To:Subject:From:Message-Id:Date; b=A7pytdG9Jn9nx2ovaPFcBQpOtpbqXo92bDgFLgBFAX5xwy6TejGcMQolxylvH/6ueYHi5NGIi2P71ADkXmjcnqDzVxiTEQx7nhrqq2z18vdEFsDZjNIQKC5nIaNdEo2WFpWNTOiRZRBqMohUn8k8Ce/9wc6bQyB0IIDpO/99n9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D63urMX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D63urMX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED95C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785423033;
	bh=xurrJAuToVreRBx7Fcgwot4d2cmaQjrNUyBjf2DafF8=;
	h=To:Subject:From:Date:From;
	b=D63urMX7nVzy4pYuAMvun0Craxk2wba5uJugMdvzO2NhVJSz1uvt3Wfxhiq1M+u4/
	 IsU3UanC3QN+sFxmo5rUr44hIQmUcIZA7BrmejHuyCOoDiYbawFRM/SpBxCYAE+DRT
	 SUueVp99/3iV0ASQv86Rnv+D9HuRZauPMxFlSnS5ssnYdHbhgOlSFIZZ0N36hRvzgo
	 TkU36VofYJeXAHMoyr4yOJj4uoyvyoygOxe6r2ifd5H2l+zj+1Ok5mVhKVkc7tfIm8
	 YEsYz1NWf/T5gpVyUP5WJRZwj+pmebyW18maCLmkqIGv60J0Xx+l1QLhvUsfTzBFjm
	 jZCyvn8r76k9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC559C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542303369.28253.14729454492919184163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af7c0e083525bc3eb47bd529a37d0c2ab83fec9662e6db41969cb2cfbbbc0cd
Date: Thu, 30 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785423033

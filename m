Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A838399358
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781643394; cv=none; b=i7Xlp501MT0+704MRN0QnLt6Nc6JQ11iv1Vv+zweQudZOAGkUuYMtfsegVT4tASQwinY9G+DGAgsabMKBfBW/wtvwSd2srW2OtoxsfKgHJfcUNj5tw2LtSZQkNhKIu86DsI8hrtK0CMz5pKEg8OALmMrYML6r1U+AO+dEpyoEi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781643394; c=relaxed/simple;
	bh=c6wmKHzRFKZ1u7NOZt3RCXqvLaFLyos+Suf1MTyM8P4=;
	h=To:Subject:From:Message-Id:Date; b=KxL+eBaeTsuKuH1IiGwBQinUAlAM8vrX1CDARA+Dsja9FUQzO/gb8rtpNyt0ZUSdU/xdW759GkwXJ5sVVtPdvBOh3JDYgyxlbwUz9YFmrpZhEWkrq5lBO2cttcDb2JfH1dsSU6EWOremxHwQ9TcpAHtz2DpaP0kmVN/2748eA24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clMYDew0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clMYDew0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA89C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781643393;
	bh=c6wmKHzRFKZ1u7NOZt3RCXqvLaFLyos+Suf1MTyM8P4=;
	h=To:Subject:From:Date:From;
	b=clMYDew0G8rjQo6ZbGxXTkGhWJnGU3qN3O8OkfD1dti+dQpWR+cnVd+x0ZCKpLpwA
	 F3xFLKs4dDK8SH6SfrLp62M0mamJjjEayP5bK9JFVGSgg3GsY5EHxruHYILSZy6IRI
	 u0+Pne3N2pgODFkullfEIMTtoInJcpjH1INJQ44sfPgIZF5wqYKw0Hi6328t/Csf9z
	 afGORUbTlR9X9NS6u3CjuDrp0Mrc51idT4NopUTOJ3hbVAFMfLEFrr5jpUIdIVXwnb
	 3lR77bRXVXdoOuot6ofnqFKcmdosrKmKwrrRt6mRHGBzoR1p2t6D7IbOInjh9LjF73
	 dBSVoWip9CvPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F8ECD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164339368.12401.1737854932758417111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc68fa4ba0e3d8c54ecb8ec57c3d8a0f517f4e58c6bd3326da73972c24ebbe80
Date: Tue, 16 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781643393

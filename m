Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504DF56510A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790190634; cv=none; b=NAYAynyakDsYpOmRfjKIiEwmXrWDznM8sliVOKKMSeTnXvUAamxpAvBnNZCzGK5InnJ/bCreFWvY0l/BMPfLFhzT51byiBcVODT8SgaaP+Yeh7L3l11l5lxOWDrQHAgQNEOMCovEmuj0xaSkyCg9QYP7D89Bg+OUO3oIBToRbXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790190634; c=relaxed/simple;
	bh=QNF7vtT5rV4ueIwb8jaMUpa442SNf1TYRAZnvJ9Hvk8=;
	h=To:Subject:From:Message-Id:Date; b=Ppr4muoKuFqie9VxDmQ0N8ZDeXL+zqtPPrKEdMl4zUlb2HqBvlqzWc1jV4I6NktpakBxMaljuALzwZXg0/uL2rsqGL8783ZfA1r0LlNMQvhihqNicXRdm+SssuUohGvxsQIcQjSlxfOuLJCDdVQSqGKfZ9FqoTzvDJcBqAMr92U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7t5LjmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7t5LjmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6980C2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790190633;
	bh=QNF7vtT5rV4ueIwb8jaMUpa442SNf1TYRAZnvJ9Hvk8=;
	h=To:Subject:From:Date:From;
	b=e7t5LjmGWjxOCy/cEP6QnpwHzzcQUNsiyg689t0eWyRXE06TLED5llz7JKBzY5RaJ
	 gdQHEf0wwBqL2yyXAWQ+CC2t+s7U/6dJzeaPG+5sxIUX1QQZy02xeO4gUKNV03TdU4
	 eTNT/cjKEK9jlTChuMzbmtWT3Bf4JRI97/8vysIyoyE7iyYeV8Pd9ytIvpfBsEkf1X
	 MhqRphai/eB2Nt3pafFEdnlnCk7jSe/Ncb8S/2aPScX0ZQ1K6N6tsfXjn0re9RCKtU
	 UTRgkd60UWRZ0SsIfxY2p2I5vKHrbRTsrF9twd28eerLXgOnv33JGm1TFkNkF1UcTS
	 t441PqUaFtfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2EBC98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019063373.24754.7178140078198524356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c55b5c54b2029897b09784635ac2d3384b924ed8e5c6412d3f768043af1f7dd
Date: Wed, 23 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790190633

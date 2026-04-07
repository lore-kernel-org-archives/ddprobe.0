Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7011EA7CB
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775531134; cv=none; b=XFo/pRgVKWDgMTxTOVe4UmkUIVQVfUHzfXNUOh+kGvYzSqVNOljhSKyOktN48NHlicMpcs8sA9rHpbuPbXcWbc+yZKL34LCyN+KGwwXskXuxEhr6baiLJvDPI79izj0SwWY9L0MSWySD/a94XDbt/WO9M6+Jia+bHbxdwp2SfTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775531134; c=relaxed/simple;
	bh=NUaCN57chQ8NwXJX58dq8FiO7jklnKikvMOlRZ3U77s=;
	h=To:Subject:From:Message-Id:Date; b=PXelwxiW+Qz9zAyuW5qZmiWtuG8xVvrAnZ9sajqmQeiZGIdZESv8cC9WW4lANGZkPHUk0jyZBP+WQEYmXFeS/zaw9vAuANwlssUer1cTrSGbtUdNPtK8yAFWPFGys9GKTB7yACJei8qZ2/rjdxtxHExYrnJnM8CFKYna575QnoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlaSUXcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlaSUXcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEA2C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775531133;
	bh=NUaCN57chQ8NwXJX58dq8FiO7jklnKikvMOlRZ3U77s=;
	h=To:Subject:From:Date:From;
	b=mlaSUXcdPpEAFj5OOipRHROejFt/S5+pLV7hMbdaS/tGxht7WDr8llxjVc5ll7xhE
	 FrUQlu+96OQGBRSLPSvkl3TWaAJuts64Bl5WtE11rhl9x1pVm7DRGgPcsOn2YQIs6E
	 kACOtia7cY6YBhuK8gQ9K+9Q/dMcFvOUpo1uh0ZHTarxd9DhhGmBTBksUbaHUyproR
	 PCBrZtc0mxyhbCYmUPlGVFbOSFUkWE2gJwMyoZyvyZaUuN5Ev8H/WlCcAKREZAXEpT
	 I0lG/IxXNHRH06BbfpL3uNnZ99wkTWBmN3AxsgAsj4KNgYn8SoWMCvMfE9mn2iWfho
	 f8D5J3CN8XNwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0AFB5188
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553113368.16360.16013675578964317002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73aa3b0dd3af3b343e15133b4d585cbb07340556088846e7688333a94d475cf2
Date: Tue, 07 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775531133

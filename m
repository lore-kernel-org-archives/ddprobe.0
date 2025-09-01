Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5A82D5939
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756748394; cv=none; b=qaMVH51G454PJ4OgTjBz6aUHn2lPC/Qk3/5NmfawxPJgQO37jX8AnXlEZ2njgdfZe3VLUoPEJ9SkDFOdYdJOawnO56xYtXh3fwVbCPcNVQpqOihi6Eov7NRv6nQeZ7e03tRWCQFkpSy+WfbbdKTc+zqzwm+X0sICJlfBhr7yieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756748394; c=relaxed/simple;
	bh=qQcoOeoV0/O1ILUajHWb0jXccF9gsDvqlzYGZQp9/C0=;
	h=To:Subject:From:Message-Id:Date; b=XM3OX5T9vXrNhQVs5qq/nC9vGwvnyqOCsUQePeeGRnGP2kbnh2G/2MdfPKhkDmyDQCIu0AeAPIjsE/UhJ/E293tDYWqgNzX/rNA1I032tYY8mL2+QGYeik4RckqvqpyM9ErLm8FYCzDE/aRy3L9aexBObNzX3ltEZp1QrKaxS9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCYN2VEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCYN2VEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756748393;
	bh=qQcoOeoV0/O1ILUajHWb0jXccF9gsDvqlzYGZQp9/C0=;
	h=To:Subject:From:Date:From;
	b=XCYN2VEWU4ZMko6kTveTDgU93k6UPUr/tihSLoEkCmelDYi3DcFSSo7bUzQn2uU7U
	 lsR+60/4nn75lfijNhfDNmyygcYnX89+fv59asfHDsa8eSLSrbukyY4d7CvB0ayVCa
	 6IHs/RU7xLQL74+GmFtFHjCnpEu/yz8VPrk7y5n+waPw1AdxGd/LoLkDSAjxAg1p3r
	 OyU4bz0iNhcxnB/JsXnsTQ4kHxZWtuBraI6AreLYgapQq4ubGcVHu20UpL0mOpK9Cc
	 553FLxSMdDErTlnWwSUSFeM7kWQR+wfCRUt/ILdVxHBiEY3tHP691sXrm/GZKRZZ3w
	 iv4mBJUKqAs6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ABCA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674839357.20065.16714189224138478678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0bb475214d69adb5d1f8a1905f422520abc99c5bd7772970300aaabf16407e
Date: Mon, 01 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756748393

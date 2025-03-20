Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B908B665
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742509194; cv=none; b=h9kwjxqEA8wu7M4NGEsxYBmSzd3bXkjHl9pUmY3PtLHpg26tqk5E5TczQJADm9x5gDB0niw+VyH+6hn1KIGOaxxQS31E9jG8aGzf2TQQTukcvsvvaBl2kY30ptMU2jPMjFV/g6FPbKkh5Gbd5GcDNqFK9gi8IQ23OmbwvnRGDS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742509194; c=relaxed/simple;
	bh=VBLug3izHGNMvKqGCj8RB7XjdIwWWVRjVfunSx+1Nhs=;
	h=To:Subject:From:Message-Id:Date; b=ZFeNNuRfxndUdJ6/ZYDAsgZzdV+VVmBH3xndeMS4GrQOOl7V+te+T8KaMuJCCzVFOho/iiUTO6obvHOiezenc9HfVuveJf46/KFeILq+H3o26UlmIgEhp56i2lYpjcMRBvd0uSyRQeW1FQX7hEeuQRjtiiNSF34tVWhJM/oS6wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0hBRgQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0hBRgQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F9DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742509193;
	bh=VBLug3izHGNMvKqGCj8RB7XjdIwWWVRjVfunSx+1Nhs=;
	h=To:Subject:From:Date:From;
	b=B0hBRgQC66y1mIW/jr+dxPdEh7W+NuXLpJnld4wfeuVwKW1QE4kZEjJeosQpTClK2
	 7y3sPCfjOaYEOq1l/QlVw2ekflN1VI6ZgDBQB2PmxwmXXL7QWUXtwnA4dXWkTPa96r
	 RpHdCcpe8QnmNU8njA04dA7ntkboPei8O6AVSTssGAEKln1X9cBjCQQFpgwM5r7L2G
	 300KgLb772pgW05sxoFYkOc37rbsIK4cXVi8GbbXIoqoLb/iyMbbZqG0VHm04dT++n
	 Lf1sRCkIIii31H2nwOX4SUamT+hd/conDb3UQlZJI3LGeXI5O47IqfnlvAujUipQuL
	 NtkWKni2cGJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B4C36000
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250919360.12238.9755354251956278321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3ebbd0fd55b7a626011d1d13d70041cc1abda47210c2ceb89c1413ccfdcb03
Date: Thu, 20 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742509193

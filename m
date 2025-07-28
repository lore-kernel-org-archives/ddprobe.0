Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEA81A254E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753720194; cv=none; b=HmCLqV7Y3FpQxCg/5lyfduQV+jlV2Vh2MdhSId/g3U8HG/0eqycvEvm9/AAu15gz5s2Ljpfz6iHceD0lpWyPQHSLKmmhxRmrgmndtozi952AcXcFV74d4x7YBc6naENmsI2T+nw70JlDCLGd+qe8jI0PDSpo490EwD5ltYI6MSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753720194; c=relaxed/simple;
	bh=OwJOSNYArvF3xo2CzocIQSUsvfVVL6lDbXlvYpGMIdM=;
	h=To:Subject:From:Message-Id:Date; b=IAUr1zjCisEmaij3IbZHgY9NF6TrXz2u7S41VdOSyCOSzBaS3b7sybOYMRqnZrNRiPnYdQwSgEN+gp3B7QgLfdcAsivzhwhdbM1bxxDlaB/0vrFPj4h910IHOeGHBxayeFxNqaekEgMvPqxT/CJDeQGbz7omz02WHXjaHHmIyp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JImXSNlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JImXSNlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B71C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753720193;
	bh=OwJOSNYArvF3xo2CzocIQSUsvfVVL6lDbXlvYpGMIdM=;
	h=To:Subject:From:Date:From;
	b=JImXSNlD7nJNDxu90WuXE8EeR0EJDHjbK0OCjoRfsUoWha+MucIwhT2qggIgeENUC
	 Ka8HinSDQttmidn34qIJuPCD0+3vL7sXcTJCPIKf1HsL8zfSH+C9d4mUBkKjbKC2d6
	 Rt6w63UmK5kz12xHov1cfdRb8vVxEDLMzhJguTZxQZSuHYYeC0w6M42prnXcOf9dVF
	 XRDbAb0Q7n5uFSnedj70seS+BpGc7RxpVdvGx6zna+WzJtP9ID6ZknqKpsmFwdPFTx
	 d0xBiDVQv6S3hW+uggsP7/DAI9f/uFWzk4hZYPFEGYLDPD56nez2MtqdRNUpCVERhY
	 xFH/+ljR0MCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6FC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372019358.29292.15273320236936250503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa10eae193c69bb16161b04a1c8ae96fc9e6b1b2eda8de78cfd1575257548ef
Date: Mon, 28 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753720193

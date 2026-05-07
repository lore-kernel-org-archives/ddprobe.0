Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9DE331A41
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778137054; cv=none; b=l/wNHb8rCf35LSjeoClScAhr6WrH6CEs26q3pi0zpXXRa9YF/ke1j7TCOtr6MKiEecvHwtazVOkV6Dephpin3WPlsYB2uEYzHbzZFPB/s+5wa4VDsIbXVCoPnWVFkOTH/Jkc20PS2VFU8+Jxg4m1hbjLCSPH/dJHgEafBsxwFdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778137054; c=relaxed/simple;
	bh=gBZUPzrJqmYkISlyaOmj12wCCrEvdHtKEpotTzsvKik=;
	h=To:Subject:From:Message-Id:Date; b=cx75WvymqjTMDOZcSHse4aBUpNNI4lFs8r5nbKz52C3oteejY8sOoiSQ93hQEhzeF9QWyjEO6mY7YngYHkNR/azWDteRIMtpYDipp4rd0yelwTWOf4cL2DLr9WKycgO1TeAagHL3nWdvWTTQ9O1DQWt56b/eu85Q4qcDZsSMuOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6bFhQwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6bFhQwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DA8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778137053;
	bh=gBZUPzrJqmYkISlyaOmj12wCCrEvdHtKEpotTzsvKik=;
	h=To:Subject:From:Date:From;
	b=n6bFhQwBugpp6hb9hIsiWOVBzWq8d9YIKTdundP9x2AgXahxKU3Snm8tBL2FlOMbn
	 pWRYdE9KkmL2/Qrrhj6acTjLbplZCGoJ+465kMz/LRC+frJ9ZuOscXKu6rJoY2zLZk
	 5imu8Wueouaf2UArwJ6cVZ5meMx4OaDHOtXaBMWi8uWz3uW5wRx/ff+ESj5v982Od2
	 WsCnz/s5OCASG6xD5fTmJlUpd/ueA3aOQu8/G2KchIOJopZKXguGQC3doKyUMKnHVy
	 GwxGGjveGb5KTghX25rLmHcr5roPzrDCcd+Nv/Y1OuO5j5ibVI1XmJj5YrntcwfzdX
	 Ao5XMtV2tkhdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C1ACD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813705370.20091.17440256527931556201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b689da45ce80ce2dcfdaaf2afec6d349367e7aafd5939a540c6592990b720c
Date: Thu, 07 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778137053

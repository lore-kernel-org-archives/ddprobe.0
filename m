Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B9DFC1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760151594; cv=none; b=Ze7J3LXWcdqGvz1kk1chVBOhJ+yknvwHPFMjkKeAszM7b7GOgMdbaCo6zIPHCLEzXBrEwtfRYPU3/MLSUUNr5dF+WVR+duHkGj9zo6WTms2pneK01NwYGMmsHRaLdIj2ENzWt9qJzTs7SuGfoYel58pViMmS5+RJWe9MBKLfKTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760151594; c=relaxed/simple;
	bh=d6Wy/VBbR/2uAaxokbSJgOiX4R0Kah19D7EAQbCvShk=;
	h=To:Subject:From:Message-Id:Date; b=EUCUCVvkZ4nDY/F51PQbsHplIuHTambOcLNXd0pexiwk5bZu1k8pfVhnrhQrb6vbteSMnGsi+D4Q9YFqoA/g2Wflj+Mr+oEdFv/GoifniXpMJSDk688r8ZwSInMt2zHdJm8tbPq/KbX2Tds2hUSEMDXM/1CKsVQ6EMLBz72+ixw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHF5nc48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHF5nc48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760151593;
	bh=d6Wy/VBbR/2uAaxokbSJgOiX4R0Kah19D7EAQbCvShk=;
	h=To:Subject:From:Date:From;
	b=fHF5nc48/wr4zeNrTx49cXhFGhYI1czNPG1rYci0eDV4BorT+kljHR9ZfejegzuiB
	 UiDpgSKtTJ1cq94LqZR9MIrfWluitLrdr2oRvqmJZfC7V0CfpopOzAWzqQBGdKp3Se
	 8X8VE9GDxt34cl7peVvTS6BFb0O6anAPEmT9mo39KXGyL9LtaCiIJnmX4gYHRX/IG+
	 15403L7vcLHxP9mr0ExiDN4zynW/JmVBnFqNfusTmIvdn6+FH1fdnJ74ZfgoFlCHcR
	 Z/ZLVD5XY/mZAolk7Gy6M15eErqIQrGbS0sgbgI90SpPsJe1RDGToqxdG8L+9kcNrZ
	 rDXgYeqqKdX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB9CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015159357.16248.14598077892950306001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8755934e5d22041672ec7ff6f10eb39f65cbfa29a80af9cb666226d666733ed
Date: Sat, 11 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760151593

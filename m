Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CBC13B288
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736324754; cv=none; b=SiGRez7KsZoAuGqyhzfDdap3Dlyp1dbDTWq0ffg+N8aHYjwO06FfQ8SVeplEOJa2L+/5ebE3JGFccumDTHdmdYNlgEnzQ1GRQF+7HfPN+aYrxopoZ6NDgH0ABJNlaqyeu7r/T6aPDWeA6IrOx0Ub56xEpgF/Y2XmtgfJQB7dBfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736324754; c=relaxed/simple;
	bh=syvTtXmQ1OIvixq4BliE3JbRG4bWcoH5rvDLxdZL5nM=;
	h=To:Subject:From:Message-Id:Date; b=qAdgy9qsvs6pa++RfNY0UWtkFomJwxzY/L6yzBGoG8QI9pdB6Nc0MtkL48wRVmSco8VDvoLd1noESl0SF1DyphFA0RzyfthcPqFTY8YBf0ZPE1ys0UJ8IxIGVMS29LnQl2PqjgC/qN819O2nNwinKLDiStcpDzZoy2kwxSnwl3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrc1vnQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrc1vnQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE7DC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736324753;
	bh=syvTtXmQ1OIvixq4BliE3JbRG4bWcoH5rvDLxdZL5nM=;
	h=To:Subject:From:Date:From;
	b=qrc1vnQPdD8ksb0URAATzq1p/xujEv2BeTX0TJXHtsK2ahOlLGnBCCPBENjKnULT8
	 WMommeAGCjGB0PXl5TtuxzBtpnccztKEKpT4q9iUsJy/wKNOLP7CJ8PHvtaHDDGRow
	 n7eofLZ1PJEPK1qfMZtUWGWSKdAPhLX3dvowS7/mkFeSLzTEknrmChNGj7NDYrJcUn
	 ojpt5PNl0EUd+CkyEx25jY4peILshhABXv+Ql27lmOXCqRVsAzDtox60YFv/uMY4Sd
	 ONt4Nly4RR/bO/hZYPpW+s6B2YxAhQEiHdKnzO2VPG6Rz2gVLKhL7pKH1cbj9foC4J
	 kyY1BJ+Kbpxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4BE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632475360.26285.3808882671077099234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeff98f7d74581f5571d7be084532086025c8b1407bd72f0f7e51c7b92812d7
Date: Wed, 08 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736324753

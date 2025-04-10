Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E001E5B71
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744261794; cv=none; b=eLX0wnnjog4Jle78JzDjFtb2qDMNMnX92UaK/GFcJNvn/DoE5XgMT1hsQDMt+CX0unM9ZfFoQ52YzPCqXNozLncAp5EbO8+ssX/IVong4WfL5jsNo7NjF5CHlmbzGjU/8xryUkL2gSrMpedLZaKCJZYE28HI9PN96KbEqo0bkMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744261794; c=relaxed/simple;
	bh=EFZwb1SX1bVe83+x/MpZZ7U+zJ5u8w93opDiQgc4bDg=;
	h=To:Subject:From:Message-Id:Date; b=Hz4a7M6JSeLkHpdTbf1y7lC5d+IE9tciJMvEw30f5awcAvOGalPC01A1gh2fy8Bf1hPOtuosnx6LOZ2a5mv5SUUMwTNftqvB2MwWnnzKihZYafzhg04idZJVCCz6MfsuvTFk3HEu7xiRY0eBJq1QksZE62NlVDx0D7fZoBWaZbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raAN6Ipf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raAN6Ipf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B29C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744261793;
	bh=EFZwb1SX1bVe83+x/MpZZ7U+zJ5u8w93opDiQgc4bDg=;
	h=To:Subject:From:Date:From;
	b=raAN6Ipf7JaYpX89dTrmljaaxO1/pjC7EGaG715/4UhsLo4RCCH95DsN0/X5j0xyD
	 YAycWFWo11/xtpwJks1yfffKWCAKcxnDdB2uF+jetbPckltOQcrY7uq3IKggCqmtIb
	 3Im/vJ7F3I07ui95RinOImWXPCWQvgQ+FpbDCwTg0dmvPguA2yKJkj7wU2EkAYkuM7
	 k4d3sTcaTfEFFO30swQGHKbplMrXvr/4iINVxjQDlgvPLy6Zeq06F+m5cJNUsVZC/k
	 SaYx27SqxYCM6NRBwHlRXd0Q6m4d5rJglGcLR1xBODKqx0bojk07zigC8SIBHgGS6R
	 nOclRzwWh4Xeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADB7C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426179361.3309.8258931965783243786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cdf8eaf3af3c84033cbc65911791d5b22fe2487087d8de40ea62499117ad5f
Date: Thu, 10 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744261793

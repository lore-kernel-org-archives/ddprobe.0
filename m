Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3801F196
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739059554; cv=none; b=fA+08ri37NHvW85cdZfdNn1VB+F3rkG1HeSImZgBTiq3aaAZvJ30eSxwCn5/7+ir+qnoJ/W9Dtm7zYqauOCT5BRs6pkRf6l2d/Aq7fIWNno4bcgrqPP0F1GeLmT2goxvu4bwGsQQ5S9d952LVnT93Ms21IyLpt8/MxepcqgvxTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739059554; c=relaxed/simple;
	bh=1Dfa2PmzFI/Vj/zNs8QCebo91EQcrv22Kxs9PUqFLSc=;
	h=To:Subject:From:Message-Id:Date; b=Xr8IeHU0kluoPSwS49WGai4dog2GMAu4I4/gJXg5+DNwl7mqlRg5EfdxHvNWbtRfX+vf103hrdaYzSbmbaT0Mqiydv4Y3nDghnqXIAxUpX37c29dmWM83KJb5kHMfkyNhAPAr/fE4gj2vJHqAzrktd7Y4Vl/N+bsa0f5RdECAPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZlDtFyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZlDtFyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6947C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739059553;
	bh=1Dfa2PmzFI/Vj/zNs8QCebo91EQcrv22Kxs9PUqFLSc=;
	h=To:Subject:From:Date:From;
	b=PZlDtFyr6WcYvGpUqiQj1P4X3CC+5cY2pldIuv2UrmcRaVu21stHI5bK907yQzoJD
	 qnZT0GJMwheTsdSOfjropk2FuGWNBwfzzCZCQkbNnIxv7iD+B1XMzubMG0IrMqCiZH
	 vXSsKAINTzswnMB637RReLU8dErsL4TG6rSZ9uRhPY2kIiOGNc1jIM0DhldanIclgC
	 klE279XdGGV9oZ0v23mAanarT3I/UqUBDnKPxMco9w9uSzt7K9G6v45WU6vjNZaq/4
	 kBet0KZWHgG9Y6HG6I5tuQYrganBR9ZmkAH1cgNcXbKvnDmxJ/Z3DJ1t6sq7TYD52c
	 bSqDSY9OCnfJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF6C02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905955358.27137.3538801692127061907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37ffade6082165c994192f038623b384c0c0e6c488f93f4599c734e322a158b
Date: Sun, 09 Feb 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739059553

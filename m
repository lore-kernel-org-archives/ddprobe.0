Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B433062
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958334; cv=none; b=j5FjRni9R5CiN1t9R2cX3F530nKLbvyEJXIvMi2dei2XPHFUn4tZocxWudqqK5rFu6XjWzjbZJLLiMQue5aEyg3wSWHS66Q3syXWqLeHlKPz3ETq8EVIaiY1lVL+7gFubIdsG7itQetX2waCi/N7ZFrc5snl4ounB+VXeyOyIl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958334; c=relaxed/simple;
	bh=6pKx0/Q9fT4UenTZCIG+2hKoovpTyfGKmrhqCfHWAjw=;
	h=To:Subject:From:Message-Id:Date; b=nMa3BcUIdhxDAcbdtdiG6WF254bk5lW1yDZ7MUqc4qS3T7JtonPVwzPjFAb6bspojogemrSRNI8KcjC1GVAPDJsTnOKK+URwVwatp0G/IrTVKQYTzYPjh0pWddFP8h3lld+Mzs2gZYy/OVhChrDXrJXYIPtlI6p1t/xqpGjW0DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z++nl+lJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z++nl+lJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD759C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741958333;
	bh=6pKx0/Q9fT4UenTZCIG+2hKoovpTyfGKmrhqCfHWAjw=;
	h=To:Subject:From:Date:From;
	b=Z++nl+lJ4k9PhzEfkJSLnVj9UEGvFUmqiHyFlBWykDCRRD5CSXUipW3UlVXI7/yiO
	 25xtSjnLJ5s2eMhPW8YHi2wzgnIDO1vaDbps88rTI3BD3Rqb433r1qkzrMlt6tR3uu
	 9zXfyw2QSX32fAl/1ClIS4cM68+S590JF20+4u8JQIt41xf1/YNaT5uPtzdL9MS4zr
	 ZGz8uqoExTuvfCBaGK35ZCGZLdxmhr8R/sFIT7Iox7o1PcUni43D/C94e2xdNrN68Z
	 xKaOV0rUNbNcUS7Uz4tyweLi95ompXH/9BrgX0C68+2EVUTb4VqxT1Pl5GvYOnS0Np
	 f8KszYfKUmA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9158C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195833368.5156.6538586049432203577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f64de507c411f6216b728fdf0a0c191144c3907dc62698c36d117e07f19b0d
Date: Fri, 14 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741958333

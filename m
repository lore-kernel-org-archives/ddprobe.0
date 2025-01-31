Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A621B85C5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738320955; cv=none; b=bZBwxBIrkgrGrIB6Ai5DjX2jvtrwSwXeKy6YZdBsx1dujX1F3UVqlSM/ilepArCW/h9WU48Kr3jphZpROYJs1i1lm7/g1Y/F2jseFvt6QejddNIBTRv0t2f2cZJGg9AR2FZzKYSKK7s3mrsFHseMk2yiZDvvkEgjyp099xPGhRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738320955; c=relaxed/simple;
	bh=Q4q3+ZYREZ0g47YjPWzZY+9Qeka6H0MO2fxUOY254uI=;
	h=To:Subject:From:Message-Id:Date; b=s9Ojaxu6nvsQzkyisX0a4HZJJFq8txAm/fowQvPfB2Xj6EKkjaF8dvw2Ag/powagrvW3JEYGUOnwNmEY9qV3stBXzUux3YpfMdRFdcLBtj9e8jgzcGob+UnL5hZslTwSHMkmpw70LbdI1OpxDRgB4JNUUXi68a1Wn1eGpWlDSnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqZICkZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqZICkZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98BFC4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738320953;
	bh=Q4q3+ZYREZ0g47YjPWzZY+9Qeka6H0MO2fxUOY254uI=;
	h=To:Subject:From:Date:From;
	b=pqZICkZSJLP8gPE/WlGIU2/ui+EzBQ3AV7CgxyMJMxTVse9HlKJIB8IxyHyoaixu4
	 ewJ22kXF73q2qfA3gb35w5Y9Qw2uOI0NvWyZnRovB0RXOCAMSeYD11EQJ6hjcNujzw
	 6wAM+OdHIZvGznXorcoklyHQOr4WO/5C3LFN4sYMq/9f4m/HPTT85SQs73qnmcQBEH
	 IKH3oiqKnfMUemRNNAftAPNbcE+nWTvJXFeY37eAHVUUw/AGov6G0odcOAPLbkk6Qn
	 mKgRtF54uKEgZ7g3a+LO8Ui5Qn/hgrj922OsdncnOKRin8bV22D3U2B45jV6dn55QS
	 1iZw1OntXsnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12F8C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832095365.28793.2402386158619470123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9f4ffadc7b98a637885f74b84ff900beb36e2a6540cf50873e770806b5867e
Date: Fri, 31 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738320953

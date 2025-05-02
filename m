Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF481BEF77
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746185994; cv=none; b=NCuSuxyJ0wuK0L4fViwMKE4NuKruHqHTruDo3O3+HZoZXCm+iaG2qrFmPZYICbia/yEGlmVCWH9xtl/sJxRRMOFRYMmuFsv3EJgou/M0rSzpds1L7iG0YFA1/BctstgK9e74tZdd16Di6cwSA1uXFOcMaoZvlYil19MPJqwmBBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746185994; c=relaxed/simple;
	bh=lAr8OY1gm/OM+cywCVfiVLZZXljtwpaN1QeyCsqEn2Y=;
	h=To:Subject:From:Message-Id:Date; b=mpdtrPqXMwmjAcsB49Ci7vcqAvXOfyRMD1TPGNo0jGyu5THt4jv6B/IpUrsAWhJDDnPt6VCCESfp2GubMkF+Qia/43jWTh6Mtc69e0wByiszQl4mefNR6/y5NHqneb6VTd3zU4ecYQNXtSnYUb+qEf64obykqK+M4OzpQfjwqUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uuc6q9E6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uuc6q9E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746185993;
	bh=lAr8OY1gm/OM+cywCVfiVLZZXljtwpaN1QeyCsqEn2Y=;
	h=To:Subject:From:Date:From;
	b=Uuc6q9E6plfbmlHHM4aHnQ1DUElkkIQ8hwlSFYCnrqP+luO4xXxnkgkwgANu6olOw
	 TMZ7eSKRF4I3QqRCR6cYG9L3kpU2Wq/q/RLHRj7DiJbCT95VaVqeFBPMEQAP7yYvsj
	 U5yiNIigFMeZ2YzV/8wfEC1nCJOzlnH5iTvL2b+obiwjcgjowS6Mv770tu9UGEh8DO
	 /bvPxbj1afEQmqCUqCzJvEVH9HJiWHRC0ihEZ7H7d0ql1RnevWKvawdHlZsXwIr2Wj
	 pCKE6Jml8QfqZ/OA2HTOTmNQR23qap5oe5jzuA049TQhrKGmVEuvg4wuNlJePqYQAs
	 rb74AiKPiJHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93917C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618599357.17086.8278549003232549705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26217ddd7fefe728d95359761ee82497a96fbf37e95d4b7a8c8aafd5df6c48c3
Date: Fri, 02 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746185993

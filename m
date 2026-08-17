Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC03BFAC8
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786953634; cv=none; b=G8j8xhfGGbTUXXKLwIald6Ctms2lAq+O2U1bhaJfjCDD/awqb83mq00wPXDSSNjvuWgpuT0s0kUb02J4eKld9q0mD1hVxH8GfwtwnouFvXTBxZ6sQ1JKCpCPNVLniy+B8FLnCs8S6Ya01EN1MtIuvf5r0Vd1l0/7UYw26GPh/io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786953634; c=relaxed/simple;
	bh=gUUumaNM/U7MjqobgaXuah6z+jO42RSQHc//Qj4MP/w=;
	h=To:Subject:From:Message-Id:Date; b=l7V01KHnlUqgOmFRGKf90YN/DfGhvdMcfL04VwiHYysnV25+EshJpzP4o7d/SC7f7ZIV8/Td3ex26UgLB27/LSeW+Bw+0nqIUvnWPbIZl6FFqGhIy5zUOCQRT9erUHgG1bRFvp8JX5oJbttTvGrkvfeM583CwDemqW5J+tLgw2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHYO/liF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHYO/liF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E7EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786953633;
	bh=gUUumaNM/U7MjqobgaXuah6z+jO42RSQHc//Qj4MP/w=;
	h=To:Subject:From:Date:From;
	b=QHYO/liFWWh7pcHpB59Sq8yZA4mMq+/rvWzMyYFV0duKp1ZNK3Xne/bW0HVsxdilZ
	 yhKnyjpFAIck7n1jdq76AEzNMZ9AEdYFAXlv69aSyd1vp+DM1oSQ05i4zxTwWhfVHp
	 6xVrRiHrE3oBbPKq0KUKSX9HfxyWjcKSlUEKHrKVPbhu8FsJvBj9kxTJsqZx8/zBsd
	 93pVHYAnimHm6zjgck/QPSAuvbztCMjwFYFIh57UVgK0l0AzuIcTuDCJO8JuSMf5g/
	 eHNf2qh2ZxqrcF2+VMf6W6oZ/TxToyaGvcqCueoGyjwcWYkBzuK6gvFQ3Ll/aweInM
	 nuS9JyITr7QZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2215C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695363371.7110.16025434152022707312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b175f4e219b9fa4beba8c5b57f151c969f6a51f02dd39e9e73d2044e34b7f863
Date: Mon, 17 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786953633

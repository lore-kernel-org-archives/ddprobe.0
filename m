Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54514210EC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716403403; cv=none; b=ju7+dOtYwz31KYtbSZEKdnAc2+SOn8ECWVwbIvM2Axb2jU45ltycMdkDNJ66mCGFid3FL26Ou6el7JrzawUNEAXpx5cOhLhXiqieEW+qJuJe47BgJvAcVyhP1b9K2Lih9ju8gLDRF4MMyUOi4SZHm63U6K5yF7iXr2v9O8kRcd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716403403; c=relaxed/simple;
	bh=LqQUsk9LqkJbwTNHIwYoUTFvOtbwhJss7buMcgcwOaE=;
	h=To:Subject:From:Message-Id:Date; b=GOOC2vFykiAgzE1LuY8i+8weE6BFVfKEcO1XbURVn5dOMDAPlOC9DN5g8ienakwIIh3yF8oj3sZDEOEMwFwr35S5EuJkndQDHMMhoDzCeoJuWcoCErzJ2pxvSbgYyy6n20H0mEq67PXHfAfucku44r8qsujzyXWm2BOqHDwNYDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/oRQ7ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/oRQ7ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF2FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716403402;
	bh=LqQUsk9LqkJbwTNHIwYoUTFvOtbwhJss7buMcgcwOaE=;
	h=To:Subject:From:Date:From;
	b=O/oRQ7tsBUgbzZaW2/Cm4bfwY2bmsHxSG/Azgf2gw1sNfW94FT10ZQ+C1cr/VCnqw
	 yuVPRb5UjOdaUfKzfN3xtrg28MhWryr4Xl0ryIYPm/OeMIOEgXenFizMgR16DQi92W
	 pv7RqQ1yni8oAvRvQSQdarJXdCtjBUbmpxr5nk3pUYIyq7lTCL3LuVoxSjBIw5bKIh
	 FHaN8qVbaGpighWNL4ClT6BZ8uHKyN2g8/SuKRz3sUUJdES0f1ijMnnlZKYIGJc/v5
	 NTCgADAAT1p0BeQ6VKpg1HKUbINrgw2ogwrf+mh3YmmJGwZOCB25Xrf2TY3aSWLQeL
	 PIr0zeRvL7N6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E07C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640340279.22634.1492028346436345572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c2f038f21c532e7c0bffbcdac42609c58f4cf668982064520aca79eb1e8db7
Date: Wed, 22 May 2024 18:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716403402

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5DB3624CE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775148334; cv=none; b=ggXM+xPOjyVo6vxZlkOYGZhGr/+AmGHWx1s8gmUsblELNlAI6vKhjxtN4dfv/POrtPe4nIK4BbWWYmyReSp9vs0AmutiadRw5YeX6qTZbNK3qKaV5D62FobWcNac8QMGbV1pHGOmnDcaUWpd+k8sZRF4v1/D//JTvD7BaCIJeqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775148334; c=relaxed/simple;
	bh=7BU/jcPHdk0FqLjqM0MdLKmbKaBl+9qv0FewbEdTltc=;
	h=To:Subject:From:Message-Id:Date; b=l9ZGQLRDNN9zelCBTCiMkMYJweKgHaljQTNJHF3r5TF5UObSmQqQxp48XrsWHE4/pWEQbq/1cxH+/ypeF4t7rHXJez+EtJc0CXwSC9lAG3pVdk/l+iHPboOsYU6pU16XdWh4Lv3X38uSSk8r8Ra7Al3reIKUSzDYkyuQa5QTTBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5u5t85Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5u5t85Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EA7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775148333;
	bh=7BU/jcPHdk0FqLjqM0MdLKmbKaBl+9qv0FewbEdTltc=;
	h=To:Subject:From:Date:From;
	b=T5u5t85ZN5V/N8H2m6T8FEPuhAa+wufFcR5N/rRHLs7KMf9iYPuqzMHmtNnrPNbyn
	 ZMBUps9U+iyLci6YEbCE2jQdO+wXScLyR0qb06SPYTLWBuGhZ91lc3eyRMUpUGf4DZ
	 vnhFNC8m+ehAPYIAyENuEjRIFML5i0c1rwNALt9JRozNVej4DqwQ+1m/CAMYBoWASS
	 ND0wSl7McONOO3nV3k8DO5V1JGkNM3HE59aaQCH3HLxJzhk8iAb/zUcwug6i3s9vvV
	 TdrEckhW9uh5F0147cACuZ5TSsFh/XFcDNCO27jf4kv/LWntMpkAC7Ong1lDaABxiC
	 teWp+RrziN1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A67D6AAF2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514833370.14568.5674296390268208592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4eaa94f643505918f4e99889f631b48e98b66ab994a83a3c0ae13a5c16a919e
Date: Thu, 02 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775148333

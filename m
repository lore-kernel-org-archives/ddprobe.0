Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE9D382298
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785389434; cv=none; b=dGNU7LTc1M2zEujEeRVfUw01eyjewmjP7PIBUOq0mFVFGkUuq8HN7bZ4ZpV5b+pxKK5PBe+2pTj7g7R8Pr2ALSnni08xB9C0j1v09L3YqB5cWW6JbijKgNlqDOAHJnqRbekWfUgScCogKKiLPEg7tQEL1dQiu/fVIfo9wMAu8tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785389434; c=relaxed/simple;
	bh=WC9SQGkY5NncEX/ED2SKwmtn2ps9C4FsW0U13mJxgNU=;
	h=To:Subject:From:Message-Id:Date; b=r4muQeByE7qnqKFYWmvFcU78rjQEtQzBnAXY09ZfpVK4MyuRoZEgbszkUfa9k93HqyX3GozWZYyNeL1t+wtaH72/7HE8jfUjnzI43eI/24EH+6Odpm2Un+Vme5EgIw9CYa05dcsrfgDTd/HLtE+tTEuDIgu8kY2EMe7b6agfX/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsBc8Bqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsBc8Bqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5993C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785389433;
	bh=WC9SQGkY5NncEX/ED2SKwmtn2ps9C4FsW0U13mJxgNU=;
	h=To:Subject:From:Date:From;
	b=EsBc8BqjADAdyLBIu56lCqKkPxA7NLfAffcSLZGohwdoDTOCdUjgjME2LTqPTkUg2
	 UYNTSKgYuXcb/LaTbuyAESAqAId53yZ8NLhthG5WJ7ubcPfmyYHDhdCyZdm0LARX89
	 OTzf5r6VCtywzrzwTjUFF8CfHcg2B9baaxOUaWQMX3p07KuLMuOXeTJwqXvkMJVWXu
	 6ARAM2INvKtS27qqDpssbF5nYGKqktWrbLT/JGRcQZ1fKVwJyzl3n87GUvqGUt1c1h
	 QE8YPbxISw1wRzyjze5X/evA4PiR+NT8jCF4wLlFsaxn140BavqoL7Q75XZNhTmXE1
	 /NgXtjFFNdRjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0336C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538943374.4572.14735709953987808954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cf3b4cb32301c25523acecb9238fcf0c8100bde9ae22b1c1f3d4041d19f6f2
Date: Thu, 30 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785389433

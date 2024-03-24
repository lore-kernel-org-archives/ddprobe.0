Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035FB19E
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711240097; cv=none; b=D1EnwKcx/WohtqwvIwSP3bUHeJTyE8fHiVTciDabMfB1DPDyLfv0b+P02zYUfI3lei0xSukepycrMjsFoNJKL0W63RQdUGx831inUXmXB+gbg61+uFy81m+sLsNETEXA6kO/EIPPigbAH2B3bd9N+mJyKE8lPL5P/5kSbRB6n5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711240097; c=relaxed/simple;
	bh=58AH/VE/yb4bTvZmz8UT4Y4amSyMOU7SSAUWZoVP/tA=;
	h=To:Subject:From:Message-Id:Date; b=rSPrWpV6zRVldkWkgbrO+YwOaz4F/pvuOqPfrAL2kk+HU2NrbYqcYUFXkHd5hWlV1V5Awg+AJqIPAj/jk0lL1ScFMl7Tr8GsY8PeuQFJmGeZOAGMJ92fEu4XdyzZvzNJzyGOi5ddgaiP6Mz5vMWo+glq6F/cqU5iXQA/l+mxz/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE3EIy8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE3EIy8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A828C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711240096;
	bh=58AH/VE/yb4bTvZmz8UT4Y4amSyMOU7SSAUWZoVP/tA=;
	h=To:Subject:From:Date:From;
	b=rE3EIy8KbXyurzqSTPp6xuO6Fi+RZwNCrRTZFU5LjMfb103lJNLyxeuVXuR947rRF
	 PqGrPAExDkAmmqPlsmX9XfQQIDRVdHVhzLUnTyG6Gkn9jqI8heSMcR4gT1DdD18vHC
	 oh4FDDKlT2mbJ8ls69L5sxQCoHlp0uH5R5tdsbzeN9MmPmmv5soBBJZcvTsfJsFuQv
	 ZAJGk4RFnP9w/X/YOar7BgCyF5E/xunlwqAoaUST0UgvqA1nD32YOsk/8wsMF74F+8
	 u8QVjaQOlNoiUoWz5/eV7t8MLzCxL8BsSLNKGH8xS/5PmgYGZtGIB/99HlbgILo7yF
	 2NmLifIWpyZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64443C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171124009637.29164.10706620255167582969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec477c0b281d7fc73b4e8e96574d3debdf3559379a01789a776e6f33fe8e071
Date: Sun, 24 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711240096

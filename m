Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E9E13DDD5
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126943; cv=none; b=s6QNUdsMN4hnhZ4Tzlhjs+H+Zv6p9m0/JrHB/K/dd74afghEEv7OZ9sLcZMbI7EZ7112rrLS1xw1YpbNNZtwpQbBOIV6RFaJj0mQZrbQsWUGDHWUzv9ZcNQJdtDP8Mm7vWE+vfP2Cm5raq9isvup4HFG52q4RoHXADQd2XQtBLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126943; c=relaxed/simple;
	bh=RkIBJ47H1QJJaryH4rWtWB+/Ss6J7hLmctEPaYHZtOU=;
	h=To:Subject:From:Message-Id:Date; b=DiKSe9znCxU5djSg55XBOGcPS0hOLGI1kQhhF43VtUcW60mXl6Uq6vUSutbw+NM8CFE65aHwSHaLpGl+sFcu81BjAnqPxZziSDm9Q6vf7k71noWi25QIHRJYFXcmpSU26jZpVkBIyy7cxu11UGwo2EAEYKPXsu3FhLZvs8qY3OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMiwDvce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMiwDvce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB61DC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714126942;
	bh=RkIBJ47H1QJJaryH4rWtWB+/Ss6J7hLmctEPaYHZtOU=;
	h=To:Subject:From:Date:From;
	b=ZMiwDvceyrww54GWd/i7gr2o+vw4ndUl/4SC016I9Z2vwPnzgfAdhZCQE81YEj/Xf
	 HKdyaoIao71WRi/+pj61uRhOq1+MXST6zkJZoDHjaxhNZRe/2pKYBtN/7gx0WAXOvI
	 AySpXQQGXTZJkWIF4cg9aarW1pdDInP4WU5Bj/nvRdOengsULo1WbkkH7iBideyQJ7
	 kh16aneWXw5ZHhKHEuWk5PihuSq1sTeF3vFVM1kVQ0AdIlI3YVT3dEk2g0JiaSYCks
	 i7dUsLLzvCmZ4qAagRdLIaoWFWKIsh/3c6xZo0ixyUrhFFRcBHnILuAm6ee0oCpm9Q
	 FcSg8ZaNRyOQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7574C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412694280.6707.17543386786105897506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189d3e8ed1cfeaf960fc0fff311f7cdf2a43d02071daa16a968692663768ab06
Date: Fri, 26 Apr 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714126942

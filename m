Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271A214E2F2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757038194; cv=none; b=otGJ5iZC+nzdVF1hDL5xHdHwpwUt7nUj5VSqHcNN6PyTypaInfItNUg/K17oJPgpC0S95S/7SXeTFrwapz0DmOIjbI+7IDouG1n9T342sONEa4LTztdkFEBEm55Nyi1ONmUqoQ7mLW3R/k93ljow+lpR57ePnkN+7zrO2NekGW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757038194; c=relaxed/simple;
	bh=mTdGR7sChoqEpbuCPsZYMzSP5JZA2yaent3VSGbsOUo=;
	h=To:Subject:From:Message-Id:Date; b=XmB2OaePTa8pOZgZabBbzAW01V6IPQNetDZtD4rJBdXwVVoSEJt09mZ9eUllLge5SWQY746jnW7FuQ6EdrCijS0J79YYYoY+zfi8Pw3dpdfv3qg/WmFcDyD7x0diUOl4UWgV1UG2aalD3SoPebgKvWdKMwybUrVXasn7boAWwiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIxJ+nPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIxJ+nPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5645C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757038193;
	bh=mTdGR7sChoqEpbuCPsZYMzSP5JZA2yaent3VSGbsOUo=;
	h=To:Subject:From:Date:From;
	b=EIxJ+nPDj4MtJEc+DXxSZKWi3BqCi4xo/ZwiWPvcfXc8e3Sb4f5vOjCh6CHh1fe2j
	 V8AmhkF2iuXk8EzO2ycFgD/hk2Te0G92mZhvTFWMUWB6KzEukln3cDHnW69kZSgoIq
	 eSn3l8xX7F7B9UYa0QqenPwyM/rupRUAdAieEc9VYlmB1L+zhi/8yIyWuAAs7ykwUt
	 k+7hepys3u7MAnhMiufGUSh1HSBUNNFCzfBm2eW6xYgEOfzZgNVpptu/R+KHvOpxjT
	 XGlLTSZg2k3MAzg/CNJe7EmrxMdpfMTaONqxT16s1sZOjmQWSDNVVxNoT1qsXC0M2H
	 ZVrKH6AhmXd2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315ACA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703819359.21309.7247956195520586180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5818b007bf8b0ae6a65c518d41cf23daf5977b05f747cec4ccd1636b130cf13
Date: Fri, 05 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757038193

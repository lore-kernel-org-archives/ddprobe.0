Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4211619DF9E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732056954; cv=none; b=pC1M7gPg8hulz7dBI8zMskRvddMv9eKf+MQ4NwP7ybs+ZubX7+5dcpX2HIn6x6FmqiGMpygNtPdkPTEh4ZGbRIzqoR6xq0qJ3sk6Cm8QewBwIvLMbzmZ2C+C5o6de8ohlLg70p8WXp0t8Av16KB2NCb9tgqzYoZ79srk1g/+fHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732056954; c=relaxed/simple;
	bh=rZEGImjc7Rq8O7/lgIhevp1oRE7W6cDQu4hvwJ6icBc=;
	h=To:Subject:From:Message-Id:Date; b=dBRozYJBn2Cp2zzeZFPkBqSs9Lb8Brq68IGVrWGE/5NAUOnWMHtviSPz/eUgNdvVvzRIy0KfEoqcQTdfIN6AHE6R4zaJaFwBsE1H2/nuhTVrfQHhnik9fJVkr5RaaXdXMgj7KncItkYuudQOTvygw8YVPMoHsxZd+wQDD5EIryk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l74m4ozF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l74m4ozF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B8FC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732056953;
	bh=rZEGImjc7Rq8O7/lgIhevp1oRE7W6cDQu4hvwJ6icBc=;
	h=To:Subject:From:Date:From;
	b=l74m4ozFTiwRMO5c8wxjdmysq2D7/2dPg3vn3zgvgYFR2oeAhIcjQItDgWba5M5o4
	 7JNAkZQB1FnyYcHX9ZX1C1bFsSuu+LPBHgXIYvR2sbswG1xL4A7UELb97C5faZ5o6F
	 tFGjOI85kvL6mQpJZ9FXyORV8XP47po50B75Snggi+AHVo9k3BY0ULiTprC3SwmRs7
	 xUjN9/7JTKfdEHr9sqex/7eoqTLvshTpb93pDoryEFGjGqe+GZGCwIwbWImZ4xYrEw
	 Z5MerHXAuvSVnzIdl4ilesezt9FdXtgCBr93bNDihgYaPfHKtiI8BB61OO7gvgG4iZ
	 RCTz1jY7WxmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A9D6C2B6
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173205695359.14531.8722806207744589588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8347fd0ff013ec077bb4c07ca36910a94ec2bbbd95b2e4750df596efaebcedd
Date: Tue, 19 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732056953

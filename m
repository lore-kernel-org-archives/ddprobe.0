Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C51825393E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784878834; cv=none; b=E3C956uQpROnvDU/o5OQVR8SUOG3L6wNJ0fgXYYEPuk8mUUWn8d9cxDVmkFyyuKmd3cJSLLd8fMlfflGqs/1Nj9ZL67laxpIPM+rD4ejm3RQ5TcvW6EF6ydvr8O3EcuHN5RMUb7r17Fec80Y5RIv9p7MXuNfGbLa3K7dYkDh7YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784878834; c=relaxed/simple;
	bh=FtHUFhSXUpx0lu/KfbUbpOaaSZctldsRZdkHuZgYB0o=;
	h=To:Subject:From:Message-Id:Date; b=JvgZ93dIpUg5IV9XJAv3tK5WA8n8+Zd/g7LHHOJQIQYpB5kXoNyAivY6h4HBFAPClxzysBzT1BcMMPJ93Q5jtMd1IJxj6G9a4DiIVfuRysHZxw9tbyGZ1v8Oirld2DhizsucC1RakBVu72+kX9ATuM/OjpPLqWdBHE93y0Lp9RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBcAInga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBcAInga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC84C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784878833;
	bh=FtHUFhSXUpx0lu/KfbUbpOaaSZctldsRZdkHuZgYB0o=;
	h=To:Subject:From:Date:From;
	b=lBcAInga9+8DgMzNQA62I0mzPNrPHLlw1mSPxKRrzreylMNvneqxE2o9HHTWKQZ4U
	 oO6AuS+x9rCAPRyvIG/00JuUGLDs0JJwmk/7QFCi+m03/uSKvkpsFdvmXnYagp0QnW
	 I0977m7Khcz90wWd64KT7TKPikXYYkJs0SnGFDt7AuBlDDdGYGsKHCPJ/1H5p3WXQv
	 dBLcqFlRHcY8UMi5S/yZGM10XbqEHUGsCGsumWxPYSGaZThvplT2s1/z+acU7BvVQ9
	 0dFAphapiy9LQBJT15LHmLxMvJ1TqLgsLPEBcm/J7eSBFsEeK1ZNhdEnr330ypqpO0
	 Yl97l/hJYI5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9097C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487883368.11474.16675700841040064737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2141c83f2628b112411b2631123e607aa4829921a9bffe50a805a512d5e3a9a
Date: Fri, 24 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784878833

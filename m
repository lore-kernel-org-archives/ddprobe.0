Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33524179A3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749940194; cv=none; b=mcqXCCEIouMFFoW5ASvsoQPtim8yXR0Qf8TQOricfEa9OhorfQt0SQ+VWaA9Z2NgO1fVN3IJyr7XfwMKtp3nWbU0GKAdfMGkKfMSsq1TjV/V3qiIziq2UbD8vj8LWOLvhtdIw1J0259aUFcbrlvRNjCSRPAwZIhYMuQ2lzjxIFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749940194; c=relaxed/simple;
	bh=thODE/iOhdDT/+XJZJroSJMbWXpNNz1qeYCOpFhwYTM=;
	h=To:Subject:From:Message-Id:Date; b=TW6LP79c1F2An0VfCEO38u7wKf7NKY62oFDbQQWAMZaYsu2TWMxcpSCFzDC5A1IFc0z62Ldyy7T6DxpyHSdJjYE8Km779WVIaDzbmsOP5xqNcrpwpL22PWLzu9xBmIbuAVhq4i5Z+Me8ZiYZ8cY0JCiQc6RrDh+d1XIBX43YsV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5hmJx3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5hmJx3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D93C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749940193;
	bh=thODE/iOhdDT/+XJZJroSJMbWXpNNz1qeYCOpFhwYTM=;
	h=To:Subject:From:Date:From;
	b=p5hmJx3pbIETNswJ8bqKYAwDIWyKJp2QFljkGtOkhoIN9Y5uu5Xc7FBAYA+U9XQ3I
	 L94qXKDjjYOkGvyD4tFesS3CdDyKn2Dm96nejSLj6IpmeBIhOfs5C2ZW6ETEYcVMEB
	 BOElwNAaDIGpzOuMplQRX+RWQluoqgXdt66qQD7Q6qThDswaIOCmK5pxv3I1WXQMzH
	 ziFthUGxSD0CYtdkMBJQKwyDaIB8aEB919QOw8e0On1d8e5gp5vDNtDXeEU9C02WOv
	 L4QxQzH1XvV3hM3pY3GEtTuEzaNeFEJumsEHzgUZjRdV7yEky6eAT9QTeSIFZ659FN
	 c0lQKjV3JLJSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959DAC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994019357.23963.3230165725169718715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b4f65883d42c533b6043db01517d6bebb623d7a6700573dc5221088da1eeb0
Date: Sat, 14 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749940193

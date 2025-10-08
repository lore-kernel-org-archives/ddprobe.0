Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A9A27EFE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759931394; cv=none; b=g6ZfbNc2YHtlD991cFFYqBz5S0wCDE9L0iiwYH/5pEGKKh+A4IuQTWLv+nhj4MUHwVvM7TlLKlNwHvj5TF4/v2I93jAHVbYBfD/alAxl9zDx0f05qHeliZlc771keqIF4wOcfLQ8NFaHbK1ydImO1ztTj4ilAD+zXk9RYtUXrio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759931394; c=relaxed/simple;
	bh=1Gx5gqKmS8Iy5tZY174wQgmu3R5Kvuv77v6suN+8Hr8=;
	h=To:Subject:From:Message-Id:Date; b=gqBrcVDxIC20d3ui6eU7Bw+/1lhQxvArQGyi7CWYC8zkslRuW6+WbyJ2ZhOAyt5EJ24wPcqjH8SWh4Wqw/24ZWgrIM8lAIAnghv6WCMnHuYSuv5HGXaqontbaXuaTFOq7xk9GZl1Ip08WioSd8msFZJPR/CAuWfAP0CNAZV6NX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Osqh+Ssc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Osqh+Ssc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759931393;
	bh=1Gx5gqKmS8Iy5tZY174wQgmu3R5Kvuv77v6suN+8Hr8=;
	h=To:Subject:From:Date:From;
	b=Osqh+SscXxJS5kuM0L7e5m5gw5D45LKs32T1tf72mZXO/Rv9Ca8cZ6bE5MPIPhttC
	 pK8ijtYMA4yHBA52LHP+2ORElJhGaJeEp3yljr4PrVKsIDjLEAGrVO35kIYrcs7vcQ
	 NUE7Ac4pve3IJtBcHs+2nCgitFw8N1iUxRfTnyns0u7tCY/OSQkoquwXnWsg4B+JEE
	 HfjyYTDJTtUlUD5tLOl9Ug9vcbjET9MpI+mOK3VD38yn6gprl7A4DPum0PS7b9ksb1
	 2qLfLr7YnIZCCdEmvNQbI8npPBIjbK8nVMk3NqAu6vosjtO9FlL1qzsilQPpTkXi00
	 StGVmdB0o4fFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BACCA472
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993139358.878.16561566040422810596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9834972d473e0e09a3c1e8d0dc5ff133502337ea0b91ab2276b524ba003e29f3
Date: Wed, 08 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759931393

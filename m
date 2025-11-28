Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C0C2C030E
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764352373; cv=none; b=gCvRIdBDRtow2HABLedoLoZhYiB60W/WBJHhPNhyfbgbWEbP1TmCr14IqfZtacTPS7vDpR/JH1hXmUZtVT7me1wsKqmlZmQnSTUw9+NtvbSISIq7ppbjQankMAm7GaFCxUPWJXL56PvM+mF9JhOa2RE9PrJXHi2T4yWYpnXm8ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764352373; c=relaxed/simple;
	bh=tQQy4yKZJhwEllxLRSRsdqSsVIZ+kdz9+fUasBnFzGo=;
	h=To:Subject:From:Message-Id:Date; b=VBPsdlFYO+YFryt/sAx8XVyoq3fo+jqo2Y6aLM0WU6ZE0J/dIQ5d4c4xZJOeWt/kn5TcyqoEq9yW/N5jUfRDd5kRJDaVQQMyf2kZnsbFhY2tQwS8GmaH7y1Fv10cSwyR6vuSZKIdsqMfTTUjLHcGQI5kBaWJHb7mIZt/zJVHvkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo8Gww22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo8Gww22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44C7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764352373;
	bh=tQQy4yKZJhwEllxLRSRsdqSsVIZ+kdz9+fUasBnFzGo=;
	h=To:Subject:From:Date:From;
	b=Vo8Gww22ybcT+BbqeJHapwZ2R/aLIVhvmklMKLi9mb0MqBAvskFw+a8E0XdXcjvM+
	 0CK1zVfkMMz6tdPEZRft+UFN7c+39qzkB2IolHOlORwG47N50xxH3pBA7hjB5xIs5y
	 bD+mOpb/lDiUuQbnqpdPaiddM93J+HuRQGZsFaKCl9v3ibUW65OZPh6HFzKnHKNCdj
	 xWv80TK7DsJa9bJZkhmKeWCvTBvPQLjNe+HlLAPyNoVzDcH5cWKLkupVzvyEK0aht9
	 i5dvcTWGeA2XHBKmJo73gVnZti/nTsS9DcwfMLdz/q5LlLV45sgKhYLboO3h2Ys0Np
	 WviCKhn9SDo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B44D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435237358.12096.17147796701891252793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31360eef3f5c3556a8481fe76439760add9dbe4b1815d9ad903f51080ed32f1
Date: Fri, 28 Nov 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764352373

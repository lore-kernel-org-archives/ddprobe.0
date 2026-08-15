Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2A219E8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786833634; cv=none; b=nCK23VV0v8izcpYbj4h/Te+GXx9Z1DntYABCec9R9ZU2MJcmVK/+aoqKd1DpIIXRn02kVKmJzlRdQqFLbXFdOIXe7JToL2O4+FZn/a4+DC3WE0ohRJ1cCwo29qkvMPrVgJFAgyXxDMnBp16bJYnOrtqCDATF7UepYVwP78Cx84Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786833634; c=relaxed/simple;
	bh=py2/ID9NjmSx3SKFPrzHpRk6cPUEH9Ab6VxQPj4G8Y4=;
	h=To:Subject:From:Message-Id:Date; b=Pdo4io/bwPvvnTET81kybBdpreRj5tRbe5Mt3KyIblDhO3iRib4BgbfSvzetDgXyqb3gcQBJLFn1IJO6QiNwRdataGPeH+NShjdMZf9MhYUsnMUvvnYy1YNRfgrBGfDxrhBOiXHZsdZdNGsdu9rz7yCQT+AjOyEx6LHTD/4lRa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faGH1KGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faGH1KGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB392C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786833633;
	bh=py2/ID9NjmSx3SKFPrzHpRk6cPUEH9Ab6VxQPj4G8Y4=;
	h=To:Subject:From:Date:From;
	b=faGH1KGFyj50U/Yr4xIoigJPFqypJDAzCJ7rUQv5S1EGOPpPIlqcJKnIPUAUN9oDT
	 l1q8dpii4GeSgweYotDoZzPzeNxQPWfnOA4qDhRYgg6AgjUP4Rf9W3ZN4zB4hTWg5D
	 gKjq4+/cfN1O0WJsun9kmUltSF2ievXuahhoZ0nImzjvq/Put+4dt8CsK2w2FF9DM1
	 yj3yIFp4AQ05N8GTCil/vLttWynEuTO4k9EJQQsrT2f1935bf6W6tpZrCuk0e/IEt4
	 OqcY2SFKpGXaFHB8Z7ZovQmJ1CsyciauUVsv0nw9fx515V+at37SnrekHfB9ZY9//t
	 YVXkHR8AIaqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54BAC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683363370.19062.12722966208387953565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7197c3f0b2ebbc06bb043093cbc29536b824262a7e311ef253968cdf9027a888
Date: Sat, 15 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786833633

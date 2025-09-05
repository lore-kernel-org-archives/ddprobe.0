Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A17926A1CF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757071795; cv=none; b=nhNichXRec3hCKu2wvUVGCi22uxxvgUZ+6WQ2J8/ov1GdU6jqt3aEKv7PhY1cFMjiOx2ZMKT0Uc4SI/rbINquNbirHwbhRjce9AfRSiWRwYucqwO5YYyKxw9unGzjwSDTVYXm21RAd0mR0Xy2qK4uN1aBXAGWDEAe2MVwjfu4TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757071795; c=relaxed/simple;
	bh=Zt/QqaKhvi4FgYx1vtmM8TP4hJjn9GBkqfzmwvgs+oM=;
	h=To:Subject:From:Message-Id:Date; b=ighN52SMvv/1NcibRzWEsVvve4rfmckW5ZZpVkfHnbqRng9WPk52M7ZdYAoU746KIDElgtoubFOu1JlEvmLM2Dj0uUkSJvOk0w8WqsCTCYoW31s/zVE4BzpALrwHrFxOewnzr9BfOb1qfs4GVpDTeahE/l9SyY1By6l4w2rv9Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGRdYvBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGRdYvBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C02C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757071793;
	bh=Zt/QqaKhvi4FgYx1vtmM8TP4hJjn9GBkqfzmwvgs+oM=;
	h=To:Subject:From:Date:From;
	b=WGRdYvBgr7jbHlbZ7tjRfc1GIUWEozbdQ13OggUbxjC5IQf3KMz/sGlhomuC23np1
	 tuj1NuEpDauuRRf2Ydq8L+fvH4rXbOSOgKWF4EKkeIOAJKXcELddlksPM27f1UTjVv
	 /nw8235iPPNm5EqBjEwV0ySR7trRZ/9HNNhTYnhp+OQDhB3aTyXq8gJaT+djtZfknC
	 rJDNmlOu5rQpcD+jzwPG/WHeMebDPu16Kle24IBZVnieajqr/lFSGclrOwl9UXsjzb
	 bZcNyiY6LJmF9ttWHVQPpK6WEMPZN9w7iJ/f2/5VuLNOuoI71KhRpNpQjwZLhmdVDk
	 QvJj3s+1sWKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028ECA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707179358.21572.607761469497221200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44e572b2c553ac2f4f2cc8f3b22c7675a5dde3ab3560114e2dcf2527f3f604e
Date: Fri, 05 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757071793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC361DD0C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750715395; cv=none; b=rRtSqcXkm7640GgramMZeRF5QQyt0GEiHsCJc2LOHwwWLiuSjgFJN/h+tPsRR/yhFxxAzTpY8fwd0gn8Rw8vvx6ednLXfehUAqcO62rE9AAZHbSb1fQQwr9aQ5qwso7UtsVXy/SRCKqu6kSKzTlfn7zqlj+sskPXoxkcke42XDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750715395; c=relaxed/simple;
	bh=xGz4zP/ffGEcwz8H/SEb6jDs4E9r/rlOMLsO4hvTjGA=;
	h=To:Subject:From:Message-Id:Date; b=RM43XCcc1k8t3HB2jhaRl/D1lvq6pzAfSs3NUMWrIk/7O8nNuPhjUMhQCGg0Q96Jfl2Doz13WSO8ca9UbheHRl708ED0TfSdDN/R7J+Hy6yKIgayp4GPUZmOBc7vLK3qbwEFtaKOBSKXvTb60xIixlqXJMgX1ZemVO53hNvzRsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqucoHji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqucoHji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750715393;
	bh=xGz4zP/ffGEcwz8H/SEb6jDs4E9r/rlOMLsO4hvTjGA=;
	h=To:Subject:From:Date:From;
	b=oqucoHjiCbRzrLu6DH9MkuLTYRreWJHAUMdfMs5gPGitsCqdvKsqcC8qm4BOxnhB0
	 FCXcmch4wMXPdaTM8qqPirlZQDQFS7xfSKOrWExebnbSMFKC8727GtFQLgIUFYMrqb
	 NtsGxjZV2ibXpdxX8fAjRUU7IzrU2YuvK5/gSX3aPTiOW8L+TQinJhLqn5kB8Weyo+
	 ewnDdWzYPwPnPH6MoKnFxGhE50Hn7Jg90jtHuPyz0AVEik0cNY8kQ3ZID3D1BbGfUO
	 Cq95cR1GcGgDnqmRMwjYP/czm/NO4WVldysMtSOn9F68oPzy9hpyjv0ifCWTtkjyiN
	 TWkc25W3Rb5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F721C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071539357.24246.13445147609837865743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c7f3069cc29f7cba16ad2802a809c9c12db00862f1dffa72b67ae4c8fbe034
Date: Mon, 23 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750715393

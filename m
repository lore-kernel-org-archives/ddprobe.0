Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B60718DB27
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753797595; cv=none; b=UvMdcz5GRtVIyUw2YAK3I0/N703MTRO7HNlqHLkTh2ctdCy/v1HuS6JvrvOSZPQVWtbqctMiPMKfQdewQexUF4JYdha2JwbtgMzOTUv+iGb7ztpuclRrxlR4AK9tJ9krNEx8wq/i8Tu/I9TCVlTRX82Ytu7I/Wh8eMxp8HDmnS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753797595; c=relaxed/simple;
	bh=v9zd5DtOfNUQxK9l2ywB1dXOvnuW2quRUUzZ8FrZXmI=;
	h=To:Subject:From:Message-Id:Date; b=JU1EcdzmxjXXgSijaFYC4+9BTg9XESJl3s5HlOJZ1waVLJTc9D32qLzow2hWNQPCJojycUC3FCKmnT7jwCtLDl3mJh8QpZeMdnImTtXQ5n9xqkz215Qh3QSivoHQ+X6eTqycjFLKC0nMGYh3Dyh6Zd3OkxGkLYObO4ezcsJTpNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcAB9Cl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcAB9Cl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD90C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753797593;
	bh=v9zd5DtOfNUQxK9l2ywB1dXOvnuW2quRUUzZ8FrZXmI=;
	h=To:Subject:From:Date:From;
	b=tcAB9Cl0CiH4WgBkgA6Jsc5asIXVbBEV4IK32qtyCuUVO72p6d8XC62+xGO5EUD8P
	 Xv1pHGmxcS63m95WytUsfJbdaCMyhTEjEvIlhk2hTE1qQ6z/7M9vHRp70znfOTZ79+
	 dDIL9WdMd2RcyDzAE5e2r8j1pRn9Df7bkAJMI0sADZrqPzH7MNxDbcf26AlvzybWzR
	 OCNbr1fqcK8P6di06gTW8U+KEmT1IqP3juc94LzFAVCmadDZEnXsaR5e2+n/0uHFoT
	 F1vYpsWLJwTJ4OK8RyXlTJuZvoWYREbNPhaTm8wCoujHSF0QvcWAoletyoyb93OKW8
	 GdKviYiJ+RLLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC2C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379759358.30648.13525319030769558623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df49b188ec148bb6e12ae12cd85cbf74924ab006ce56aa84d543b4e51c2444c4
Date: Tue, 29 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753797593

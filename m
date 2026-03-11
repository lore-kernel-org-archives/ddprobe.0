Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114F536C9C1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222894; cv=none; b=hg6avzwLpg2DgSj+NurlvnUhK+c9b1WEYN7RIVVF8VBpfazozHe6V8ZRhQPfeCvN8qFlZFhnpql5EjIDR51tJ3wPCw4uDfAgQgDRqumioACxyVQ2WHLF+uurvcH2iZmPRwKKgWQJQ7pazDVUgu5LAA1EovVO987BIAbVu3CJlzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222894; c=relaxed/simple;
	bh=1HvAEzbeRQE0kNQLhJn1MDmQpSC5Xj3+7KyyFo6g1sE=;
	h=To:Subject:From:Message-Id:Date; b=Vhu51mqpXd9kFFTJFNAJGWe5XE/wkyMWe6J/Qu8Z3ANFmKkf8fMyjttPuSQDjt2Wdr/Lm2ZBrofjWhfo6l+SaE1T4MqII2VCZmETieDjwbH8USKn5dsb9Z95fMFTPK9iBTBVMikpBMsRgIF6VX6jybEHvCRBhDzuYw7PvlZATNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIF7weEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIF7weEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D98C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773222893;
	bh=1HvAEzbeRQE0kNQLhJn1MDmQpSC5Xj3+7KyyFo6g1sE=;
	h=To:Subject:From:Date:From;
	b=TIF7weEr/DRparh+EqOc0ps4qvZjYE+x4HLst7ODxRQolOxR6ZplyIaGRudejoRlP
	 mM897YYa11yqr5x6/hpWRJ18C+ZDjGzRrrAXzpAoYjBPPJjhF63/JijoHU+ZoH39Yo
	 5KQREvtO15/bbJRuaQKs/rxfZTaR2fUTaHGXbjALxFHhBXoYfKYYscYr99HtCLG6hc
	 3dFp1xR3o64XpsGWKLbBEVrQoxYJwG5Q+YdmdWIqxJkRatGneRnamMTDOOjSU9F1uw
	 B9fPXoWnDoF6tAr1B6MYmFshjWbhsQZG3Dw5we77EZZSgbR6rySWL/JsO6OsToqy8T
	 RyByD5BgDrKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A71049523
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322289358.10901.17555342319186625017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672bb991aa704e9afa0bb8faa5333497ac34e1f44e7411bfa2aaee215921c586
Date: Wed, 11 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773222893

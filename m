Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9311D9A54
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768612434; cv=none; b=bkAsC2j3YvLTYR/0X7BtxRrIJ0GSYmzLb9Pap1r68nYSOHtWCxPSwRpmn+bpSRGR+9Jr3IPvpkJCvUy6P11Ykm+hSqcOzTUJTSDEdKleNDMzdFkjsXnqbzySHbNaZhj1qP8Npx3wy4MTBbN+DSRb/p2DqWCbwwAOay/wTsmVyto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768612434; c=relaxed/simple;
	bh=TkHBSOxb/TyUdhcbDrfGs4R1y8ObSSflGOSrKOWp86E=;
	h=To:Subject:From:Message-Id:Date; b=LBiXzj/mreFQTzfXMOUEQjuyEmJfCOm+oJ9tE6X7hI+pXNRd3N7oAyACUkRuvGL49L1TF9hZw8HqYMVUD+iZNW/x/eirmiRRAGqIs8hUmiqBJO8+OW638zzGkSrzTVdGEusOdZePH679Xnr43tKY760qU0PY4Yv70rGlAbvwli4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2/kX/gJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2/kX/gJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768612433;
	bh=TkHBSOxb/TyUdhcbDrfGs4R1y8ObSSflGOSrKOWp86E=;
	h=To:Subject:From:Date:From;
	b=P2/kX/gJ/d49gqgLPZj4x8iBeqMBsDvTI1XHX8Z1XI+i520kVURrXgXaa2tFPoyqm
	 f6jVgeVsifnHf+NW1qoIQvshy3AmsRwnFFZOwHNdSCbnu1xtL6k7S3LZD6+ZWel8gw
	 pEKJn0x/fLPPwvjPIgh+jhFwSZ0RRTqCEYkpe8hTiMmA8wQX0HXvd7lutyi0D0Zwc3
	 fK9At8Wjrd6zltsa8JN3YFIWBMC+ORBa3DQb5BdL5gufdr+jN2UoG5a7Y5dYupdEJG
	 IZ90LHfs1Se02f3GfBKyHfKj9EpSOOgssgMN9V/ya1sHTI0Asrtsa7YFj9nhlubEoP
	 j1Xyx2i4iY7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB37C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861243358.5903.479066531060665289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbecde366bdc6ebe43862f956e27eb5866c418f80b03432b13971e91fcac9bd
Date: Sat, 17 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768612433

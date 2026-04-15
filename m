Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAF01F2380
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776238054; cv=none; b=DVK0MWAShM0Qih6EOwjmcoIKAyGcdNEJaKmoB5Yns5v2r3HdbVwqx/hnAdswRtjOCJ1qFO4gcTG3DDkCb6r9EaMLq3ev6cEIQvdygZ4hy0MvgfVkO7euNGkHqd81DRjiFIhRtE5y9gJqyiPqg8S7k+rgioHqd8Nd641C/GNpXKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776238054; c=relaxed/simple;
	bh=qSq9XnXmSVGB7YreoxKgWJWYMryIp7P1eunE3qA8SLc=;
	h=To:Subject:From:Message-Id:Date; b=EMvZf1BnYo1BGb9m7NjI4pJw8G5gpdpSJbJKWstoJVy/xHfJlKn1Hg6nKRF68DlJO30L62n7wv7/Kw0Ovu2NsJAWYMhY2xbbTlhj5VoBf2CQr0R7JcozaWnY/fDBst+nR4Lqh7I+jH3w3Vzo7scu/BNvvhFGBPP7TsqN8OHtCyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+T5ZGb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+T5ZGb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB85EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776238053;
	bh=qSq9XnXmSVGB7YreoxKgWJWYMryIp7P1eunE3qA8SLc=;
	h=To:Subject:From:Date:From;
	b=i+T5ZGb3giBwRxFyOCA/Yqc7LQifuWT8zCEy2HHzxHQfQwnCHFtrPvO2LkD4iK/9r
	 3HP4e58Gy2ln9t+Dl4xsExQXVvbbsdOcU52y/oBUVhNMlRwR7Q4YHvkIhlZOCFaNh/
	 OQo0JUZidam4jUfvYRVE9uPuRdB0h6UCc+gZcwhwvHKKvYArTG+zJdi4rW2zXqSO1r
	 r9nUXB75IKwi+JDOD8Dxs2ahiEyA/GcWH+SBwi9QBar0lVK/5k25ZFg713rwuo20sB
	 mt0lTQpDjV2MwIL3MPo3vrET2wK73f+0B8OnuJ15AiBUkOYVB3eXQ2hLRhw1AZOJ7A
	 9/K3KPKUsTAbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B7FA0C40
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623805368.23069.11434537511149799052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896be15d76240a632009f705f31a87a3365412c32df8852337be6aebf65c64a2
Date: Wed, 15 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776238053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D1E3233E8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780370674; cv=none; b=jC6c6DbJKyVzQ1rCkCHxOBQTz1iaptyWMfW6v9vqq6gekHsendonwaSZTkRvk9JhcG5TvNHmXU7SlIjsUnLX1/LW+VhBn8LbG3VN30Wwx366x9jHDAj59ZK2i768piF2XUn7oPojga5+/0vvLzmE879RxvayGZifFE0HWF51ou0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780370674; c=relaxed/simple;
	bh=EF/UHSJavLwnOxZo1Fxr6EQzOQMr/tKpNjsx1Z6mRkE=;
	h=To:Subject:From:Message-Id:Date; b=trXD8JsZoGgmTLk9AQNsX/WHEEgcV2kGLUL+3oMZDjTcKToBmGGtrN/npcGIBNvHYJOMDHZJ+iuwxNteYvNCmSRPkWEDZbo7eo9QPNjtm3mKzhOhkw0VB5KnjTj6Pi/34kKzybLErssfbAlXhy0oetYugoS/53OUmqAx0PsgJ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo3dcI4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo3dcI4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2515C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780370673;
	bh=EF/UHSJavLwnOxZo1Fxr6EQzOQMr/tKpNjsx1Z6mRkE=;
	h=To:Subject:From:Date:From;
	b=Lo3dcI4TltJCo8zsS8xZejIxvL+EPIOlMZkcNISBzo5GYebkehtyQBpaDR5xUzHHp
	 E/0vroi15U29y9nF19ryuNRBMthAfJSJz0RqNhddLqCD7Q6kG++NJ0WoSYsY1O3Cy/
	 hR9QpYnXguQh2mez/oKzhmHj6YNp/rBZztEnJu2V8bcdk3pQnNmALrmvlZo4JPF4Sc
	 BkfHExceqwh9lhPH6GOtdZGHuydpMNnIa8kTggltV/jTy9uaaO/7kg67EKQIsLFvX/
	 E/993e8+l46RDa0SePGlnuNI3FoKU9nQCZZsT7VmjzYpeTFEkKAlPW40tyuMcUQSXp
	 3dbtzYVvAfT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71A2CD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037067373.32177.9973983773916117675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0952834df9b98dc3bc9a5395569cab44601df9e924fa51614794aa709fe359d
Date: Tue, 02 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780370673

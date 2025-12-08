Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD517FBA2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765201974; cv=none; b=LzWs8rLLS/23D1SAZutyeNpmgnHpqNy81Btp8FOuTu28Qq6PljWfT4hoQZB3EpfzO17HBItm/iJuIkwv/SBofaQeh/q36mrLCFvDZL2cDjVcSaJnjp8WEoFU9jT9UoyM3TraP7Bx6b4bEblAD3GiWHe8sf6A+sc8C+1DgRSPAuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765201974; c=relaxed/simple;
	bh=vHKZv8RQnnSC5+jp9rGxWg2ivC5SEYVtKgeySh/nFuU=;
	h=To:Subject:From:Message-Id:Date; b=jvdyaN5BwclcwmVzxEV+Rx/r+L2+/tYRK5OxID4hIp76aAJpFpePorH8O7i80zGXQd4slke7HyzU7HdqiEZz/QaNaIP3fxI33zodLqll1e2yxFDXyO9sjywuV+NGamhARHRkS5K3nmSopBReuyzpU6HUxMxBPNluifEFhEKnuTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGo9Nnc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGo9Nnc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04F7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765201973;
	bh=vHKZv8RQnnSC5+jp9rGxWg2ivC5SEYVtKgeySh/nFuU=;
	h=To:Subject:From:Date:From;
	b=IGo9Nnc+yYq6HrUMIdvFhXvpM3Rkk3q9R6FXwxCurMjHTUZ5oYyn7qOTbT5MNK0pO
	 qWsQCaIg2Uc5Cfbr1Gof5txPp27XNhPbEE9kX1Q8OZmvMVZ2sZyCA0qzEdpxh2zP/J
	 qCmpO8P1SU2b/QfhfIDeS6xQs7nPjm4hyOhsif4WpEVlOA7jcejD/gcV0OBUepSi5P
	 pru5ekJp8qv4Y0rPZRA/Wlj4plmAW+pbetuL100Qwc7F/u9QPMv03xLZdlL8rWSs0B
	 hIKjc7YeqAGhguYSKwWQcy9kewEwuMQFMstl2iV0ceydedGaXPE17lWlGPzoNaWGwm
	 0fa53xihSxvIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9783DD3B7E7
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520197360.32677.16599902687737399289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8435a4e8f32549a870c6a89088842c8ddf6b606a98b11d22ab6535f81c474e73
Date: Mon, 08 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765201973

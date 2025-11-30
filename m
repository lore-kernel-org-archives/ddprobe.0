Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2393D19A288
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764507174; cv=none; b=Yj9ZHYcSXUvI7fYItIEs6I9YFKbM9dnv6iXpL0eKAVv3MEfRJfcNRAFggSslU2SCQJhMEHLhC9BKhex5FvM+hEDkYf/l6yVvObOp0ea2wA97v79Mycouny3iE8yoKh3xZn64x2LsasNRUMxv+iyS3JAzjXvTiFA0prd2esB+FGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764507174; c=relaxed/simple;
	bh=9cZB6DpU99AVSJhD3Scu7ywuKM9w+Ipc4jrGYRffxx8=;
	h=To:Subject:From:Message-Id:Date; b=F+Yq0VeFMeZ8BOez6WsBOcyPwLz+a3OBnb+9M8mh4qTx+0aiftspHbH9kK0PIfgw0Q3hfJBzooyVsSGiRnRTpBGfCCmngD6YVNOGhzHoAnIIsTZ6YevAayDOHjkGE0rGj5Mr5JW6VTgjBi5nKfHjkqqfzE01mC65dJ/74QIEUxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjuKCesG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjuKCesG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA236C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764507173;
	bh=9cZB6DpU99AVSJhD3Scu7ywuKM9w+Ipc4jrGYRffxx8=;
	h=To:Subject:From:Date:From;
	b=cjuKCesG1rwdHddqWdtUcsj8nG5MPKam+syWmALo0wl0OmUjkSFJcAFWt+4mJoftF
	 tHPfBkIjQaU0YUn1Hjj6h+CtV0q2ow36Ogy1MuIACBghuiPoCP/a4xS84rMSy9iTO9
	 7HK6H84OaD0s7T3cDwn3MLI72oEMV26/MQqQim7HrzTAnkRBIbotlW84TYYOY2Vg8y
	 ajXVNjayGvlP+ytNf0M9HV1NTM9D1+r16eMVDqDyQQ5goeAfH7fw1TLn5fUXQAd4VD
	 Cyw0sgGzqKNC9P6zFYwEJdGn5Ae0kS6BKfpW5KjwhJB+VaoQPAeQMHfThXNEFdtRk4
	 bKft+4xhrToIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D6CCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450717358.26951.4253482196592055307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a8317f8a71fb3545a9c7a7b329ebf97a89810cdfa5c1052f6dfdc83b410b1f
Date: Sun, 30 Nov 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764507173

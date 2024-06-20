Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB921A8C1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878823; cv=none; b=KLa0SNTR6JaCBAbGjMxnfU1o81/qOnIdbK+O2zZ59L5i7g1C7pwIZhKqVw4L3OETrUCN3VexVExnVqgbEst9lTOclDM4AHoT+43RU7vEiBnA+0Hb/DURYOC8+Fo3TXg1DREveZD3cAFC2qaAfaF8nUwak68n+CgYA4nWY3ABp1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878823; c=relaxed/simple;
	bh=rApmhwoxvWQE1ciJ1cXLNNQn3rdkaBoiElkWeXFA3ok=;
	h=To:Subject:From:Message-Id:Date; b=TxQm6f3MX3UYfPzIgQUXqTLDTZ9nWv7HZIXFOSnVVHx8dmLxlzPgr9tQzZWrvSrVq6ELCb1UJUD+/YwqjFZXOrZikdz46Idz8QntObl6etJN0bWr7Jxl4nNUWexfuzhN+iqTITZF5go/BMmHyiVBl8yu/8/QhiK/v7T2yTY/DQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8QumoFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8QumoFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47A3C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718878822;
	bh=rApmhwoxvWQE1ciJ1cXLNNQn3rdkaBoiElkWeXFA3ok=;
	h=To:Subject:From:Date:From;
	b=c8QumoFft9QK3steFHA9VX3QkeVCZZpLS4xzDyjokLpT/k4rV17PuqZeYN5Si3FnL
	 zrIgZTGp93KlNfr5zuFhONR/r99EA+EBENgUxNSQJLJHFn2u4tvrxRwm9OJ+7jX4S9
	 Mv200xJHRUDSwaoytkX6fpU/9NSyGLhxLUdi9dnVRTw4ZnHgSKtBnoQgrtOKgWMgKu
	 W4cL4YqRl18cVbxGkEi1UFj+RdNGPx1CIVcPiz0kNXYqaE38Y3H4z5VcoHyaNmQYAr
	 +Zw5z6p4IBHC5a4ScaObxBlncE0PaoThyZImHMXCEuNSwHZEqsclScVNiOhexrn+P8
	 5k9RZxYvES5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC6EC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887882280.4919.11713929000275313589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa068aa0542ca3d3917e81f97bcd76bd7f8cca618f9bbb506fed41fe9d910c0
Date: Thu, 20 Jun 2024 10:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718878822

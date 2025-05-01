Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6031DF98B
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746092394; cv=none; b=BZ/oceD2q1+hSsxIE2gMo+pGR6kkiIeW4uUCVtmMuyo3BdzpfLsiUPjtgCl/jX9ngVjIQC/pZGsjoUyYYitahJJhUUci59DvaUlpHV/qFmxmEsx+rK46Hk/oL9vzB5D1cnnaCS9DlAeS1dptgmk1xVd8OeqNNZiAgkrauUPapDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746092394; c=relaxed/simple;
	bh=63rmachxVGeTk/Q2YtLg13ovbrz4dJPpf/c7/h+M9Nc=;
	h=To:Subject:From:Message-Id:Date; b=IQaJQuSfl6Qj5rXHpNehncQXtVB3OQjeHJbOXtrYJFC29IHy/G0YFCGr0/Y5N8nVxUsGn0hQhF8O61qYgaKDe0WNuIDfmHtZb6Te71Rk6kx0ODPnXGQGkQuHhNZCq5McOMqv8KymRP1O42zLV6LSJi18BRInRbV8RIpVUiXpqPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbS+n05j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbS+n05j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D773C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746092393;
	bh=63rmachxVGeTk/Q2YtLg13ovbrz4dJPpf/c7/h+M9Nc=;
	h=To:Subject:From:Date:From;
	b=WbS+n05j1ryjWoWyI+XB75V2USB2dXPYiBnlunj6yR4bSqdwzV0EsiUGYM406O3PC
	 QkhVLbmT9Btvj2V+Ku1oSqEK1roduQmgPkb3InbDlI152nSrZC/0HVyemGZz8Er1UH
	 oAn/82CIlMvLX+KjtQHnSK1PrYTJVhrUKnl/eEP6j+n+5wfkDXI9JFt+aKxI+247t3
	 vZuMQnfwP7tQUXNZU2GPktKqBxaqlBe8mV9Ji4S+1PKFdOTKQ9zFsawtWT7oidy47o
	 xwc60hYI7CT12KI4n2V2LjHlhjPsYyNGKUNW+5/7KsfYmTqc2Y77p9bTgcV1uTxaej
	 BIfx6omjmZBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E852C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609239357.4163.2116385561645863043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423a61259708ec6714778e31f8672de18c4dfe448a68a678a3cb207f094d4ffb
Date: Thu, 01 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746092393

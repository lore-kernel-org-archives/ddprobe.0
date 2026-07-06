Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299953DC4B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783322914; cv=none; b=EaCtWeNfd4nOkfRgdX4A6TgreThOOig2/Bm8PelhMVBObsC3/DDswTnuqgkwFiZ88u89uFoCOGqc+YYcN4Sf9e2AxpeILR/J1vDgWscOI36mgJqZCOGyw2xNk3GSdICzIWjegILAmqZPJ39uq+5FmcXS1qpHacYcgjoPCa4enyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783322914; c=relaxed/simple;
	bh=lCXDjNUgL4mPnW6kwUfMl2UyZYY5aae6h+/L61juJy0=;
	h=To:Subject:From:Message-Id:Date; b=sBdbN0zAWLx29tElf5KuY1D5Q9VeZY6vm3KaGU3xONRiPaE3PNdBS95z0WKIwYbVqjfgCfzqgTp05djx3yo9KrVundpBBwm8fY4EWcZ/4CNP4x4mANeFEqColh7KIFUN/72wb7Olk9n+gqtML3/qD+ch6CGJJA0YOgdewmfCDpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+VcBCMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+VcBCMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8695C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783322913;
	bh=lCXDjNUgL4mPnW6kwUfMl2UyZYY5aae6h+/L61juJy0=;
	h=To:Subject:From:Date:From;
	b=k+VcBCMQriroFBc3B1vsd5rcYa7LCGloGknRPt/ufS7UnN+5QvYVJSZSBexk2aCXu
	 uX0TBrjwqQhQAPl+h8IMR/xhxlCvZ6mZOSnX8GEpQ0kgXf12Ku+0hHhRVL9br8j+ZK
	 0IYgRyvt5qu3YLfNNig5wS7F5vBnm+rZsrNHjWZHduKNC3qSDcM5p2+FUig2oUx/JY
	 brXFuIuImV4peeWbSHGIn6amEHz9HYDJiKDL2wbzFrZHJfTRvI3Ceyv4OgBJ5pTQy8
	 GedjPsXsb1KjAtAm2Lyfv+ukgmewxKy7zRniJMXhPrGMULMD/hSbcICNwLL26EvaGf
	 ++orWsBCt30IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82C1C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332291368.10592.11629012257319632055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd238a9cc35330ed870321d40a574ba0a062dbeafbd7e7e14664b93125823ef
Date: Mon, 06 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783322913

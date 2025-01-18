Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A3618595F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737199554; cv=none; b=LpWndExPb7smsFenfrOO9oZc6cSzx33dy5YZH5DxkAuqwM6g67SexkN50H2l5MEpoSJmOtMm4iMnXZnBBVkKhyK1zXcgPtKaLlPKAalNRAeGToCehDxtxkF8svwc/JBvViPhW50eznZW4WdRQkpHsxlUfrsWUU3iYIs0SmCq4IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737199554; c=relaxed/simple;
	bh=d77L1GEOW81IkfYOeT4Cqy5x+nNsoClWFpQIi1Pxdqk=;
	h=To:Subject:From:Message-Id:Date; b=l20uQllG1f9pxgIpwaYFUTI/RkdocEPTWQ6HqPD8VnC6xTicLAhFMzJGtd7kmmCv1oCSlatRepPhtqMT48P0jdspSdxEyCc0bttjMhiVG9EY4V86tsyBtT0LiH1YFh+NF3mpsy0mPjlKUF/q5r53MD5IKcmi0otwKm6+tCNv4x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/PT+JMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/PT+JMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DEC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737199553;
	bh=d77L1GEOW81IkfYOeT4Cqy5x+nNsoClWFpQIi1Pxdqk=;
	h=To:Subject:From:Date:From;
	b=D/PT+JMaTL/zsJlpF5g99LCDN5DKXK53cMw/v0ZrE60qPDjDyXs7zkVzsLeUVKEZE
	 /3ycVh1hQ/CqqJdMOPlL0gLq68bpq/oTFtCT0LsxUiAHQ46tIFMC5gKotN9Cb/ym73
	 jza96NSoZaz8zjgQ7jmi3G2IDeH6xAfJEJvqyu8HsjrlgyVdcgO7fOjjJcYJ8YX0AC
	 YkFTfDKQ20H/C62q7S1y/qDyRcgwyPwdBKVXi4G1PPXk3im95v9Sv6C27nHx6KQpk9
	 Rz8KnKD5l5DX3TgIRJyWM1NwkcQlRqWxEMQTsIuu+Ik0DF2SLlwL3gzwI+WMA6pHNM
	 TpBTJVDLXlzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4CC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719955357.6222.13971967517131121644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e5f6cf2b509f58f2c1db9bd0b981b71f22f27a1f6a1b34eed6f1b14348f222
Date: Sat, 18 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737199553

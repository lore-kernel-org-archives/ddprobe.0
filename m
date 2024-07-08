Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C3F146A77
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720457783; cv=none; b=UDXIpiyvYf46dldlLm6v291PHkhdTL3a970b1HLyDraB0UzFpz2rE6/9PUDP+4Rx+ZjvvG9xwA7vdbGYZYeKbwff1Ub8NnU44gIbsQUn/ZBvbDtZ7C2y1Ql/waCP8ThOV8RqTB4/M/nDTndTmutgCmft7R/J+ks8zO1BrMwIy3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720457783; c=relaxed/simple;
	bh=8CXTbfTtd3JJAtLmoJzZPlwee1QL2QximPybRbJ/qWU=;
	h=To:Subject:From:Message-Id:Date; b=N2TgXb+WQX11mIPAUO+7lLVi9IWRPTRrFDiuswr+Te0wWvUds0hsgutV/J6InIJK0Xkane1Hn3tqwKikOx0nbzCLwjmHWbFoT+9fbN+6EP5AYGCfQaPU4YJ9tapVGQ7bg7ByKN6/SrCT81FSQDoUFBVZ40x+GTwGxFeK2yfqgxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3c8tq9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3c8tq9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09AEC4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720457782;
	bh=8CXTbfTtd3JJAtLmoJzZPlwee1QL2QximPybRbJ/qWU=;
	h=To:Subject:From:Date:From;
	b=p3c8tq9/5T3/woLcTg6Zl9KUM0fD7qu/LbBAqfXwagDpxAFj0scCnO7BHtHP01fRK
	 lQu/wAuhPqUTbYKZAhfl0FOYfd+UmHmBSCPScQhZp0XM0yg84NBQGtZc9ltd844D3S
	 gwaxjhQPxBuKvlFW+O4gcOV+CAA38ySRF+FTQ1m5jxN8hAnUfXEMvIovWeJ0IMQTO+
	 p172Dag+2qG5/axDGtJSbL3ReDAeQaGOl0xSN3MK2SD9GjdOjlpr9n57GYiRbhUkVC
	 cNcEYLpWb4jQyh+gIMQQ5q/ilK+OpvnO8ibL1t5n5hr5J+JWtmBcG9O7xVaQB7P/V7
	 Rz3Adic+o9zvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF22EC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045778277.3836.1325285485483980601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c8ff565be4b4ec0eb13e98a8093f365d28baf18277dbb7171a0054e97e5075
Date: Mon, 08 Jul 2024 16:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720457782

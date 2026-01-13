Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03373557E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768346634; cv=none; b=uStKh0u3AVBJ4aIJu6QTTSJ6/lDLly9crepKlG7FJnnb8Yi6SUxs9py3CYrHCDfUmxQWRXSOyoXuIrQ7dQNeHynpxYUPpeL26gBRBFvDt8DEOcC/wVjbrogGhCx28Tl57pqm3nVVnU+8Vy5vYFdsokdFr4WuLih1ZBmpJ4uSwMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768346634; c=relaxed/simple;
	bh=7ryklill06lOjVKi5wnZZCDeiELra8Nxa3wDRju6cdM=;
	h=To:Subject:From:Message-Id:Date; b=DTm7JTHv/zXvT3/gNYgyQ2+pGWmStwKNXeJcmKtr3/ERlZpo03O3sxy3AOvUpvynqNg8IXL7d3bZk43tEz5MJuzUCwI0VHr0RPK6GPc5sb3Nj2MMgRG3ktZPWAOhDkkKcRUyeLsBBbP0rpkPXLemWfHG4naoIwPjsFT5hyyB33w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNExJtC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNExJtC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC9FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768346633;
	bh=7ryklill06lOjVKi5wnZZCDeiELra8Nxa3wDRju6cdM=;
	h=To:Subject:From:Date:From;
	b=GNExJtC4BxHwRkKO/9ZCb3lkFFfeSSVKngPvXxuf8nkJuHQX04NligdNzGcrHtUuW
	 /Ig1GIsrVy6WAlqtTmeGhMA9C5wjhG8w4dqE5iCwiemdum+OIbIuBLRTMzbbVEUFGF
	 X12d6fhkplxE2kP9FLWy6GdwfIpYE31NWWGak95pMSdaKuvUtzmZcDtYrx+HkBCoQY
	 BVJwU+2ea+pcruoAIxBw1E8p7NDGW5Wzd5OVn18W0hUxgIZLg9NUdZYM5gQEV74uct
	 EBXYfs3WKQ9eiqjBhCX3rbn3Nsl2oWBatzgOuJ7bxHBLJJq5Pfg7tCGx6jOg61Xkkk
	 JvtArgQh7UuJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC7D2F35C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834663358.2767.17813112269756811370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fd92e397a1659dd8916f904e9beb7bfa53fce84eb3724e1b73f1b4b2dfd576
Date: Tue, 13 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768346633

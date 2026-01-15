Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019713A9DA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768491834; cv=none; b=HNGmyemXjZ7U2sO9h2sCpFIQKAG1ApUgDnUwe/cstONMbuDxI0aY8O/usBdQp+QG0ROe7xVShvovXuiRVwLK+tYmeiS7WsM3+JsC2LQru/WcjklPETO3MsgUmeNP3ZCFFEZFEgngr6RqO5L+/+YisvJPZS5Gn2FWMeXGdiKVamE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768491834; c=relaxed/simple;
	bh=oYzoLAv/gKXQmCTb7JJiFwJOX0tXwAveHPVXQj2fD38=;
	h=To:Subject:From:Message-Id:Date; b=UfCdQTJ2QdRwNQqRQgtarRsPCkXLsKGkPOWXNpJQk4dqDOtNHXUWQNkO9WnvR12YxL2B0ebIZ4nvcNzH3U+0E83QhNsH6dD6iRqHozHmOhhcscjH4KiQk7kZ12SXw+Ok7dVL57j9Z1KosZlE2Hg9cbsS65eFG8iVl9rY6R3hVh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mywqPi6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mywqPi6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2436C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768491833;
	bh=oYzoLAv/gKXQmCTb7JJiFwJOX0tXwAveHPVXQj2fD38=;
	h=To:Subject:From:Date:From;
	b=mywqPi6uxrVyrz7IL59xtCon9OKT8vHf5smMbwEKPecaoGIR7eNTSCpMnAVhDqZp3
	 JX42UhEzEEhBe4vyJCYqhLchbXURznuljCUOijVaD/Y52EHYWDyIdVH+gELzFDrwRS
	 8wA+wORMfB6LrjSKth94FeEBwTksT+aU14eLJ1ginNkysftCDpKXTOmzXZt78ESoVj
	 v383N+DuXRRSmvytd4S8UC9O8lvdFIEujrSVS9YmQjimCdip/0RRo5Y06E3Aia/Us8
	 iM5pZEApI1Lj0rkGQCLdEYQA/iO7M1x+NeIbY6dYjjunsVVS+UTEDzYNmJd857Jryh
	 DW+xeTDxpKJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9322BD44C69
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849183359.10365.2607611092744155822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fda6119720fe05e7d8b9d464828b7f5e99195b23ee79f3a2a264f92c6124a81
Date: Thu, 15 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768491833

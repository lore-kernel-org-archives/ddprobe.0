Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C698228D829
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753358993; cv=none; b=DzBzKPz+abc3abWl38dHdxW+yz03+1HubtDOtK3NlwmhSrpLv55uSX3/+vLNkEJdVR6OXngQnPYMhwgDBm0XaUBsOs4AG6M/WMLuBTXs6/TR08ZScLzi/yHvpNTWOJJs5/sLl3z5TfnZ+pZ1waBB3Z1lVLhhpsKlD33okxqayQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753358993; c=relaxed/simple;
	bh=HvmbpO/3GxtP3TY1zTBr+ZmIlcXg7Vk19MImSszA3WM=;
	h=To:Subject:From:Message-Id:Date; b=s6e8QSep4mmJ5uj6OkvSEH6Nr0jDLqkdyjcQ+1IT6srZl2K8WA4gxiOb2GVaOAL08Or6bamwfkTqn+z9YQdVbjXNScs7kfCzGdZvWgzuc8mkAXrt48UJ9/YG2bmKRUzqIQM+qjSMAvdPQ3W4YAfZV/M8fuy3fe/zADOh3WO0jOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPyHae4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPyHae4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3610C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753358993;
	bh=HvmbpO/3GxtP3TY1zTBr+ZmIlcXg7Vk19MImSszA3WM=;
	h=To:Subject:From:Date:From;
	b=ZPyHae4izsTGp0ohoWtyUlLdjgFEJFVyuYRGVpfWnpJsq1ykLP/ZflfsTGoKh9IKz
	 UAB/E4QMHGByY3POPi+4oSwS7EIAotCKcj7coEjOX2zhieSMJanbTgOFEYr13xTivQ
	 GKpLjyTdM9POGgu0Soo86V51lPYShfhBb+xafD5ugB9dkU1C8Xv6r86FiilkbZ3pO6
	 sQokFs/TyM7aky0ft7LgB7QyUdgr8z9Ye8GKGDzF8WunYGiIynXs75VTVYWjIbktkh
	 Cp/WikTgYErrvK+3OjkkW4giP0fEu+bwoCK5kIFDbsJwe2Dy37u9N9NAjlNHsR1qGV
	 N3FSlXRjwY01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE3C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335899357.4659.211758743511333890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ab9733e789726c9cdfbad3548a34dbc90e12609adbc2b81188f77e76e4e701
Date: Thu, 24 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753358993

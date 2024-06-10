Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5455A7441A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718013443; cv=none; b=ToBVbQI2NuAMm9bYdwxb2swdCK9yEgiOmUXkx2JKyDqXlq/BvHxdaOgJYojo0eAHznEFJEep7KskcdemxxBqpJYOejZFVjpDN35WbPH++gs9IufI/Y4avMzIVPW7QEdR1CwyeQOnyaaVuzIlMW5nXez0v0P/3f6K31GWOEkoths=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718013443; c=relaxed/simple;
	bh=IPrWh2XImdeYX9hsQ+zdDeMiOJp+wQ0Jz32nvdLJz3E=;
	h=To:Subject:From:Message-Id:Date; b=m0UTU6ODnd9jVDWBLM+R9ZDHbZOotv/6iSPIgZJy4vmBpaGWkRDsWCC5nNobEQV6Nu53nJ6jXPsPA5u7Iee9ysa4inZvuh+73Sm9D3roTLkBA83W1KMcHMrX8tg2Y8J1bCvvLtpDCjdVJZwG3ebatlx/YFf1SkDG+Fo3rlCVpyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcIBeFfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcIBeFfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D647EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718013442;
	bh=IPrWh2XImdeYX9hsQ+zdDeMiOJp+wQ0Jz32nvdLJz3E=;
	h=To:Subject:From:Date:From;
	b=GcIBeFfqlHJAC3y94HjFmnjNSI84GGAYObC0nLbSNTnO2foizY7WUHC/WTe+Vj6G9
	 fBIqG07Ors6J5spSCp16ry9joofyX+W5bENkAjzxm/3Q2ERXSy00fLqGBzrIb9oFNB
	 qXFlvRC1UeuSl0W0uj4G57CQ/vGVwBy2Wc7CGE949Y56z9FtBemEMMqUVdQS3s1AVY
	 ydps1v2yB0vFk3mEJ9JYmV9BgpbefolRKzpPenZsVZUG0vJCKeb2Is8H7RjEt0a1WG
	 aZU8HYaDi+k+Ob2m6BYIqACaoLwfHNc782uDREg4/xd6gYryy/5/mbk8xAzGsQKTGH
	 b6hQiHQxzbGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4ADEC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801344279.29281.4207991325079947629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb77dcdce9b7f17a81d9bcf82dc208a1e57711858f6e9ce416e3afa537502794
Date: Mon, 10 Jun 2024 09:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718013442

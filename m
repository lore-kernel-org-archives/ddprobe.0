Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DF933E1
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742445594; cv=none; b=qpk1ju5qK/01kVqVEaSZpSR7eBtTrI5G1zXc0EdGoq6TqzeFnjecBQXnBw9e1b4U+I60IYj1/vVM1is9x4HoZxlXh7Aa0cbFJYuyLHh8a+Ga6JZeJeHRV2fyXa5BXejrSPcZOvdATZKisvnsEtuugWkON8amkmwPkMwRvbZH04U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742445594; c=relaxed/simple;
	bh=0IzW+Hg06T5ir+/07hsWWYEeyq7r11LFuNQCV2rMOvo=;
	h=To:Subject:From:Message-Id:Date; b=BYhozfPKbYvHwQCRx6oWAHsD/0gFzRPFxxBT47b3s55KxoKX90NS/AtocRVF4+5aTOmw+zFsJRpwKREdtIp5MZykydWXHlW3z/k1kxIxgh9xWo/2HaNufGMjkV0ydpKPicwaxMjr6L4dDBNhl57Qgdb3QlUGRYmyFleLvAD+mZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvuR+58u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvuR+58u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE718C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742445593;
	bh=0IzW+Hg06T5ir+/07hsWWYEeyq7r11LFuNQCV2rMOvo=;
	h=To:Subject:From:Date:From;
	b=WvuR+58uPrI7TgAUSHVgmWVINSGxUkXjwVZ1jZyDuQ6ub5cQWRVZwrE0th8l3PAeH
	 v8B54MoH0e/dUzIvRih3IT2Dd1JVndFV62/+mH+LdM9hyNZ7M7gob7xqhvUTBVDE5m
	 y/rKymxJI1BqnvUroFAMYtrVZCsRmXoz+iDgs48pKFmi76I6BPF5YIVQhKGMq2Uc1q
	 ZMo/N/KlFnjMIM2FEsiyT1fs6dN0TXX22BlLhN5ExFeev3zcf3mkZ0a01axebAOUFj
	 w9ATuJVecw51vvfzLWCp9MdmZ7la98B/3VyqDcGitm1vikBMXfCOHG2kA0su+fgC3U
	 1aoP81T5V8/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C7BC35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244559369.2945.14385780458335676626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e627da3d9966176fe32d335372652335815c4211b72f0fdf9760f807dc41fa
Date: Thu, 20 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742445593

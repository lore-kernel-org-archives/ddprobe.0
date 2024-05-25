Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A056B7A
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716671663; cv=none; b=GHwzsHEuRXPnnQ/FNZQQ6adkbnZlzscvyZpQQdat4OxlpwA0jOKNik8H99xgf35aoXM7rqZ73HJjUFlTCs10h2OTVTBsSQXi531+uorNfXH8oJ3BcD35KQyiSaPyT798W+tmjnRsGPnuPQWBd9bhWDsAtnJZR8HukV9Ndhf/d40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716671663; c=relaxed/simple;
	bh=u5dNcVpqi8QnhlQBsVkqqVN9eSlohuGoagT0K54KhTQ=;
	h=To:Subject:From:Message-Id:Date; b=g77UXcoItUOIi2UM4hS92RGBtNsPehFHe5ysC1IWGd5eyfnMxKymG7Jx5lMndrXe4I3dK+froMERKQfLxC2LYMlLPogbSt6G9Ule+wTGUCcCG+MOvuWC7LVCnbDkFYNbyPQCAuT4ZV528w4/Pfm4vfFUs4T1MrpoMGeRf1IBr98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trMbc3zD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trMbc3zD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8156C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716671662;
	bh=u5dNcVpqi8QnhlQBsVkqqVN9eSlohuGoagT0K54KhTQ=;
	h=To:Subject:From:Date:From;
	b=trMbc3zDib4/KA5uPzHqQtTrUEK4iKmbQjwJJnjmaXFCUZCRVXJZpR2EW8rIqsSnd
	 pHuU49mc9AOspgsF+oLteY6tdbHPVuClC+0LcSj5h8Q9nrgyhYTVWLZAIUii8bu0cn
	 /bMSe4d594sPvnNeufwMw41VkVkDTV5PX9/x+yWQzoZ7ibDS/fi2oU4zpJ7n9AnyW+
	 XuFqJNNxWKWv1yTpAxR84wf4JT6tqXIeJPPZevq1dJe2Dq9TG18KcAQbGCwdjsXA9l
	 ud/4CzqUSUSEY0+B0Qex3bxmhgpEA/pDIEZZk6BNdDalIayCZNdQMXxbUjTkM2uCnW
	 QkaJIPcaSp0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3919C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667166281.31024.15110465035333000548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a1bdf76f7b5eef1686ec45b04f47540be2d531993cb893e8bfd315562ad768
Date: Sat, 25 May 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716671662

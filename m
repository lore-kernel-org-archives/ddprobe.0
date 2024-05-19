Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBEC179A7
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716117143; cv=none; b=YS/bB1C6SqDghzvs13yEcOKd8VK4DuLNEeioKkXRPQUtZaQ5AfvWH6DM6y2ket0pjaKaAgyAwr94CdjdsmoixtlyppQf8pQRcXHj4IvkIBho+5AR2SoI6efl29rGYB4qWkRyv19w50gfPVzuGrJYJqr/enWrOQiZlygz2gB8fFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716117143; c=relaxed/simple;
	bh=rkUrKpsKsHj1/0ddfiUGn7tpB8q/AdIoGenylvEmKlk=;
	h=To:Subject:From:Message-Id:Date; b=EdQncdICiwzGZO3FSoLCiq8d8QehCX5k2ZPSlJD11DU35zdkhK4zoZeg5s+6QNvdhYO4GVHC9kDL1MENwGJS5nPnZPGg/Jjv5nhgNU4HZ8J0T1zk5qyZuxNHBpBveUhv32fJZWelHMDx/y7ZQJdsy/A8UcHc7BfcHEeeNpIZIOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9bAIOER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9bAIOER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A85C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716117142;
	bh=rkUrKpsKsHj1/0ddfiUGn7tpB8q/AdIoGenylvEmKlk=;
	h=To:Subject:From:Date:From;
	b=k9bAIOER3+bjX2AZrAcU6bNeyffR2ZHYnmKv6rEAAd5Nct42M3fxQ//adAtOaurLv
	 MJlYk0A2qiMWhiBcyPLgKYcvuyqIqenvD+ahujTdLumFUwWWBjc/mZZTzEdSsDX7Qf
	 L+zvqejDu0d/U+YKFxvSjR7iK9kBnRc2cRXA7QEtnabTfP8+0iZ27btIuVCUfqs3u8
	 6Nsi9mjqcxCXLYb9oshBnFHtXquiOz6AkCTt2+Gsxmo4p95/qEViKeNhY047g1EUYb
	 GrkYgQbWTkv5FvZ5OB0Q6emnm0afP3xSVAoCyYINX6Vy8gkZGy9axOBTJ2aPQ9IIG5
	 wmVRLlOeiH3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9485C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611714277.16273.3201105534237125093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d08aad6d7f91a92a2ef4288dabd241976b8619a90d15ed145bec7f628c1174d
Date: Sun, 19 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716117142

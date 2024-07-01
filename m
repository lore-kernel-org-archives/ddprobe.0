Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B38524C9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719827063; cv=none; b=LtkM9g1Bs5Oawk2sF3IiiyjnIx6ZiZdqOP7giFrk87T4i7lUNyb8xBCgqLWs6Twk7+I4gNI6m+hlxh24zNbc7m6LxXIJcE0CVcIql+9EPYsvHmM3WnmsoHVwWYlKqtsMKkHOEQMJm9QloKxYu9Sw6LEZIUb4ub8p1PapYAGldXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719827063; c=relaxed/simple;
	bh=8Eq7zx7+7hSa9PMlpj20oi94OM7kU+iBumrectqbacI=;
	h=To:Subject:From:Message-Id:Date; b=UbHzk/Hmvjw4+SbnTFOts3+gsy1lR9NyiOB0ZvIkQWen/5WBsTZYAYRk98s3tWuT/7ley3OjyAoX1pbjYyeZytNcngJCpK/gw1uzQQyWgto/BQzVossb2g3dasqip+WmFSl1o+Ud55tv3BbcE7D86RHq3DKfAzruBoHUnOMb9oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vwbui2az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vwbui2az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F3ABC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719827063;
	bh=8Eq7zx7+7hSa9PMlpj20oi94OM7kU+iBumrectqbacI=;
	h=To:Subject:From:Date:From;
	b=Vwbui2azOzvry/sgs247Bl52Xou53lDGgQEX8yIicYhdXwHbFGR+lHrp7kQWK7G7N
	 1MdbuNsrRt0UyyvAywIkDg6dqxCcCyeHDSLfCotK33QVM5QnVzw7dbYqHE26wyWFg4
	 n7dNxte8IXAKryRIyBudt2HlOfm8CD63wfQsoajbms5gjVdwa53FwgcWjZrEUktw+Y
	 JDVJjZhS/+O4BqJ1mvOoh8Zl2+WjDZRGK8HBQ1XaIifDnSYjR3EAMCMtm64zEkRfuF
	 IYtxNn0BA2Rk0nkhyLqfNGnfBjVT/rbnHviee60eiurRucQmGuzuuK3Dth2MIt9Lwm
	 2CWJ7lfvR+GPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE78CC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982706295.29016.17707335451556486537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24f842ece9363ba33b61be85e459aa301d8be8c7d654fb76585d8f4d23f1b26
Date: Mon, 01 Jul 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719827062

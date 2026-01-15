Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C1013D521
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768442634; cv=none; b=dQfAam/qxd36AJVkT7YxcCkVr8ZzcA3OE7xd6Ms8g6vL2rAqUHFqrpKCGYhJaIkenAWSLRDP5lMVnEFRurvoBOspe8SPi0y9BrY1Gc4bmapT4ldnDYGjjoz0RiHzy4R5R51dAffaqMK4LZPsVAQDuG7uXE6pCIrZ3sRZygH44T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768442634; c=relaxed/simple;
	bh=pDoGp5BEcchI/3rWWkUupM/0naEvBpFVQIa/Ddwq4rY=;
	h=To:Subject:From:Message-Id:Date; b=NDumUH6jkj6MJRH0asf/8BZzeUKD3e/62F5bDQAVrQUvANY6eFpA826t0iOlkyDSYo0NoXERcsP72FdPtFufBq3UUrL9/An61hIcY76JZCWggO3hVuxIUlUFU2bUYlodQZJ+kDQC35ibWcUyWZhhNKBo4oXiGbT71aRGyMDc7TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRClfb9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRClfb9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC5EC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768442633;
	bh=pDoGp5BEcchI/3rWWkUupM/0naEvBpFVQIa/Ddwq4rY=;
	h=To:Subject:From:Date:From;
	b=mRClfb9QauxuE2w7VckzP16XgQ9BMDJIPUAJmvZ7Nn4mkU2J4Gbr5pFgx5jr+LE8Q
	 SF9+XXvLIzIvm/L+ul6j39giAc1cUD7NC64LWmRMHrBoGZy89ngNXTD4EQXod1+nr8
	 JxGlnfiC048Yi8GavggoqGm52K2T2dwrcfnDP+CW//IU26994RrKm9I0neCbeiN01o
	 WfD1vaZeYVMHpHBRHq+d/r7kzVM5l0x5bi2diJj2hVwErTSmPW6i6h4m+anEbqlIxm
	 vUfR85VRg5h+yC68W3BkFOsxYsvJXfISpWce4GgDtbPoWiaTmIEf0SyPVM84sY1uhg
	 0Jpnn2R+Iq50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4BD3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844263358.20113.420511985419781051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401051815c4c1e8ef0be2fe1558fd8c94cf74033ff77fa87a7bcafb2872d57fc
Date: Thu, 15 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768442633

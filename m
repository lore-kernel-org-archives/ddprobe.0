Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D275111A8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721196923; cv=none; b=j5mMIEfIGmyzeidXTL9iAehodQ2gJDbQjdUKXcSa2IrzfllEqF7xnoTnGdr4SH9Ng+TsBehs3fQ2Hzb/gJBTsPwLEJ867NMv9MkBWZUK0+MdEP5VBDSoqOEXd9Sj8PT9ZMNF0wMtEIafP+Q8vWVpYbu7lq76uPf0mwcpXviU4GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721196923; c=relaxed/simple;
	bh=17JZzvFedeb5zGV2Ayy6agmMpB8uZZ15GZHtqe0F3Gc=;
	h=To:Subject:From:Message-Id:Date; b=h0vsfBIYvtEbTvv4t4RUg96A6tFYGp1mpoD4qegJs/j2inp0URyCw2UJzpbWgr+wuaGmD4aDQ4ZCZv+DG0rPvTcJsrtzeFRNhZq9Hq6FGJkWG7MW00mlQxRc5qMuiWuD4QaVbHNekzapHNLPx3PPnARZi7g59v8cVGGcSzxnaiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpSUjeYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpSUjeYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D270CC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721196922;
	bh=17JZzvFedeb5zGV2Ayy6agmMpB8uZZ15GZHtqe0F3Gc=;
	h=To:Subject:From:Date:From;
	b=YpSUjeYQkfca10/sfQJU1Zf+b1FEm0ch6kx09Hpn+1LrI//JYtWT10QMnFRuelTDV
	 O9/NpmvddGmscxc5zoDHG3GycCUvbGrexZtZxqQTIKpZ/+790YCS0+emq88I02wd1d
	 /R3ZdgR5GjWdOhueoU+LYoiceF+jdiYtYKFXJ6dZ5M/ZZhEjIH6m4Z6EQHjBCzKASK
	 6VkbGR863Q1eYIlLMhq5LW7nOeFAczPGixRsO4TIqCtStpaQ03VDqh4oCI83lPC3J0
	 bbV6iyf/jOP2T+5OnC3LB/x9lyFvCwhn2htT0sOOK1QFRvGKDm+rNA8juSOpNqKN/h
	 MzbNEQlh5PLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DA6C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119692278.20983.257002447746574251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76421d5aac4d5177c417e3021e86a20fed26ec9d0252b50150806abc5e9b446
Date: Wed, 17 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721196922

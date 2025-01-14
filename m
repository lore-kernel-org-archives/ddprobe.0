Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEE519A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736815554; cv=none; b=TDUoql0VxxSJvE2mAOl3UCZOxnWOcAWxSsVtGVm7Vqztv7xpiIZyNvPv6Xl6mrSybeB//RKLyGo3IXayXLFSMivCzsZvM79FudaPwZhBO69zDbkS6OYYO5XSWr6vuaBzj0mZjURl142W+ldw+ur0Uzz58MJEy8nyOxgF3+OfKzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736815554; c=relaxed/simple;
	bh=6rcthN+/xpuITKa61bfzBB7i/CzWcWvJ/Ab4l1q1oLs=;
	h=To:Subject:From:Message-Id:Date; b=aL/MXzY7+HNzABWVN6ErLJEeh43YYZqoyclFDtPc9JJY43Z73GnirYdIM236Ob9uLsdoTJcqic1dcM471hWT7WSZmzGkSNDdFWzwQuFl8ktIHFdE80Sswf62sANz5NFSeH6UXtQQTQT35Uo0R4UUDwGxWjbhwr6HpGBcYaHvRmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1oBUsTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1oBUsTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C943CC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736815553;
	bh=6rcthN+/xpuITKa61bfzBB7i/CzWcWvJ/Ab4l1q1oLs=;
	h=To:Subject:From:Date:From;
	b=t1oBUsTmTM1g2LctMuqmM2YGjnnUfpc86HMNCs7VXgV3XGSajgJZPeqBycScrMe8v
	 yM/D0Zb6AykFSl3DSZJ3/KK/QPiauFT1xuNxXKGiU4P0aFYEnB/ZH7a7vHzY9Iw3xx
	 6rH4FRKxselfDxKHjEn7HOuFMWzOyR/WtZDdtELpJImNr7MqZEAbAxwjTDRJEAS5A1
	 xqoqYMBsGW0NsJBUvwj7xdTy6AXjr96LCpkU8s/viys3AmNkRGgOVnjIaE5UkRb9R1
	 SCaUdf2sN1WAQq3sAOfGnBMbjeHFnfYwrzhx0PQrc3QlhpahTkIt9w1ivtl0UHZbAM
	 aBSBCMUDtIj1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CF3C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681555364.31091.16290772805152958648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8baff1ee96cb4e10542f46faa9a58b65f6e4525a717b8ec9c6f310eab53469ab
Date: Tue, 14 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736815553

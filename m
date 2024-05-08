Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECE356B70
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715172143; cv=none; b=a5GWBAnMAd5ro890EVfpd7ru1PUWpu/0S8/FRQAnwIc5JedbKqXQyZSQEBpJPKtMA8oR9Txv6gwMxuRZkqXLIKMjATa33dKIoiKV+Aq4/5jCPObewADrz9yKQVrSB4JIaAqEuXDNGGQIeB7UwmNUwX6ULcwVAW/Aq9hUBn9z4Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715172143; c=relaxed/simple;
	bh=LDrhBLRfF4lNl4DSz4RVfD3lwb9gZpaUzrKAR0ORkC8=;
	h=To:Subject:From:Message-Id:Date; b=NVgi3sv3IHzVGdofdoT1fcrrQOUF16yPHzYpDqK9tN2xoYRe1ZxvnV0K4gVpZD8Ht65fMSDQOek/7Hok7LR2etlh9gTs7JcPVYEMHozQSwlKFRJDfvDs6n3TY3Lp+CWuX7Nxb+H96ycXBoNqD+I08mbPK1lIRq+oHJiQ9fttNvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=treg/f7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="treg/f7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B8CC4DDE6
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715172142;
	bh=LDrhBLRfF4lNl4DSz4RVfD3lwb9gZpaUzrKAR0ORkC8=;
	h=To:Subject:From:Date:From;
	b=treg/f7DC198J1LIoTfc0sSQg9zE1ArFZm9dhcYLzHZ/Q6WADhK29KvN+ZHuTuFWU
	 raVgdnCFZAo2yuExmgyiwunvj9UJO59XBnwA2ZTAjucjuVecgcRDy2qqfPs02AmxnL
	 3bGpfWnWTmHxRxhUslVnO4TbFFPFcYenU3gAAQduhwsG5WH7mjJGHJ8W2MAx1IQplD
	 609nDrk3NWRQoI3b9dcthD6YFxp7v8l6bP5F4Q1Bw7WZ9xiQixtO64FUOBKG+MgCzZ
	 U5wnDFYrGsI7lDxk25qwzT5rcg4y/i2/C2u7kqUWr0sdXTIK3peSMByV5XI3d0UgF8
	 p0b01tp4jMjzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AAAC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517214278.1709.8219022487341858276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81092a55fce9552ad2f28413487a9126cf9950afa11beec64368a5694cfb004c
Date: Wed, 08 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715172142

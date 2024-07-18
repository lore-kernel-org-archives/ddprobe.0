Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175467407A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721312754; cv=none; b=StnP4feGmSmov9WvxTZjUPySj+wN4z9jFtLrI79FHb7pH4HMvIgouvIbxX21oigWNjBxUYbHaGF5YHxKWe9ssty2S/zUTn7Vkg/pV8YwZr6PzXKeugIb1+eGVOcicXwBJ8buZcWtxb9TXAq/8MslWMwtoVYBSjhQurc/Iy7MX+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721312754; c=relaxed/simple;
	bh=7qawQMEfy3YGdgnTrJ4YtRYs0H77ChsUGVwcRHxYWa4=;
	h=To:Subject:From:Message-Id:Date; b=fevegZkAE3AM3czf6bQ4FLDW7bFwEXNBxSBluDXqHy7MQmoPfPYctn+aNc3IHrphBIdvGK5spe9ZFxratVSx+HudTxWgfPNv230QooiBk55yr2jFZYbJAa3Xcsm/SGX4R8mxeeAPaBUUNv/oCDBmQPOAD1VaT+Gf40yz3DD0xgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YO8oZ5+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YO8oZ5+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB28C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721312753;
	bh=7qawQMEfy3YGdgnTrJ4YtRYs0H77ChsUGVwcRHxYWa4=;
	h=To:Subject:From:Date:From;
	b=YO8oZ5+IEQ+/+AeTRY2ciBMHHFZ78KeLD+b2xadeUiefwvQ4tXvd360yrHi78Pdvw
	 m1lvcxMK6RaIVQT5sMGXpRRKL585m0do/7JZ0uym6vVu9P87UgUaiV2dPHi32eGuez
	 QgqThAfz0YZUpGAWytjI3aMASRNm0CfpvMgfKOtdSIrRAtTxW9Fac5mAAS/9jICTIV
	 chE3bWg6FWlxLRU08yUQefVtO/iKy5mZhdALHjTPTjizBBciX7PW7rKgBwy8e6dnFF
	 iTtyT66oSNTLyOmRVhFo8Gteuh9KaXjdxM12Bt3ej27bnvNtl+ZB5q0l5EmPUMBnPL
	 1o3Sp7+avapEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFCC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131275359.20584.14454457522252929440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c1367b8c02a1c6212a42a553945da4410fff6611236243f2f4daccc6d6d713
Date: Thu, 18 Jul 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721312753

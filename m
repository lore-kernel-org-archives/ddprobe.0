Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EE119755B
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746367194; cv=none; b=CqG8FO98qxW1vbdB2nsea9sfTo5QbV0gejZbU03Q9VOE8U2RXyknQrqYaerQBAzXWGx3tByKaCC+q01emE1brwjPO74pyln4NXbnHNBXctJS1FuyrobzAu3A03q4dU5/G+12e3Gf/HvzmNJTgkercHm7UaV1rYrwsq6ffptdu/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746367194; c=relaxed/simple;
	bh=lbwOE6TkyHdcSrBCLkYa0pnaEEoMRGCX8gR4onBuYSY=;
	h=To:Subject:From:Message-Id:Date; b=TDmtODoZ5QjqBuLs55QzQ0D9YG3mvPJT/F7IuRGxjI9GmKdoh4HsgmS+0LegDg/XWPIshQ3gWxqHtRz4iuzQoG2NRQlNNxVWri7lfur5OcUtZCXb16aXEro/hI/BRE3GyRjdiQRL04eEfzXBeGTih9e1SgRg9tzkUcDBeJfCrcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XObLzxQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XObLzxQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746367193;
	bh=lbwOE6TkyHdcSrBCLkYa0pnaEEoMRGCX8gR4onBuYSY=;
	h=To:Subject:From:Date:From;
	b=XObLzxQR0PS6C/CDmS6MqqpODSjeF+vZqkUZ6aepBy+JVAi3cN3ecOfTh9YtDO2I2
	 K868bNdefgIfdHHqCxxlzgD2q/Kkc5LjLOpYQfNqehhtVo/yj42hAZqGuk2z34UI1N
	 tAnP+hpX48NK4svaDGhrgfMhFILO2bQ2heU3rgdtAaANVvzwbhGCDYk8Eb+nGRyut8
	 RQRsxTdCmlRNZiCYU9dNLYrlRw9G/BaEqYiTngYPJ4Lzqz1fgT5bvZSqBVRO1+0u28
	 TSRBDt4Rqb4BonYkBNZASPWI+4DgdkPDZEWsVxeI6EtqjbBF8KayX17ILWIowkXaQO
	 75eDtFoAqOWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA4C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636719358.32138.13705513598827322479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f1fd1a5f5a26d23933c9f9f1bcdbafffbd3851bea977c2cfb54e9369a5572d
Date: Sun, 04 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746367193

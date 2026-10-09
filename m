Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6FC42AA9
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791508234; cv=none; b=MooFjXQ1c3jEogkuXztZn01E23GzfKicr/l4QWiMs2uYjf6DGzOrTkmAuQQr8hQ7CGMHVTumoz4blrZU9y46Lt6jdGUWeSfBLtcuxfFdN6srVBkp1Anuz5zVqjoFZXVAj5BNlq+RLYAHPQ0eyHop+xsHqZkMhKGvGia8MfHrpIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791508234; c=relaxed/simple;
	bh=9asA7wE/SLriMtlYIU+8x5KRRZ+NP1dV/u9wOD1tGBM=;
	h=To:Subject:From:Message-Id:Date; b=LJhrEKuTgJwGe2Yw8DXPW95MDkoZW3gq0o10uTqSoVyduOuO9CkZ8vV8L+W2suF8HE2ItqxKGmGNZXxxQRlcUPwh7xFN8zyfA7hTabShfZ8KlTizau77TVzrDdR4e3aAirVtBAxi2HXa1tUtgQp7wFpNJIUWJlWaEDrbhaLCNCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWioLaDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWioLaDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF08BC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791508233;
	bh=9asA7wE/SLriMtlYIU+8x5KRRZ+NP1dV/u9wOD1tGBM=;
	h=To:Subject:From:Date:From;
	b=EWioLaDxi27S/xEHQDrX3RdPLOh7WUqoU0N4xkpQX2fp8ls2rb/X9evibTRsDB9xG
	 X6EoM93O0x2KCVyFdZRrWnFygarcaixq9/V+SttCi8t/AfJ+5Twjcyw379RnnxxLsB
	 vijP0zOOGrT5ePx9KZS8O4xR/eIsTaksETpMmMOdsDyRhQTEiPOidQjpftg4YA5Zsg
	 ISgFsCIbWPaDkbHLBaHQV8pS+iotGzmWjNDQn3kE1Af2eglTG03DpCSb+MvAQ2GJco
	 WzOLcyZsEmQuP0CkDCdvJP279HExYPjPnrGaoQ8UbzEUsfWeVpu0hFo7bOckXSIKLR
	 7OCFx25xguIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3DCA6018
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150823368.27413.15851054468078124269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ed2418168cc39fd3979108ac0a9b5b87c73d070e10fea6d1fc3c5dca68572d
Date: Fri, 09 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791508233

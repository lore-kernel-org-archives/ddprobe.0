Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533A6330B14
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787648434; cv=none; b=Dfi7eNt3etlF++qf6Ob2RPHS3fT22yJPqJ9SQENCOpjWeeY01Ze1x0lbG0w+4C85nyShMwFPMIPxVdpBpgOEj0rtKWOGEjNQTud9FRY7pOqiLk3gEU8EOH9xCzvnbeX0lguHo1r5/1KmUJ5vI4Vxx8LH4u8V4F5IpJheQf+rfkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787648434; c=relaxed/simple;
	bh=efFS8oBaECLvalUMCOmXnzbwv7isw6Z64Tlh/gCY4Sg=;
	h=To:Subject:From:Message-Id:Date; b=tIIQtPwCNyh73iC9haYUJdU0Avd0lEFOBXPam02Xd6LpVplhYqWmzH/brfvYunyhMGst4aT74a7/JV0nT4sDWjj9KehhYm9IFYeHC3BnOuKxlHqE5SVIxkf+IaTikWZ04s/+oKqQ6vm4TgKidjEOqKsNiu7EujbP/AL+fv4aiok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIIg//S+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIIg//S+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787648433;
	bh=efFS8oBaECLvalUMCOmXnzbwv7isw6Z64Tlh/gCY4Sg=;
	h=To:Subject:From:Date:From;
	b=eIIg//S+N1ErC8iAtvX7BTVYzUYAd7TTNYPC6joXOCY2F5ztcMzW3c04Xx9xq4GYG
	 +PRx6y1Bk+v5O5BY4RrxhGaqsoanmm3FD5FFUDY2FbSPduv1ThcPNOnxHuEGRe9J3+
	 CLczWEQbZdEPye1Zyo0P0O/fMNhJ5I/32frFwwgPFx8nEyLXS9+63B2NXb1KtIq1/H
	 Nu6VGsXbb4t74UlykpAaSBxuid0ZAULVP9cutB+6mt6E6BZJDxhjFMfDDAujqyfS0t
	 RmuyyuB6ODyP/jb46rkvDyR4Q6CMWdpt36QV/O2UNGsBzISqve7H2kYbI1tWSuxfe/
	 MzOXfd/8aWs1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC192C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764843369.16721.17658591421929717807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d25ddd5a5ec0f6896f77989ee5af7b6e4d9f0ffd56423edde628a86e9ecfd19
Date: Tue, 25 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787648433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E218334C1C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784124514; cv=none; b=cbR/AC+dRn0S+f2fmf6983HMLgCs66mZ+pdO3rx3AFoQaoonjYG9glfxaon+hj+PR8BID4oVyh81+8sJXS9zSiDgpubK6HrrJshHPcWyH5WjoBKNoxF6nh7w8so0j3VajrodgIlUplI4oaeSsqs7Pdo3j1VFHgGSvvJxbZPoj7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784124514; c=relaxed/simple;
	bh=aOIC9NlOCn2AK4A5beGPAPT6Oa/X4brYoZC9kmdPxOQ=;
	h=To:Subject:From:Message-Id:Date; b=aUhoADnomPqGOzo1u7SmfNZaZpU225gMQzhZUSxOWGyUFeEZyWdRxKR3BPBPWku+KDFV7Xd1s+iD6FyTZ/o7UGDSOHOygiXQTIf5VGvzLpoY+JnbKUlUB3V7ftqoAndJos0Ds3Xmvh2e5p7YOwJwYRuU2mjSydIoagC7bWvr54c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEmsulUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEmsulUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11B93C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784124514;
	bh=aOIC9NlOCn2AK4A5beGPAPT6Oa/X4brYoZC9kmdPxOQ=;
	h=To:Subject:From:Date:From;
	b=JEmsulUnERuPjwP98xAGsgu15qbVMgkIhxYTd5FiIEkoLRCwM1I2VdnAPtyzL66N4
	 5Jo4LlkDL6uPsJzGGb+JkzxEQYfXkpNDW7CSTgOailNH0KkC53TJisvHXMvH7JgvJp
	 Ali6Yd1MFKpYfh2RG9GsP7WEu/D1HC8BmzHkERcouZUmKeICQKdzNv2aWi5b/EWmge
	 UJUGmopSp0f7GwlEOYEe642p+nZZKaRk/vvt2IjPz3YM+EeFTkozo8SqsjMSyOf6Eu
	 Q2BEYXOApiKlMhZzxPcMfnSUn8Bzckp/rl50JnarWZFy0glsdElqGqoAvkJtWJnWD2
	 zVE38JMnMeh2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB78C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412451382.3397.11568209944386472161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b64d9979923c1950fa2887b7286e384af24ff748c0090bf8179a0c4a01de27
Date: Wed, 15 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784124513

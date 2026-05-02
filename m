Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4335C40DFB7
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777735054; cv=none; b=cJH3cXKbXdEt7H0DUAp/dNo5466p4SoqrjEaHZXy6ei9ollPKHIiWZBlXh5RaQOC7QGPg4G3dAXwMtNyk14E3ZDxdghZURYOdsqZoIaJm9FcyRtchT86QjfqPstl7G6l14rsuuTUUiEQiDMGjEPNSBUpZhqnEXw8/99d85N1OaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777735054; c=relaxed/simple;
	bh=xFOOKcMismv827ryW1O7Zjh2/SUSyG+WrpTga2x30ac=;
	h=To:Subject:From:Message-Id:Date; b=MKu+4gd8KIw3NWzt3CDNPtLM5nI/oEnR/NS5UTEmJMnbsj7+jxadQfUsulTfd1t0hCj6a9rZ2IQS4Ffa3n73TVVIKL6GdAfeBEPc+r0J9p9dzcsDNj3ph4nIquW1PBGcSKFd1hGmBDNVMX9cZezZi1YMYcV7BO0rXEjmiK5A2v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8GdhPzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8GdhPzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EB8C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777735053;
	bh=xFOOKcMismv827ryW1O7Zjh2/SUSyG+WrpTga2x30ac=;
	h=To:Subject:From:Date:From;
	b=U8GdhPzLwrI8MeLE0Ovcu4BKR/dKCfTCJzHBa3U55epnCseQHNYOnr3NQHGcPbeVN
	 cJT8SyJAULyNMoMRmBcgq5+DLdMVnD5dLZT2I2NWYOHwZJ+BXyXeMLn00TUdQjvpCP
	 g/CDC0q5AdNdjHkBzjQO2tzac6EFfgdX//noehkk3K7nyi6VHfsOc7qKzeORKBI4hy
	 RemHDnqEewnxDN2nlrGvjEuElguhjz7AscOkH/YTAiKOdIKCn2GvndoaGVI0yNRpjy
	 Ao+/a4g8p59Gqb6tIzVgPFpcq153n6V4O0uYcaJPcv2u8QJz3NW59XU0Xi0QpL8dMu
	 0gKryk7RNGwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0503CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773505368.26697.889093963295895812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4490e8b623644eb718e5626f68c906673c9fec24380791d9266f0ab2ad726669
Date: Sat, 02 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777735053

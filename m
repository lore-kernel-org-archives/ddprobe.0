Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DAF13BE9E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706873297; cv=none; b=B3tH9zvyvH5+Tiqs6Ta88Rk3H1nTnvdedUQ15amVe7knI7aCW2F7763+JNtLjP8MRLREBRVEXm4XDwcLVagahllJhCTGD2Re27hdQXIrnb4RX7PW3UmgIhPe2AoYnLYG5b4zNVCI7JZ9dKOJcpbgX7ggGAH8KLqcitPuz6FDjXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706873297; c=relaxed/simple;
	bh=zMH1B1/PQVFPJk2ZsTsRI1x4dDTbm94NfTrxE8wFtyY=;
	h=To:Subject:From:Message-Id:Date; b=aRSMK5AuTKf+sW4ohAOuTqo+znxPpvum5pTFM6k8R3JQ4DogySkUC4dv4RCWCI/e9fYdJ0kAOz8t0xCe5yY/WjbLPLfEf7mJeGF32acuke5pQFnjI97oMrv8FDNLRO87lk6YIhvHlOn+4NXSQOEmNExpzvpzYjBCUwOucFcy8+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewhSjXA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewhSjXA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797CCC433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706873296;
	bh=zMH1B1/PQVFPJk2ZsTsRI1x4dDTbm94NfTrxE8wFtyY=;
	h=To:Subject:From:Date:From;
	b=ewhSjXA+ny5ypU6slVK8/9wJzZNBadLC1/2AzwoPrFoOc91SmXkLMNIX/LotgiYn/
	 waz8SxNULrDFv5q57PzcDNRpiIL3PRkGjci6hJqObrxEbjMzDf4iimhhr9MYrbhK/o
	 G/pTEyeLIVPAcQ7LCzClmtTJcKJjo8iYXJMKB0OqA7dCkZ6FHyXfwKbsB0KEDbag33
	 l3+K6ilcD1ORkM0HN/bFOYVMQsdJhYwY/4AdwmrjwaJH6dSemwaw/wSrnLFskUheys
	 zFQRCRIp4oK2DVWova/oqRKrXhCMu3xh+Rb13X0OXMhWKS3x81gG7mnpbA69Rwg818
	 e+XZ7sWlQvyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D92DC47DB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170687329637.19222.13013681222129025060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605e0f2892f27a90a216ce2aa88bcae74b13329ac43fe0110485a49942a0ad41
Date: Fri, 02 Feb 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706873296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7D731ED83
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786651234; cv=none; b=BbLR28j3IRNMNXz8LGKMhBuxHLJLB8/Y/hxuHr+a9DOwLREL04nI8QSLs0cZcJUVH3elHB+p2EWKd4U69Hi5sLHLpKjDunm50bQruU/ESQdmgjL/3ZYoSEMOMxjePFwXxqmww/NTA8SqJHl9ROkw3JCWZtb9X1HbE6DKTRhPdus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786651234; c=relaxed/simple;
	bh=dGdbV99R24j+/gWt48dbi+O/N1qA2JSEayok1JchZIw=;
	h=To:Subject:From:Message-Id:Date; b=h+LsTLrFbzODXDpdD8uvdGBQDBtaHxezLJtKDK9Y6m5G0/pcRCj3VxdAlA4irdDr4ClrBJWFaOFZjWWVahVl5IVwH27TaAY6DfJLsEe29g2Vx5/GVx/KUTZaXL79pmpUcpqXAiO1FqiWPs8c3fW9xlhp+1eHgd2FUiq/VifJUVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efGR67ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efGR67ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0349C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786651233;
	bh=dGdbV99R24j+/gWt48dbi+O/N1qA2JSEayok1JchZIw=;
	h=To:Subject:From:Date:From;
	b=efGR67wszW7qLBSVbMhsS3IwQZVgZCV23ui3X6Zf2MaqVsBE6YrwsOKCCiNOuNeUF
	 EcZe+TSsOi2OOF8y8EXxPrhuyVO4mSk8ODt2z4Sr31SFJflBPsQ0l/kN5IF/cgzycw
	 gWOb14wzhgzR0YHyubx0vnJF58OvEtNshEFb3TzUXnfSni7CFU3bdn7CFvuRwo6f0i
	 zs+L4qyNQlaxw/CY1ClH3XJiJGIeUQopEXOw0MBwgR5uqtsbiE/AKcdej6Fk4LJ8fK
	 eo8SzF3McRFppodsLkKoc628HHMpNtlMJAjXTRz6LWxByY7lMig4mlabXfyqlBuw1q
	 kPX5Q5zxVJQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C9C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665123369.29234.12085099405385454265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d85cfae612d417c8e405a2aa4ff9d62e1adf9a4bb5f20ebdd373e895d64fdc
Date: Thu, 13 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786651233

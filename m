Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260CB33CE9A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781120194; cv=none; b=oMb7eUKPTx9jqbPDsRl9yOQd6rz6tkxf2WjrYi/a9n9x+Jcl1r5ZHR8RE7oK7SZze/viPfWEOx0E8tGSOanF8DqJ8SogYFAzXNpYoU76KA8ogatzA9NRDApPoWLTZ9oeF30G1SQCF5Fr5PZvujzov7jlN9sBCYIQ4p1AkFh7WRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781120194; c=relaxed/simple;
	bh=yjHPpsVObPmyB76y+tjDtTrwksI+z4VM38JSkaNpvx4=;
	h=To:Subject:From:Message-Id:Date; b=Jwd7FeztV9HNopi1PFXBANc1R4ZgJKiY1tPCjCzrckuNGz+52m/Q2x7oaLbePH+jiF/58m7pu+AeSCLMpzwlLYbeJAzZzm/L6rjYhuWj4ukJ3z/If9BfjvNTp0619lOEb1rTcCd7X/KrwcU1wwCCuiY3qLYwvuzQMdrnvX6a4IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw60OFEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw60OFEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4079C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781120193;
	bh=yjHPpsVObPmyB76y+tjDtTrwksI+z4VM38JSkaNpvx4=;
	h=To:Subject:From:Date:From;
	b=uw60OFEZR4EM0Ie4/5ixqpbCqxdloCpSdEfZu+UtcyZE/R4v3ikTMajxMn8rJRrwU
	 kP3iBLama/tGybW1L4xN8qLUw/4qbwH/ziYx02WUe15K7BZJkrv313KtQRsoObeQwK
	 Jj+Byx2UGol1BIFbvPBHtUhWWhD0din52GcZG+7Iukl+xQZ0FSLIt+QokEwFLmMNjH
	 ZdsF/oDqPdEMtBZ2ezgFi8vGQyeNRtuRq7CVQSwfEV0xkJ+P28oSbPZVyDPS2h8oTs
	 cmV2EnG59pHMBIYIJqk0rG+jBun9DnXoWIDygZiz5Sxf3mid+7QIUUg2RgK7rPezNo
	 AKGIX0Oi0h/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9566CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112019368.7673.6355556795185530575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f4ef0e0e9719f7f38fc45339bfb3c919789ed59da8a2086a1d36585ef081fb
Date: Wed, 10 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781120193

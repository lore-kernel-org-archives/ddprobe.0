Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1989232692F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768517034; cv=none; b=LN6MK6FpbvLEDEvrmfY/5fJpMFj8YSjWVlB9CYFkseO75mAKDXNsTbKcbCMxWm6ScT6RInEqtTp9akx5qcaSkoBUChPkiP85n6s+IL7Y6wr/q2LTXz6wVaEq1u7liZFjSvGWSnqR+ysGARHlB90he/aLRNo94S9Z68yaN7MMpvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768517034; c=relaxed/simple;
	bh=eLou7jtMdYyF87bAQJ/XVrJIdVNfCet99JldPzixYmg=;
	h=To:Subject:From:Message-Id:Date; b=OpmAjRKEItXBPODA/fd/QQKPbdAaYcl1nFLYGTMRJmBzKzpnIRCCSI9DyOqgsJLXdtmiccNpCpdqIw04QhOF2ilZi/X8XC5GrLZJbhJf2we49LWjwM9SlQzAuzmSIdfeCGPpdW5auhI/rMKPzB2r1Gv0J6FghCqm/iWXWfVWUSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLctvdRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLctvdRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5A1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768517033;
	bh=eLou7jtMdYyF87bAQJ/XVrJIdVNfCet99JldPzixYmg=;
	h=To:Subject:From:Date:From;
	b=cLctvdRlVxVwLji6myM9Mg+PBS2bxs9Fi6mfbO0Sp9NLcJk9lmh4DVUrbZBa34HSq
	 o6g0YtebrJhR12WeU/7cR6DyLR2URRFY3KSU3VlQj5PATTFE6G4FoPLuoHVg2EOVmP
	 bhNo/WyM1sMJxXkusNSmY3TP32lJAiPiJ/0wM4dUChdFLRl39IOrfC04c8WEF3vwvW
	 9i79rd/zl7cyJFNVnsDlwTs2f29sBcB3FdY5kZvpwn74J3RgckDxmxx/ou6DdBwVJt
	 luaNepWy/smt2zP2CYQMO+EELchGJagmHGmFSZlrL3LH9rQpLX0TvcsKUiYLMo74ZZ
	 jYvB65Asrf85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB4D4662F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851703357.32307.14545284005036569299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f6d6cfaf0aa59824d27045c2418c7178dcca1e6511e29e087654584bcd1ca3
Date: Thu, 15 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768517033

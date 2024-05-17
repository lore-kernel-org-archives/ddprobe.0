Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AC0B647
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715915543; cv=none; b=aMdtSIqNOpkgjD+OVvI2JrlI/z1rQwSOxr3tTPyG0lTpQ9icon/bY6eT/bhxYjT4SxmBO2A2ZCVktmIrGgHonpVIO11oS2WYTd0clfYbR96QLh4rrfcMKP3u13io9kOPW6ThFsA6HyValtXOlEjKwExdrnqxfmLX+DnD+qzFOuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715915543; c=relaxed/simple;
	bh=B2zb7l7BSoGiynluT73U+ID4EM8Pm1ZyUZog/hiWSzw=;
	h=To:Subject:From:Message-Id:Date; b=S2RqFKwZaTpFVcarWXCtYpVN/SCyWfwxfjokqchgVS2n59gYmwgTJoLfwoxcuhrMxG3GhRLjMCuNTE4odsf2iP3l9wqUIwL8WJ8dKQ4UX/vzI6AIMY0D78qUKTZCoxxg3+bzKUrPcFwOE8GSi614h5QpHjDyUE5nssauLGgoJCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHwiMSdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHwiMSdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78AEC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715915542;
	bh=B2zb7l7BSoGiynluT73U+ID4EM8Pm1ZyUZog/hiWSzw=;
	h=To:Subject:From:Date:From;
	b=bHwiMSdvvsPVqgebN40WkULdxMrjjMdMuNxHjZvXxtwUFcx1hoaRUI/w3oBEsDLvQ
	 yx0joxEaVc0CDg7ugsGX3H7jX+qa19Ig3Bnhb/AUJBuJk4Te1ObpsUYWcBoJsxK9CQ
	 tq4bktFo58qlgn2TvWsUEFq0aeyOs5chIcrwWYv3Htqs62fyoV0lOIYokFv9P5TEQC
	 3o+sCKGEGjvdnLpUlwWbaY98uPqc8bW4FtoblFfYD+fFiAXODTETTpdYCSUycElaLt
	 I7Pm9jTDTBaKwv27QO6Euj5eyIocM+oTGVIn1OzPrALM03CfXlj8NOtLBB389N6OtE
	 DZZgiaaFFxUQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5FBC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591554278.14283.11162923554991309327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e818b8a2f2699271afd9f7ddb3e91bb01b217033aecc61f875eba25ac02296b
Date: Fri, 17 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715915542

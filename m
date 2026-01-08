Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD3739E194
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767863036; cv=none; b=WFcd3qk5EETM/EmUYCwqwIvurkRoQjpzDw5e/EnEsZw0afHfeSbh/m/fKzKux8XmhJAE46QebIywV7iX39Z/qGyG96fdKrUcIQQ3+3418kgGy02rtLr5hyQy3baD0cdV32UNuCjjEDnPQbyC1tvyk+iYF8ujjav8qTcAA4IIuTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767863036; c=relaxed/simple;
	bh=0EZrqp0BXbow8g6eWSF6tyUhxvzwhUPaHq0vFdJqYEA=;
	h=To:Subject:From:Message-Id:Date; b=Av/+ECKxSuefk6LFME6sj6jLaBcDsUCJffs84IVN77nxtgE+XGyGHQdb4w6XIgW67/9Sy0H30/yK3y7ASMrrPmDpklS7c8ySEVdHIGX5uVnwr+bz/aQfMo8WVg5HRCPFZ5Z6mE9O6Z/vhghquNQFKBTUxaSYuYRvQcOS9X7aJjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw2vYUPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw2vYUPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA59C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767863033;
	bh=0EZrqp0BXbow8g6eWSF6tyUhxvzwhUPaHq0vFdJqYEA=;
	h=To:Subject:From:Date:From;
	b=Fw2vYUPNqmV5yutW98CbPoolUD3uKIO9Sw6WJ0h+QdWE1Ed95w0N2Qqxe8ER8nXhD
	 612WwHUEVmdivUHf1DB+Xktmu3liPlaArjEE/FmKvJucCLMELPEUF/cWqgzOSQFwTi
	 SP1E/fWYj5ujjhwLclpkjTaIuLL7r/QuecN0NT5gO9MJ+mn9bT1JEsUJ6/GTIZEXZN
	 oN1+O32AMVGcYNXlS8UhatWbnYKCQU5oPXx9JCRSq/NVbRtOOzfES5yGzgPYGR1fdU
	 a8+CVgqJAQ4i/MACm0uSWaw1Pg6NoVwt5zwOSHbMz2XcNkT8WhzkDn1Rm3DZWb2rmF
	 B23PNUDJLOpsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45CCF6A88
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786303357.27704.14346336173514075657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651e2974dd3b52df2939801b68a9311ae32be67780d2d41e3581ceb2664a8039
Date: Thu, 08 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767863033

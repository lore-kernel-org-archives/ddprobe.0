Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203FF1DE4E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775971054; cv=none; b=SCLoeaCxsav8KcpFpC0ETLjcX6KjSIphRBGHs7qDqiWbcy1G/acNqm7/xUqB21XKt/kecZsy6cfzftvM6kZesGXEzxQ6jQknKB9IAev5Q9nhnKX+dsewvIfFxbC9K81bT9Dt33cOJCSM9JmF8TxiHmYkJPsgZ66byWo4S+g/Ujk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775971054; c=relaxed/simple;
	bh=6E9Ho+DVnmaUYfkvlV5sfY1vF8Dg4iP51cRQLTeC7BA=;
	h=To:Subject:From:Message-Id:Date; b=MjChg7CiSAyCLBZO4hN5YzizuhcYJNIWivkvohjiccbPPyy2oE6oJ+xGaL9ftTlvHzKIY9BmQK/Lle+tgVOyRloPwpKfViBo5dg2vdxa8XnuVal2LmF/ggyHFLN+368MLkyC9QPNSatsWlB7lKBMLfU7Lk5JPCt5M5+vQINnZcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuZvtHaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuZvtHaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE01C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775971053;
	bh=6E9Ho+DVnmaUYfkvlV5sfY1vF8Dg4iP51cRQLTeC7BA=;
	h=To:Subject:From:Date:From;
	b=KuZvtHazgKt5Fiy3d3PdXK3eYns7j5SoqdyQDjVjse7aS6WMMKq/Hx0vXpQ5Rjo3Y
	 hLj3xzsNucWyaZwUWCXlUcokQuM54S0ESmaZYf8x+ojdLcU7sgfmrq2tprr4GwXHCY
	 5nkrPuT3WPAn4PGWyp/yy4LvjuOhAxLLQFFSODFvlQMR4MC2plFAXfgPe1GGcUODiY
	 zmEXRIYRgf442AbBLI8aLZ51U/I6h81hKYQ+iNpT8ncXMbSbahkgMz/G7zUosn7Jge
	 70RKtWkeKnUPGr/+p6+EkkNIKhhipoP5zvrvAq2P0lQTm83oPlLXzfk8BEWQQRnsXW
	 B8Vv1cIS5yUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC444F3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597105368.32021.9412910041471541239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd5b93729899d3d7776d85c3abae39c39e449f3f44d0551adbf96c8f2a6bf65
Date: Sun, 12 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775971053

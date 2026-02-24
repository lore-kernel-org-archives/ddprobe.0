Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36F52C11E3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771957494; cv=none; b=mHcZI51PXh+VmfFlTOOI84LFCqk41qwmDeeonfYdtFgNMMF/EcISsVJESSxWFxzcuQequdYIfUsEAcOqG+7e284wZze0/1Xjqk3xI0eSOx4Pos6T10LV8D+ZNAePZfvJjeA62guQnNKGhFUcV9zZ8xaIV9773JPxeUBqvyYZy8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771957494; c=relaxed/simple;
	bh=CLFSYGMpm6VhzVed3zR1HuCklQie5KGX0kgGXo8qyl4=;
	h=To:Subject:From:Message-Id:Date; b=XqnX+rjcC9o35K9r4nsUpqgkCSudiBcPkR85EW9HG91x17cq4IltAXRTIz93rcIVP+dAGDxYB+aKgqAXU9cfpe1oSdJVYuuU5c6nVhIkpefFtbPk/IImVFI+rQJghP1iNZJAhf8CCveSjFG6jVkoTXBA4FsX2M0JeierbeQqmh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGhlYRIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGhlYRIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAD9C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771957493;
	bh=CLFSYGMpm6VhzVed3zR1HuCklQie5KGX0kgGXo8qyl4=;
	h=To:Subject:From:Date:From;
	b=EGhlYRICy2H/iPeylwu9ZdTtbq+dT6cH4vs1o30pry2U+cQiHNiJACKTS7raPJjbQ
	 HTl2fCtTuZsKTl7PHDsANtWA5QKbw4y+/7kEWzIycLzMZc9DENvBiwzQZLSiezWYac
	 o7RiSfG0yXJhmHkRWhA0keslnpb5D3m+HZolLmEzqnofMesetxGKeeBaMJffWqVo8s
	 Y+Yq4AVPOKd7SRMlD9uZ5oquqrroNEGdPopf6lkm2SFcm8NIQtuFeRSz9xHQiWd398
	 57bj62m0nCk3aVHVNKGkCjqn8k94VLji8qs2RV/0u+zQ1slFClVYeFgLmYhZ6xTx0m
	 /Jb2h9TY0MFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471BF4BB71
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195749359.19161.9237140990032891552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb8736928f64b649ce4cccf094a820589035d033d6a5bf47346f58f139b9804
Date: Tue, 24 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771957493

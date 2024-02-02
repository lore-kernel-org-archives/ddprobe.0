Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2BD15E5B8
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706904497; cv=none; b=J8/9OS4Z0UD8rXn61w2PAIoa4yDhoaMfnX8eVCEhcaASBMA2MyiHpH6hvOj4y4t4P3O2xIS8gQ4t7mT4f2jpkIppQk6rDXnyaNr42lYl3DWh8ZjdCiPnDO5kAO/AejKmtvMojNoINeLR4Rp2P1OeFAQ3Zm20f0Jm3AZI7hW4uU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706904497; c=relaxed/simple;
	bh=oJkASK6AuzJ1gkWBGB6JRWPVmh3sUyHDXncRGQ720e8=;
	h=To:Subject:From:Message-Id:Date; b=IxiFKgm4KdFT+p/LSHrscSieDqc5WYrJQogDCGFIWRpoLsLPsDFXd+GlCYzfN3F751p0yiclqkrjsn9GG3zmzxQTFE5pJQtyT+E8r4pJBac5k1p0d/PL3uhxuV2ZWEhDJgQdMIrTglL3bfBoiEKcqRDr8P9gHndEHKOrCxlb/sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+CTtELt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+CTtELt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8650DC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706904496;
	bh=oJkASK6AuzJ1gkWBGB6JRWPVmh3sUyHDXncRGQ720e8=;
	h=To:Subject:From:Date:From;
	b=R+CTtELt0+B/CLunumg/ZcX0qerkFbtOAuml1faO8mcw+R7exPyHrgeu/Dccj3lta
	 84CJm3GFrDP/M1VGwu1JC1NqU/+3VJgL4y+n0wz72deLd82ILqKD0O0UMdthSBIfeB
	 E0U/b6z2cCyCIy1ZJxaPnRDmY+YV2rti3h0iQZor8F4lu0GGnyOwICm09+q+R9ovXI
	 489FduZneVCUfzsK5zvrjOZwNa9VFehBs+Dz2Bp6W6zZs26jFQigq3avkzGTMuN4bd
	 Kw+wVr6Moo58YNqw8TB5j311WLVqH2kAI/zj6AikTmeIkEfvgJYfOXplx4eyhS4Jsr
	 9tt0Rw7z9GOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D293C4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170690449643.2749.10458693974559330561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449c8043e20d0c70a046c3380658df690290ce5792c5b8155f8d4fa2a6a20f46
Date: Fri, 02 Feb 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706904496

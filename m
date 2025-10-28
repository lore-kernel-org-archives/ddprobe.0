Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B264332912
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761660594; cv=none; b=Fi9cNqhAMKNXuwp2p6IKMZ4HnYWJHlAVgPIi0IDHepjWEu+iTWeSrL631FR4wq+dAMrkRz7UR8bukWUAxnhFp8MTnLeoUoG4lm0kxl3ccGWX25sA9wDL7LBZGHmu8V3HqRE08ibfxhBeY1wI8cOLVOXPfrJfY+Phmv+FESAKWsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761660594; c=relaxed/simple;
	bh=EeieGSxfmZgqpKVKk2a63YL72HCkFKYtW91bogCQHK4=;
	h=To:Subject:From:Message-Id:Date; b=n+tFzt0YcsjJEGTV3HkAMSD4lcrVUJmdJ/NlKBmI1hHpfQ0MvJ2ro8K2m63rKZCr/bz1Us1jy38/T5yiNw/TOAp+X2VGIuJQHQVUzEWVBedfdMkSdQnm3PvbnZTLN73aJ8ktsJXmTLfePh5zygK/xneS88sM+p9RXN7rK4Vqn4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eP8w1K5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP8w1K5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A078BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761660593;
	bh=EeieGSxfmZgqpKVKk2a63YL72HCkFKYtW91bogCQHK4=;
	h=To:Subject:From:Date:From;
	b=eP8w1K5IscxSjygL6QE5ajANwgYLQ266/jJBxITG/EBqa2/0sSjoKPTUt2QXK/oNm
	 btXaVMKUrzDeF/R91vFZ9Ylk/EqGMAI3Twl7nwSy87dl/atmB0C0Fz96/+IYLDWX0Z
	 BJCYjDFvcPMF2bZlN+Tc3exmc4r1VZRyRbS1y/4Un5aK9CGbo75fCU4lMwrfe4gb/3
	 0EO0e7aUg0dNWX5Rd/Km4G80kzBqwsydFxzYcVXhiuSqr2s3SF/7uCasgT0fPPJ+/h
	 C7rX/RbwM9e9pwx+INlzb32pJcnRj+p6hK+ofQ+x3pJ936t25u0USFhY3PZ019Vaac
	 +JK12FJVd8k8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91197CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166059358.8440.16923157371528967365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c678a4abea967a9889e2ae4ee90c4c6a276da1b0ca6b1fcb4c6fbdd8680319
Date: Tue, 28 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761660593

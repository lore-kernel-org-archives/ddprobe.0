Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B36BE573
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777516654; cv=none; b=jETVzSz4IMA8xBgSOnVt6+JpuuK6QdZxhAIbOzvpHN5rdYRTNU5ZxJNXwcAIO0sPKKxfrmAzFv5xvwh63Qx/bAV16/NTiw6zXSVzWFEf3WcEJMjGNDZWeDaJavdNWhDcVusKgVbdN45pLJAF83wH2ckBhsKK0EYSSjdPXwEDMnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777516654; c=relaxed/simple;
	bh=SF/iPsz3yLwhbimAcZfQFi68ion61rk0eUrCQYiFzqY=;
	h=To:Subject:From:Message-Id:Date; b=NGNBHjuzFZrSsoXfVYS0eaPdjnsgSDxQrPDhNvg15sNgFJxiLP6jttiHfRQlJNaeXyAA46pL03g/t7vadBNon91KF+nl6mkeyHnse8t4+ycYqGquxfNimeRbLZRnkfiTqADA5osLleh7oD3HrbYzjbV5juac4Hc8kreGVGYJdAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ep9of1E6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ep9of1E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBCEC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777516653;
	bh=SF/iPsz3yLwhbimAcZfQFi68ion61rk0eUrCQYiFzqY=;
	h=To:Subject:From:Date:From;
	b=Ep9of1E6EY57ozh5PXXgCvjPsbUO5KXmVG48udPGAUkAh3sSe2/HweM44PydjudqW
	 Ma05hQVCDHmPgfxvQNkaTmsdMTy09pOeBYX0MHy/BQU2Rb+tul4wIvgf1mycesD8R9
	 buTyns/LfDc5WggE/k0v5FHuEDxLP0L81e+WU29ZvWwISh2EMGflHEJyxQ7PgIljBE
	 aRyFfhBo//6CEx9pqKF3hTek+jvkWlfLqBABqvom+sQosJEOmqp6n47Hl6aLCuUbKr
	 JrXXLahH5IKinsQT1805qLW2dqtWuhxRp5z6lvGXEGfebo6hR8Ejfz98rrGlBHAsLg
	 /+PoNheTG5QYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF28FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751665368.15633.13419828249761781053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97dd96a9bd33ecdbc2ee40358c88278e744dcb58737f4b91d05c8ab0b4b15973
Date: Thu, 30 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777516653

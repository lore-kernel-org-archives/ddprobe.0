Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F8218F2D3
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725386754; cv=none; b=LbkmIHZXyVlzanClh+GWTCGr14mjRdsyW9WfPyggRXO5zsuWmDiheboeaqGSGoQigENBwVe3+JCvfupRCoXfX8dJC7QPOMLWycGNGrsn4I/ANvZNxpURiRkVHY68g+cPcoKW/wGvIKwx4yac2spXYwm3HZ6MLxFNdgUOH4mNb48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725386754; c=relaxed/simple;
	bh=ZrWTF5BSCzTbWie/aBArUDEAQMyfeytHWHEzkOKBBZA=;
	h=To:Subject:From:Message-Id:Date; b=lppwJ13K+wmAaUpA5zxjLq3vYkvZPNPU2Ro3JGJXIBtKow+1sOFFFCH52h7IX/vywbMRSJkTVHZbem3mEvBwamOM2edz1MNh0swEjfR2OJBvX4gRHOZFxxgs7/7Ds/IMnRhhWF3ClaYgFOwVueyvrozsG/Z+Os+d3g/rdXu3W9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAJXdCHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAJXdCHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725386753;
	bh=ZrWTF5BSCzTbWie/aBArUDEAQMyfeytHWHEzkOKBBZA=;
	h=To:Subject:From:Date:From;
	b=QAJXdCHx1DLOXGjXvNj9ZRuZ+/XjkjjjWfwVcMG70CE6kbxYvwcbyYbg+y4H4z+tm
	 48ZJGYdCvC8I0UxJeUNU3Zs0uRUWSoOzbGR9E24cFi95YXUnVbxDALYOy779O8qSs5
	 iCZ3dVHLhORKadLqZcbg0r/fgZstvF1GJ1xHJGHtKCRUW1yB0/gIT4iry9w8e8eieV
	 dsLH+aFrk9DAYdGYW7Z6Grh8zo/SVLtK3/1kAVpJlSCyHhGJU31y2G3y9iazZDcUlM
	 YW7hvPDiwgILB4WAHuzpKIj92nLF6FXZDw2BFXL/J4HnBgWQAB8ccRxDlnhvW2yYcC
	 4ksnEa0AKlhkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986ACCD37AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172538675361.15306.4517617887858822170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3471e8f4e3679eff34f5a6976bbff3bc15c03dad40e199ada745d2923fcc2d8
Date: Tue, 03 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725386753

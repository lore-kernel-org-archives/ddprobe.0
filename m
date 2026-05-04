Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5961F5821
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777913854; cv=none; b=BYi4BWhBwlBYqRlGxdGwmOz1NCejlc16vs+NFpQ4ZtCp8HprIn2TvPWTS0x1qetZpOoobD6cOKQCIbdlAsiRuuMXRn307g2V6rGIEs7c/tnNe4z3+owl/eD/S58s2kb+GjLACnXCK/IMGQIIqJIg+hPozOWQfV62KjZU3xAoD5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777913854; c=relaxed/simple;
	bh=ysWaFUQRcRcBo8zZmSqWm9zIk712HxoMHWaFjtQoNp8=;
	h=To:Subject:From:Message-Id:Date; b=F4ePkO7fvZ9mtETGnt6qfxZgj0qQT9zUTAdfXE6EbWng4IPwJQCXxNZnhkoyvoBiyGSlnpXuLqLk76mAUsJjgcBT4gSnQ9zzu+QJz/JTnYQtcQnJ1dKTxFSqN/dgcyvlpmJPF/oo2+pHcfpStpoSrn0LlX0P/BN3TLIay2dsNZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXAnY/gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXAnY/gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB48C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777913853;
	bh=ysWaFUQRcRcBo8zZmSqWm9zIk712HxoMHWaFjtQoNp8=;
	h=To:Subject:From:Date:From;
	b=jXAnY/gV6FTlu2FFxSMp+N/yU2YjfWpF2oFkBAxMGXA7Pxzs0FiPfpHrwNgy96+im
	 OKaRuCm5mWL+Rb1kGv/YpICtXuSCLzD79VY42aB8M9/1iKCjJXLWYjkbuyLSS8zRF4
	 kFMpf9WK/gvbFsxVzG6bF7BxaSV/SscNWyFmLbP1E4inKJ5PzcVA0RhzAKAv5V95fB
	 7nhtCba7qAcoR3c5wBVbRF1ri709Oo2WJO8ZIVGmvr61Z0cb/4P4X9EIe8V+Jd5VgW
	 QFoWtsL/G8IsdEX4V1Sd/4G5yvaRpAeeTg5w8aiIV6xN61fZNUGJlJjpFQIxKykaPY
	 h/afHxtH87+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3ECCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791385368.26883.4274400163328077276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c8b8268a8e7a5b0b5d842106eea6d83b7b80f6223382587728a33831b6e221
Date: Mon, 04 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777913853

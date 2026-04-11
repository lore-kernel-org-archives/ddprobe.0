Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548E212FAD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775889454; cv=none; b=itbNzIiZkBfK/oUXMopDW7e8/BjdWJcJ47ZOpfECTfacFMwE+cVNOA9tW5BMlgyxWUaQFEerKJrNNhdlgTkJq75yWDMHlTKkr5s/Kca1l3MWDNTyM0WpOMsUyfkwgPaZSucyv+2oKgWfBx9CrEMr2j+B5njJGs7hx2k7qDz3CBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775889454; c=relaxed/simple;
	bh=4OC7ZapZoOYthqgsYmRRRJfZaIgxC8ltMaYAPo/+3w4=;
	h=To:Subject:From:Message-Id:Date; b=pV8uxTDpbMkCyRd3m7kmGNYAntvlgF90FHmYXK65EnufFskAaL20+EFB3lFMVj8rUvdUVjJ9YhKbimF6tq3G/9zQ8q9fEM77X0KHLmOyk48hwbcvvLgbXwI+Bs+vyIPovfIQzpHtMVwLRSwTWET9lZeUfO5RwsyoNp5kmK75ECE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0wRdOdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0wRdOdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1278C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775889453;
	bh=4OC7ZapZoOYthqgsYmRRRJfZaIgxC8ltMaYAPo/+3w4=;
	h=To:Subject:From:Date:From;
	b=H0wRdOdRvqGhMDJ7mDikyksBBrsGs9digWGrzvMCO3zwHD2ind/LJbQdixlhB8ylK
	 JR916AEK/eXlbh5GCMlYSkOKRoUksD7AI+cBsUS6UP+qggp0GN9hYdykWPy1mMgw5M
	 9yyQ0Oj6A1uSlr1sOhmcd/t+YHoNIbErjiSnRmKeerTvwQOopfHK/fnaM7eP2v6C7x
	 a5cvyILUEG3EaPEhijKs4f3ZkxNvkFM0eMoh4pw9TjXOHWyd7i58La76FVztZQliGz
	 ZLyoYB19XUaHoYpRb1q1VUSxLh3ILRQg7IUWIju0hfi1MmJF4Bb+iQE1fcaP+T2SIY
	 FrTOb02IrIJSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC95F45A1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588945368.10753.16352080010369059539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47a8a225dab3b646830ce144155b19a86c0d77ae7eab584ba13995183e7c986
Date: Sat, 11 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775889453

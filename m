Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C013182AE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717229063; cv=none; b=VcY2UfJ7kJlLSEg6uvf1yQpLuM9CTXHZEl+WN25ryWMaT8DlgLhLjsmEu4o8+aJ8AoD21HX81MzXDfIAozu6LMK43O0QUJgGAST7tQrqQruZhXPU/54e0cXlxKMevvyRiFI4CxM0Gy1sPkrkTowLyzDuT5S09CHOeeSXJkGB7RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717229063; c=relaxed/simple;
	bh=MCasrOWENmBEqvmrIE2bmlBZhZ4/tPX/Du7+vNBoSso=;
	h=To:Subject:From:Message-Id:Date; b=AA8f5tFIcJKsvul8KD2xTKD5xd/Wjrthx7HUlMSY/WzUN/I7LAq0BRlPbAh/QSLe1NWDeqe26DRRlHBdqIfp/61o3PvZomJ0uT5MXTJI8JkJJ9o0HOnGng4NCq+2xaj0kSoYBeQ4v2fmc+Ze7oqdPbvCzJAm+SYuZT3sNn/B98I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjiweWpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjiweWpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA62C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717229062;
	bh=MCasrOWENmBEqvmrIE2bmlBZhZ4/tPX/Du7+vNBoSso=;
	h=To:Subject:From:Date:From;
	b=rjiweWpped4paLVoL8slGocdwDG9ABkfFEDyolmqdX0bwrlIt8HsXt1UXJGnFk+/V
	 de+wIWQtwzjOeuYlJ2ifi1lcufX5KkUg6Fq15MrEvPjiJoQGSSHnh6l/+NvpxH64yi
	 S5lFeeA6ELiVo/btWbFtl1UR9JHYkwlBemBrjqIw7L2UaBinRwBsyiEf64xIYC5/9S
	 Vud7C7dmQ7mq55BAMtVf5840+BKijDpDNmc1PWvWPxapZ7jbhlzu9naUM9z3nWyi0H
	 xKNa1TroAM0dSN9ViCJZwoTaRxn+xxb9KSFEcbLW6w0DOjvjaSoOlY1O3eOEOcL7s7
	 uHOVGyYzoJJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6012C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722906277.18361.5883085286272225435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9847fec92815da07e41fadf90b0dcc9f36cdc6553306f8606cc18dac71a70b
Date: Sat, 01 Jun 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717229062

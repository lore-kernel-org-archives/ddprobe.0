Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1631234A76B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776668854; cv=none; b=JAiWahIwZoQXJqQsiohIWzPPGXP7zMwZ+lILrY1jbA87D/JeKAXYXqRrqEFY6U0AiJQiFuCMN8dw8iRSUvMVigWEjqZ7K1V8d8EjcQdcSbRUOVTenpIzwsvbg/khr1K9SeBii3nbksMk9FFJKYx/R5lC3FrxkL2jMvreedfND4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776668854; c=relaxed/simple;
	bh=/WdbBuSXx6czbuuSKjxeIyTdRztUQt6UtWITji46GVg=;
	h=To:Subject:From:Message-Id:Date; b=lyeDHC1rjcF7KqpUtRhiX7XpCqx5LjqXAMROGGrk7F4QCkX2xKMReKA8Q0cvgNpne6nP8Kw8/yxbdbx6mDGlvObnJtjBz158KaQNh4a4XVyZcd2b1GZB9uPD3NjM54UkXqvq7MZDKkKqZ/u5yCr7x8RSVCWO/JO7ziqht6atqik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVhPSOxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVhPSOxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB24C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776668853;
	bh=/WdbBuSXx6czbuuSKjxeIyTdRztUQt6UtWITji46GVg=;
	h=To:Subject:From:Date:From;
	b=bVhPSOxZnfP277j10d8DkbUQ0lR2sX/0PpBPsUBB4lOUKa5krhcbR0gORmVdqEPtr
	 9Jz2DlfK+1zwQT2yqa9cdK1GcNVn8X+79d4OsqO9ckiDIjahuD+zm+livcGbFtNPs/
	 lVSn5OtViZLvelB+WCe6PQiv/yyoKBw5k7n/jhcSiMCOxspuA21WxI4Mj8svwWA+Pw
	 RoWrhWPXEdL6hCe0cUwAVi1Lf/NXeD5To5pgGN41rtFwhYp1rNG3OFXiIrJDJiTKG3
	 q+HGNzvwutZum1dL2rd5e3DlQcXA7RnCdf7GhwU7cBhFHgIKlHWBBeqRHR1qxtI3dq
	 XojLp55NcBwZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA058F36C26
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666885368.10179.17216535190680257369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67192525c47629dc796ab4470bb7abc6bc548ff3f8affbcb596dcd268155540
Date: Mon, 20 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776668853

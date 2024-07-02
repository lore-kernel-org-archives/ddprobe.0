Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035FD3D6D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719883523; cv=none; b=mCDyEyhStdVYpBtRwEOBenvza8jyAdYynes8fD5CdOmRlcuPDJyZvGqnLG+BILsZBUpTbdn0dblZOZqLUnTqyNRLcD32ImpTTwfOYQ/7Fu7WRLO4miRyOrLwlRFWhJotP4V2v1cZOltMuMHI7BsYJFzCSF5xV2RZ0u6p2axeRqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719883523; c=relaxed/simple;
	bh=KBWqK62/95ceoBWpI6rG4dHlXc0pfbBSRn8xKw9L+sY=;
	h=To:Subject:From:Message-Id:Date; b=e6ZIH6K2GfqqMyaQDommVk5u5q4cFLfxvyh4O6/ofZNTWcGIICecuW4UPYQRo68Ord76LV4vM53o27cutx6A2DpVmJEvkQ3S7r9gmUvrugHakjsEIMC5QGyf3hbxee0B4/UdJ454SNtanXcqbZykmRKOClB9PpS+yF/JmqukGXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLAPbG1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLAPbG1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D919AC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719883522;
	bh=KBWqK62/95ceoBWpI6rG4dHlXc0pfbBSRn8xKw9L+sY=;
	h=To:Subject:From:Date:From;
	b=vLAPbG1ClkqS3JE7+gUq4P2j/W0uIaoYmA5gVcH8VaHKi1mEa6neus+4lnO/MEIsb
	 O7sGQrgWPIP7cJtUniDPw8NdnFnOyKG3VoGnfjbpnrm5+d5zs0mnoE2oeSDH+D5cpQ
	 xLlqHNNY4ZP9NrKHxYaGq/RLam0lPjPK6s/oyAAvPhTB1lwJob0+PXojzGv0HEEpF7
	 Ar1vK7Sk0m+Xv28/vwCNhmVftfXTIwh/xd/P/hyeRvIgo63cxktWNCvsQmnUTTEYaj
	 b1zDZcrAatl9PrMnsJ7UQx4nKwfcqWzJWpXGAwtSnLQHEfbJK0qWilky0aBILrAfC1
	 2y/KztqAokIEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA42DC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988352281.9313.16928639725139022718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f78ee7d50d49f8f94418e0d5360c737812f8eb5d19826c58833a725f252662
Date: Tue, 02 Jul 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719883522

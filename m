Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF27442A80
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773706494; cv=none; b=iyc443iETZouo/MPOy+dDXHObbNOBx6MiszG+lDUyLNjOe8UHi7rxujKnFOs+2+jWkwMYDW33bdWNE+GoM6fzeI+BFY+gu23TZiXNFtAFaezxyQ56fbc91W3p0PaEcgN11lo8xCl8+fK3jzEMDc/R/yjyd84dnIe0gR97GCT2Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773706494; c=relaxed/simple;
	bh=aLcMdcdpCvjaH6yXL6FELSCsbv/sWkrheP0opqCkriw=;
	h=To:Subject:From:Message-Id:Date; b=vGlyNTxPzUa3un5SxO67bRI6VU/kdV1o5cN5cz0z8+cc/lxpFGvi5JCZQnpr2zvtWA/+f0YSsSHCXBjLI7rXr65UGhzfMaWCA+RxMlhRFfleRgUa1XsbHti7GwZ3Hfjc9MBtgrMVjJtYUDFJNJoeb7u97AmS65bcVF4+IboiaN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgUDVLzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgUDVLzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D75EC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773706493;
	bh=aLcMdcdpCvjaH6yXL6FELSCsbv/sWkrheP0opqCkriw=;
	h=To:Subject:From:Date:From;
	b=TgUDVLzT/FyXLGHQPnRUCY/E3chXSHsVsh6PTbQdkdd5I7ghX9wyW/XjUoFtkJ8oY
	 wc21CNlZ0JIEpRyzcBNtO8kpkAdeqKC3rfR593mQMlglVWvBYI+EoiKxgkSeOYwamJ
	 yyu60QkFTdabmPT53S9FqY0DUNxYEWob5myl/zv9PM5CTQ/Czfsnk0oW58vLcXGyoT
	 C6zt+veRv4EX1nmg/qrSRBvh4xgHrG5Bt9l60Ir9QJMV9zks6c5nS17hzF+i0r0M9N
	 AYoeMm/CQxf3pz0+sA/0VA6t6nV9gwlxiDgBwPdjOG9t2dv3RWFWYpQiQd++dVohUR
	 +6/RhDY3UiFqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F105FB5E90
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370649357.23785.51309896239918438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d7d4613fe1476065ef31be90e3b4ab82a2ed96edfff704a8bef7ff8a012f2b
Date: Tue, 17 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773706493

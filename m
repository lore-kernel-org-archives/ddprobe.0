Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDC723BD1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752485394; cv=none; b=bCnC2OE+yX1mPX8g969DIn6vROrc0IjEYdPT+j3wfJv4N+TaqXDDVq1qiBL9Qmy0EqCRBGMvRfD+DpryAcznkWBd0WxxyUW/WJrWKN03ke+gLHCjuUNwEBKA6BGV4mJ/qITUvFiWy9uy0VPbSSjanvbNnQRdyrxlu17c3VjBTrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752485394; c=relaxed/simple;
	bh=UFglHFXTj+UaTqNHHGg0CIkbgwdbiV+Tm58BE49prxc=;
	h=To:Subject:From:Message-Id:Date; b=sn3qP57DWtu4TKD+OK1swAopm3HtORmZRbTZBil1hu+BdYJ9Cqwb2x1Tfal7emRrseIa8NpXoQhy3RTQEwcOGsdUSdi0fh7SQdiR7B9Yz/Jf5w7Na9/5LKDWJlLok/iTpl9/Yc0DsoGv4JZ4sabJG7Zmi8tR36iLrO6H9JuHzcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFMP7GFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFMP7GFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC796C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752485393;
	bh=UFglHFXTj+UaTqNHHGg0CIkbgwdbiV+Tm58BE49prxc=;
	h=To:Subject:From:Date:From;
	b=YFMP7GFSYRV6U8BWgAQRMuCfrPqIx/G38J5Pn5M4/Yn5zKCskzcULcbLRNgRsYh6w
	 5ATCduUoG8kfUe0QDHGlXkA83TG0OL1w5cxNytD9ZhhWCo74/8maGokLOBIBi7fAWf
	 86WOYws3ll2dGjNfI7z/M/zcmsW0JMYzc6/Wg70+sjhaQ/gmZ/ESSypH1kapHl2L+w
	 vBC2FNmA6IfsJcqwJyOErEhRqSU8NzwZ+/0DDZm6ugSGgi+xSJxrDKaXrQIFT2DT9V
	 fV5tsE3KTin2y0rgwmAarGg5N3TkHlNZ3QURUkKIIdacQznadC+zsbURB/+Uxf/ChF
	 BvFInrpZiDCTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8C4C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248539363.29133.13795797031433857527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5948f3cc430ead3c081834012116e09a5c0e7438b5edc4adc2654c16411fd4
Date: Mon, 14 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752485393

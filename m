Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40FE573
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782090994; cv=none; b=dlNfLvXBA22leJGiftdLvz4l+7R8cHE/qjcwzisBEncYeZQIRXFkkaNf3sfKrh5J5afFO9RrxPcbDU7pypRhd8UJVUmpzglNWbuMgcA26g+5yv5oRAZDQnK5IBfKDKuuTa5fhCOibmwOEoxOiIBBroreM1tKQxY2ywg/vX3bGeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782090994; c=relaxed/simple;
	bh=mxmroQZRxlFf6RkUiDZhfEw3IulkZLNg5aAFXFIUb6I=;
	h=To:Subject:From:Message-Id:Date; b=aL0noQLqUO9c4t3lmOE1AOmazJkV3/ZHDGtGoUGfgiL9YZQRlIjdzXwehTUbJYWq1EcG8sV6neBUE0s36vrMGvivgNwB+D0+KqE7F9Bt+WZBMHHxEVswuciBXg7UyJDkhiwdSpo0Fgd+EhF/XPa8dAE2BBNe2VMEkKq6M5QRh/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S57UcGNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S57UcGNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEADC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782090993;
	bh=mxmroQZRxlFf6RkUiDZhfEw3IulkZLNg5aAFXFIUb6I=;
	h=To:Subject:From:Date:From;
	b=S57UcGNaQleKhDjy9vZDqxXxqXCujcP2/kPyxQFxm71hv8yaG+oyR4J/L9+M5KmKe
	 ZmqvH6tUtj0QfmwkfS2+0dlrWxRxw5u4eu/C0GdyYar9w9kbqP5WWWlP80t9stK9ln
	 LSRTZbK7r9HrME0GUTdY2ZJncM2l8oeOTAam3xBrR6bFHw2guBXK+e5jFnSkMwRQsj
	 vO/7m+gj9g8IwMSQgYE+pXLcpipHLuycdsM6WW+gKydxWQ8S3IllRTaIxEHH6E2uR2
	 eLRXN8XxMdKEQHZFHw5vaNglTJCC3GY939Qyuq5rseSFhJOIVlh+us/nM93svc57IB
	 1gadAmBTsUIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC9BCDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209099371.8776.1372258896642286070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8cb515df49e6ad7993fdc8fdcb6a75b2aa087f3b630cf96ad2f9b5b7d4821b
Date: Mon, 22 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782090993

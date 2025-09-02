Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FBC3064A2
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756827594; cv=none; b=mtUP2kxYSlZKH478DXDqE7+QVdRGGakmHXJyrXdYyOmeKXO7aZ1Vg+lKBRa7GRH9rPqc7+dFvAUys/5hpsePSDDYVBanelVZbbA/KXsf689+5HPToiw83E+9nsXhfKLD2nmpzY6+uhWsqzvo8f/41j9+HggKeBGIlma0/dCoE6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756827594; c=relaxed/simple;
	bh=TY0AB5qnSSc6887JgbJXCVBdFi9XGOGy7Nb6U0lltqY=;
	h=To:Subject:From:Message-Id:Date; b=hWrOeLerAEhD+Kl36k4t5SUuI2whTBQOn4MN9wFHnKWsK4cfaf1+3zHLzojeSfLKwt9+xvtHNlsiiJoj2OZAVm2dDCEE+82O8OyP35NRClM95viZrVoKg2ZMXCYYmfpugWj3JIb5CXD3TSZLpws4XtqCIGz91LAyYq2E3xoms9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZoEp0P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZoEp0P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756827593;
	bh=TY0AB5qnSSc6887JgbJXCVBdFi9XGOGy7Nb6U0lltqY=;
	h=To:Subject:From:Date:From;
	b=DZoEp0P5jK5ikg8kI3/nFfhke6lrm37U9kh0LK4QTuO57G4xU6SGk8C9ucKePiRLB
	 H3yW8F/dPId4/wF0ro1/nZYjTwDs3tFeYKhCwkorvIZuvdItRNWFulo+QZX+/LM2QA
	 9A8WCYUxAHcCjBzOCNzLaqv/rnORqTcTaD3C29otWKIV/NTZnQGzn7c8h3OuILzble
	 FIA8WBVVt8Onh7aMbaa0esFSgwt5yVvTuo/gDjfeSCXuPH13+tIWodWEA8Qz+wK1mt
	 ixoFld3vPonllK66QzQ+W+NDqVJDWmZ4fSj8lyckqE3X8qgGGd58FITi/CAIWgSPSn
	 hzjl76eNcI3PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3CCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682759358.5681.9382702493867133566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ef2f45c607ce74a1aeb25fcd92e17b59d290bb2e50249a95bf7fde55e99279
Date: Tue, 02 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756827593

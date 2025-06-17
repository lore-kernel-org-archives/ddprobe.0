Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B4C15D1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750135194; cv=none; b=oPYzw+ZnaarrATQZKv/kImvX9eIV/TIknBX1zvDgBfKZf/wx61VIFCxnxIFPyOd3k6fz5R71kzpktHvnEf/o48T+bmzkGXH+lDFFgrIvY6y6uHW8wRLXz0YSIzn4BYkxa67tkPxLUdtPpfPZ6qmpGafqtyEtXBx1KVKrgtWgnvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750135194; c=relaxed/simple;
	bh=Y/hKIjgQataf48gRNPhdsZEOiUW8ZrC2koj84lZxBl0=;
	h=To:Subject:From:Message-Id:Date; b=pg5WmT4ZNDGviOkZTayu02pqy/l8EJas0oaym+ozt/4xod4KQYeO7Nn60+aywbSsSLoqs9DoswBHcQFH7Jmaz3tfU/VDgroqCb9aK71JUx+i5rIfm2Cyn22P6euJBdddubm+wvGdxdpFOpv8VsYcQX+hJnfj0XXa/IJlW38O1H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUs/rXwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUs/rXwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750135193;
	bh=Y/hKIjgQataf48gRNPhdsZEOiUW8ZrC2koj84lZxBl0=;
	h=To:Subject:From:Date:From;
	b=YUs/rXwrPptUngFiv0ef7das8sPPArrFd4vv26orYu6Qkol/42lwicw7XY0M+qrkm
	 LdgxnX28eO9YYJK1Jx9TmLbFFNwJJd0BPmj8bU+ak8slWnwmPXYeHQi+PMNA8OPOhd
	 P3cWRmNyoiPYJ0ICF+u5mo6CoJDps3qaqiDZBCtsJ7I1PSebb/zrcU1QHxgsUYam2v
	 rYqPaFHFW6eXe7H6v24OHUnauSqmdD1I9+j4AAxam2EqGtoiIbWdIrqjz0nsXQcXmD
	 EymTelcoMF89v17gHdlahhALWkydwjY+NKw57k1EhicHAnE5F2B3VUmnHL0gx/PHQn
	 fhYxLq//UR60g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92978C7115D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013519359.13858.7679986811958480172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6497a50d55811ea4ce88a4fdbe6cb85a7d6ea25ed1be3ef875bbeec12ad3b590
Date: Tue, 17 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750135193

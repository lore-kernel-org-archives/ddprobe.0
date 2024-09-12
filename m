Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AB81878
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726169754; cv=none; b=PatHD7OrcfSsWIfwT+zhhLCv9HNS2n79pvCDkh+TFc/uJLWCTGqwp20D8OlPkXGy5z4Iw0SfD1Ywk4LDeIOjwDsEdGUbZOPk+JdbKxRTqBw0y6n8AQy5QOovJlMZwbNYdGk+BlJHeWMp5gYeZqnVy5H1/bmuvCa5yX5jql9hf2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726169754; c=relaxed/simple;
	bh=7uzRCN9K8LkBLh5/bGTMHlH/1zkc6U/65P3R8OaRbns=;
	h=To:Subject:From:Message-Id:Date; b=ndh73DxGrSpTLHxQNE/co/cMxKtNoJZH/eO/Vzonzx9jAPRpocJhKA4c7oiKt1AZFo1VlycV6o/EyKANG9rSV2IDqW5IQuWwEu6dibL2GRBa9r9039NrSXSAqwV7XhESmGIS4UqDm+QzwB6/UdXxgWJqw/4MBl6ywFVxVplZDA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IT/iCs9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IT/iCs9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC5AC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726169753;
	bh=7uzRCN9K8LkBLh5/bGTMHlH/1zkc6U/65P3R8OaRbns=;
	h=To:Subject:From:Date:From;
	b=IT/iCs9mV2nGA9RnsOJ75elq1m7yRgDehP0w5kkamSejacbXH3xWeO79jHJWB5QNr
	 cLCkQpc6M5g7NhU2cmn7u0q+xPHYi6NHjffzCNRtQ6/uMmK5ZZGXzkyZlm+2KbniO+
	 jcUnLm3+wCGI6JyOCLPjP5qpPoY5Z4/WsdwRiCI/ZCQFaClQXszNJeuzzksXWLrRnS
	 fVubdSCO54ZsmvnW+HyDg+fjzRQ0OjssDFQ3zTwQUCqiysbJwONAUbMzsP4dO5Gwxv
	 Md4a+AaV+aZzmwQsS1GVJ/ZqMT0WRdNccaMgY52ztyq7IO1xy0l0k5zgH8my5F1nuQ
	 p1M6cQDSXnMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590EEEB59D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172616975359.4464.443222103990109007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278e73f6e8fdd18018d2585a49b832da62a1bd25f0570e857853eaeb5d3497ca
Date: Thu, 12 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726169753

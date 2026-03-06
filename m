Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1715A313558
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772784294; cv=none; b=apjINexN8K4xWriJOys0TFPZhvWE+Zn4QvOzZelWwAGdhgXmEIe1OQV3ZmWYz/d2inKWH1kK2vrR758pLTaHwz0CukJqFTO++4RUdF6g4L7i0XSANFQLIrwJSPZ99w8rIXMAtgPPkxyu4qJOsjKrtZjPurERZylIP2LY3LQeYzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772784294; c=relaxed/simple;
	bh=xJw4NcYymNhqrcng09mVOmGrjQ20qtTdDgnyyE34CfU=;
	h=To:Subject:From:Message-Id:Date; b=ilY+EHFSjaWL0Nf+Web6xWW5FAm4NZ9yM3mB4adexBEc8oYLKKQryXFDzziUzMTPk0LyccSFu7/TsUH2wjgCAbQoaKRgOKEAH0Nph0HguMCj0oWMhHISU3ao9uePv4wvkdI+6RwN1ztr1sR2KP+TcNNOdaaHGCbfJAFB4Lfjb+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbi15JiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbi15JiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772784293;
	bh=xJw4NcYymNhqrcng09mVOmGrjQ20qtTdDgnyyE34CfU=;
	h=To:Subject:From:Date:From;
	b=fbi15JiOxkYuN+xk/reYGFXY+PlUAR6oZhBQc1D8poNgDft5WPhDk8ZE0vUGMWXxR
	 zvrUnOeGf42YTCM75JFZFT6Abyj4E3OM8p9tPqvcs+6twwF6MvXsiU2qg6+Ywa8GfU
	 MJLuMAQMJNOK+xJtvV4V0s/Y4UnKF3WgcIXEiTD9X9N76DOg6+8BvoJFgayC23KdJB
	 9LtIcIDtCLQaWYVaZ/dObNgdhslS5rOCsjBOaPhx88ucz65YDLgzMb7zaise0dRvbm
	 djEtLEjRhyZ992JvwXqlBgrPqFNaIGFysrsdRg+gAQdiyXNvTMDtEWhuI6hTxuNxnH
	 MifD2UhUDrsYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D34F01807
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278429358.7854.2603408979962384898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be325d7bcbe252e707a42d7c34e8a65b53de370ec7a9b84f8a5e8793b68d6302
Date: Fri, 06 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772784293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC8C30E82C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781855794; cv=none; b=KArxzThQKkeRMmhTJKLTaEZ/RGnA002UMJvzrywgKdfXBJaotK3cArTvnrWM4KSVYINHNH9e9aZjyrfzoMWhOfKGNM/p2+vy6y5ZvzS0lvuBMPY7ug5zfy4iMQzmdkgc1rC3vKx/IEMYOGqWL5Bf9meD32z4cKaQ10YL741Tdsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781855794; c=relaxed/simple;
	bh=O4mIQKf+UTGCqk/HpOcaqK4GmVGNmPFcBcR1X/A7/34=;
	h=To:Subject:From:Message-Id:Date; b=d6XWi6qPZ6XPY5hhmt+36TkiecsJ5GNVFWVqtz1lNKwI8L+oTOODySbON+qFRzL8Fkb/PLFQywNaHpKlBpgd1NHBnNzZhb5zniajvUDWeQ90kw+OI4DOpZqi5qrNjPx2qun7BrIJCT5uZyt9IvKG8VLrP/rGMRnIf0Sbj5lELyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lvi4LuxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lvi4LuxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F5CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781855793;
	bh=O4mIQKf+UTGCqk/HpOcaqK4GmVGNmPFcBcR1X/A7/34=;
	h=To:Subject:From:Date:From;
	b=Lvi4LuxDskOtPaaVne9y+HRdZXw90XJQoF9rghw+L8Peu/30l0CAq8kTofQBcjDvc
	 nsXGpH61ohruIeB0PgucZ4uAKe7BrpFaOqD6mlEpO+yjIFAaWRGQaOlVES0WKmoXRp
	 Yhp04Svlnzfeq07SuqF7dREcKn3+PAi7A1q9pImx6yrjOtZx8X1QIeS2U0XaFsqEth
	 SLf2CDmydHmGvBUJxZDK87WSin8FrWuONVVYTQKH2eW4MFYsKVIwejhvCfeCFL9E8a
	 sNij28SQ/Bc8jF2bLhN8070bVoajwu+xaebMrb9yX3MhowYmRdNsOQqiXH2nk9dxvr
	 A59NiItyL7IgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50C0CD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185579372.31019.8712694328258135796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9287b97f3f48a39d951fd46a6c4b2873ef74dbc707e3d1cb314e3c7bde069ccb
Date: Fri, 19 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781855793

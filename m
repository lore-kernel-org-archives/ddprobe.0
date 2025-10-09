Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7AC2E9759
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760018994; cv=none; b=QwXW0KwrwjjOFZBAJU3TI7bUfR2CH+LBW0ldoW46Mb+n/siMTRmNKi6ZrcoUC2UV/ODVs45oa6ui2vUVuCrsxAV4Q3GMNKGpEWM+4g0/uxYpcJ+jajIEW3MiN6M8bS2echynpgt5ttcKMOlAmRrUYWLLVXHiz43XjJV3FUyAZgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760018994; c=relaxed/simple;
	bh=QWpMkq9YAzL090FYtje4AlxG+mdIodhrMrqOM9dZK+M=;
	h=To:Subject:From:Message-Id:Date; b=bWurSNArPSwXMTJE4J/q2EUnfocXbe/YaV6EOn0qpRi09DNbK5GJN/P0A4KSQb49CGMAvAevoCRVX2SJJ2d9QAQsaO4Gm/XKcJEn/9Z5SLEFXwok7uRTuha951jpNxASSgVwjvGvpcmvboh+mwb8haPRqR6MWtZzNhBdJQ0215c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PanoFRNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PanoFRNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB3C4CEFE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760018993;
	bh=QWpMkq9YAzL090FYtje4AlxG+mdIodhrMrqOM9dZK+M=;
	h=To:Subject:From:Date:From;
	b=PanoFRNmGmAzCCLxYR28XytFaEj5wgGptP9iX4WTKHdKa9eFqudoYykjhM2xHVHf2
	 yAWeIuVkDSxiLMuu+2imd61VT77V2mz0LxmSHpJpHE/+2lLL+JMw9HTCIBXF6ojTNO
	 0knQtbJlwLQDXZOk33OB0RbomjM3NgON0fVbg2LWUP5EhfioBeoKS0SfM6xGR0PIHI
	 btULcRNPadvML1H22FhcEV6/htcpQ5FI6Ne15O2g3A8Zp+E2/S5WHw8jtYuZ1BlJsF
	 5TyizB1L+qeDLGPgLXkbF3NaGc7H5XDtkKKVHu+QFxhAcud70PlNcQC7p2niuZShQR
	 wNLmOOMUcmSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90036CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001899358.11350.3442659724894136165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6b371fb5401fd9660291df7b11e37a94e15e280beb49ebfdfd5458a7e6857e
Date: Thu, 09 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760018993

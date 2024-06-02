Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE4A28E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717296923; cv=none; b=KPYRFk0VB/y2QzUPoCp5sC3ag11UDNk5+RWzrdRufs71XOkRznvC9nOzwQs1ypv6sWgQtGkGPnc3NPiiaxEFdq52jGfpzy/3zfXUtxed5H0CwKmS8LqhDl+PGxDWPV2x5V0KNSdMUK7DN6Wh+eOVoJDbdLY/ttXs7flvUU0Rkzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717296923; c=relaxed/simple;
	bh=TT0a59A/yRfWQaPfaX0ROfEQXQK51R7Pzg/fW21DxJo=;
	h=To:Subject:From:Message-Id:Date; b=A7/4k4st3B9zs2HQUMQQFKGE1Hg1AIl4ANdlOvDAf8MlDFlzXXKqu+yFRr32SvtU9xWLi0JBGNL3/pQNnCCADS4nZIIxULtt9rcwbrYgdckmj77LTiCyDiUAI+jgVTEscfioep6LVNoREeOkMimGvn9Y2Z4uST6q0ougz3vIK1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxtldQsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxtldQsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB339C116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717296923;
	bh=TT0a59A/yRfWQaPfaX0ROfEQXQK51R7Pzg/fW21DxJo=;
	h=To:Subject:From:Date:From;
	b=gxtldQsnKRxxqGPFLZQR1ku9w/eiAsJ6L1DmGUmCo5jQsspWdvY4829ozoh8rUbvQ
	 W/XhIzf261uSkCoyGflPD8hjS+VI2ajS6Mt7dMlfuzIQ3UJqEe7LCaWZg0FNcZJEHi
	 B1YM0zkuPqLuMEaRNREV9mwnwHfppAcIJpPJD+vxIjxD2kL05WUXG0hSsfrcbD7xeV
	 wWr8Aflc7mkEj+fBOSa3xgQ/8yXyqbeKbxttgZgLC16+Xy4GLuU8K8zMuT68u+CJQM
	 ePws8Qtts9zo7TbkInJbfd/Uj36y2WFJPUm6+d/o7yuw2i6ElC1HQXyWR45hr2l0Vu
	 h8qpavdqQHUkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1965C25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729692280.4560.17768632972680279201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa767db5a98e971152af9b25f601cfbd366b891cc40a825d63c496e262073fbd
Date: Sun, 02 Jun 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717296922

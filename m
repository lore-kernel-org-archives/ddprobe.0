Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140D3EEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773378294; cv=none; b=pe0E3YxfspQkOdQzhiE5Kov5twKBR2kW9f7UMC6Ad2KZGwOYJwNbisaEVo9eDy8zSuQuWFDYKLj26LJaypUZIitQrkegpYY+GNaH8XG6S5sYTN0At451elke3WpfBy71lwIDD+C4aQj+GDTfSy9msm+AfnIx1jn8SY7vxvvI4dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773378294; c=relaxed/simple;
	bh=LxP9SMZDEkrhksl2r/o4ro/P/RG3wo7LOrhqHHeYWdk=;
	h=To:Subject:From:Message-Id:Date; b=ZLVdig8ExnHkzQtjnmd4KZTkYl3atxDIiGSmCRZtOQBvVVpusUHO7hikgk/B5Ji+NDJA9pX9x6+V7DRoOGRrPbjdrYYpK48n3OHjO32WflYvsfHqwtaHMhim8d8A4DGVsoz+YoAjzmjFl8KZR0splo7o91FxF90nALxm/PnQl5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXcweJk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXcweJk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F67C19423
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773378293;
	bh=LxP9SMZDEkrhksl2r/o4ro/P/RG3wo7LOrhqHHeYWdk=;
	h=To:Subject:From:Date:From;
	b=CXcweJk8F89davQu9ZEotx9boHlBnS6BHeTqMsDtQN0Dcn6VwBa2qf2RkW/5D5tcF
	 pT2e3uM0JdIicAFltfvB5fJWaiXXmZHDGD72pO8/OBIRyiC3EwxUMb6n0UOP3Bj2pm
	 3feswtaqse07XVWJw0YL035o1XOOncxeMYTdohFMS0FXc3xUBWweI9bP9Y4kxcwZ5a
	 FdeMFqbyG5YEJOcchKLii0N0NzA7ytQyWkIDYA3/kh4XwiwLpJf4HoHXju+jngXpyH
	 uKUoJ3wDGyFgpSJwzciDwFFt9masQtHKcbA3aCIM7z7EM42fe5rykIbJzg31/A0b3Z
	 8uj4yYqoZYg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93731106FD7D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337829359.27742.7215368742097275039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa33fe152814620dc384aa512d639d2cd37dedbb9fd0b5f19734c76f99a2ada
Date: Fri, 13 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773378293

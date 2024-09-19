Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3DC3C0C
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726749354; cv=none; b=Og8lWjOuq2dhiJgiln8Yi15vS0GdkFrCt69zY7ZJJ3Np+ihvtgQp1Z0q7iTQ8evk7/9SVxi/aWcdeX1sD2NR3oCxOkNVrVU+1OG1U4N8R2COvzMrZaX+/TPw86PpLL055txiSc1WpnvdY0aAGYntcSdWKRNxXXgYtkyb9B7Eho4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726749354; c=relaxed/simple;
	bh=jtOx6DQ2E4LHHikuPRCNnEQtCVS07xMo97tGSo4JYFA=;
	h=To:Subject:From:Message-Id:Date; b=cQFCx5NeiBhM45qpY53k/clfnYC2zrzMIKxdhcZAUYwrbvDRDiYGRRymGd1td/4ertveCcfpISBAKBQOqskNYJ6qTrUo5S+wk3WtohGn1uCPMqX/QnjSUhjbT3WSjoFaSf4bQwkZ4OR4HE2tvF/MZmlRfE7vcGH6Jvlgzjh/i54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swfJ5pod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swfJ5pod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B75C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726749353;
	bh=jtOx6DQ2E4LHHikuPRCNnEQtCVS07xMo97tGSo4JYFA=;
	h=To:Subject:From:Date:From;
	b=swfJ5podsAgUY8xJl6oqQq9l5YCnOj0fZ0YhP4Wmrp51eOHaSISz2+LqQ/HMLoH7A
	 /j1pcN+8hP9In65OmDHdjj6yM5toPMgwW48gKBaUHBGKQRDYhvCPJI1WxEEMqU7r9V
	 mXsdW8LVTYQWhjM52OjjkKzZzqPFmcjfHPCsr/h5T8LWRXCJ1rxcL7JUcDT5kK36x7
	 2L1bGBOP45BL0YqsdpE9yUYb9xgCllJVkDljRqwDBJFvUeuVveBs8jzmwQ9I6eFlXL
	 zn1uvgfBL7L0I4mDlXjq1QXTbFYxF+rjEsEUlJoGJh6C7xGvNkavlEwnkw+PISAOvz
	 1HsTGgC/2sTvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D379CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172674935362.27936.4899369915383989705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9846c935208a9874269dba783b8202a01c397148e3f95e0e7908fbe737ebb9a6
Date: Thu, 19 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726749353

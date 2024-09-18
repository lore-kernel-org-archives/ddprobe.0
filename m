Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FFE27442
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726631754; cv=none; b=thtHIqya/hUJctOK81+3DQwBpkZdhqVRfACC/PxZSuqBluy7AbRYqePYAfHy3v6dEPggAlurKyysRwWwLrCCnXJrOCh/QzhZitfMu7Dfa9jc2rWSYJOwvpar7mYU6HoWFBOVT8gmFtllC5fsAd9sIJyVhMU3YUbPjlmjb3gaE/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726631754; c=relaxed/simple;
	bh=ZDE9VYKfNHDeqF6ERQJG8uyvb0Leb2CtoUJnJKtkeRo=;
	h=To:Subject:From:Message-Id:Date; b=IvZL0HvyjKLXqUGGDZGcwJFKHo80wj2+i3FOpXVHwi81hAXFR9ke2bMg2vlf/pvMaIEZ+RvwWHcfpqCVLrwIc5sH5IB4iU2uR7UgYJAHI8wxDhf1KTO9PO8QU+R2Jbh+B+b6hse89T13cR3TStXCms8DENyroFmDx56zf1gbDbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMcyDaQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMcyDaQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63ABC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726631753;
	bh=ZDE9VYKfNHDeqF6ERQJG8uyvb0Leb2CtoUJnJKtkeRo=;
	h=To:Subject:From:Date:From;
	b=YMcyDaQrrc1uKHx/+kLHgTBeFCaEQRpcaaTgUWpf2M0SvNc8eV9J4/Jd/KMiaTUXA
	 YEEifB9xjImNZ2V3wSGe3vajEU7GbAdXVjLrTp78AXmplU/l8SU0hhy/sjG5Ddrld8
	 lw9z5Nke5FOVM1AhgFSBgNUOonY8zdKEdHJYHR6ayndDLphPtlRnaF7D5x5MTjn8wi
	 Ol//s+SucKDwfljGYvWnNLi876EKQx20c7cd5uwEogVpI5bmHuxROwM/p+jqOXH5xf
	 ntT5rRIEXPWaJ9kEw7fIB97pwROE1nMcqcY67XBd4a5nM1wPXw2uIdU0wF7pgiOqJo
	 bVw3iymjy2yuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90813CAC5B9
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663175358.30035.8553103881793437342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ba36066b26a99b2b2be5babea00870ff09976620a1785230e5ffee52b85ea9
Date: Wed, 18 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726631753

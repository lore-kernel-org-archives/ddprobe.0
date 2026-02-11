Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEE5260565
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770845694; cv=none; b=DjEMBNvJCVbbaE1zMQg1iWTBY9cdZIyi9eYixkVpi076bOL8F5Nc7lNEiP2GaP6eG1nie6kIxjvCo7Szsux7oyQX1MCAZQA6Qyfjg5LKG5jK2B397XCkcQ4HF567kh6V9Ajoiy0C9ns3f9WIiKIULD/T+orb9pQDjfDYltLNvBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770845694; c=relaxed/simple;
	bh=0DeI3G3zBrZ7G5VvTGeDIC/qAvvlMY9oUz+y6xlQcP8=;
	h=To:Subject:From:Message-Id:Date; b=RaFPzAUT7ZKuruoUZ3YmtwrAD3iJxts98bPvPDKYNXkSNenp9CW6HVywMD5rtxQmvkgjGsmTvHJKqH/418y0TnqgXsnAPb/PDBAOCbrEDXre/4RCiwV9FU0UC9LnURqCRS0KckzvJqVYzTmLh937c/hoTFPN9w22SODvun2CgdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh0h14zK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh0h14zK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F63C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770845693;
	bh=0DeI3G3zBrZ7G5VvTGeDIC/qAvvlMY9oUz+y6xlQcP8=;
	h=To:Subject:From:Date:From;
	b=dh0h14zK8gmnB/BA237cRLIEUg2G79Ai6XsUNjUJ4dPVoBRzXvFIx8Ftut0+GIIXZ
	 lYsHQnyXaltkZvN6eMb5HzQl9U/CYGcye1sZ4MB1J37XfL0TSVyADs3cioPpXi9uix
	 QJC33qYmQm+wPwvYoHFBqTQaGVi/+LnCCuYEtieagqXcmSOqwk72PGPUoaJ+CupSxa
	 1W/1nFGnGliCUAE+UvzhQaPB7hgIoRUAjhYYS6nuN66q2apisRVHHm5zYPHVtSpkrT
	 H/9pf4oRGyly7XO8dGcW36mssaw56/twe+aZcgJFe0W6FX+AdGcM96NqhZzLD+3YK0
	 hoW++Yn5hfqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C22FECD6EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084569362.32706.13260844774110974768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbd22d4f76efcd1e2d973b3cf7897dfe1d62dbf9adccedeef6e181720d0a487
Date: Wed, 11 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770845693

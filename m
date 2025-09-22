Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3833833991
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758550794; cv=none; b=h4gBt7q3ybDZk4J6mfVlMLQJrC96djouS3OR8JjOtQAT7HYssMg1xQisw3SntX0fmZY6aek46dhC6LqINQPT9wWb37isUyPsBh74e8/Mn1nW26sRjn+V850fylyoSUum9UucyNGEvXEUq7Ss2mI81pP+rm1hA3e8c8xkzrFr3RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758550794; c=relaxed/simple;
	bh=DwJvGCOeerSLBHcKCFl+y51cPm6qbKYOxYwbVAjKFE0=;
	h=To:Subject:From:Message-Id:Date; b=caJ9sJX5hmEUDDeV6AQAQFcdFdDlpmqv+0yfRRFlqOMG9OK4MnVhZiq9GfWChrEcxMsrS/lbN/We6L2roH93/g5nkObX4owqK8nf0GyudIPwDpI4WgW2xOuzgbzNywklWenNSr2AO2KJaCiyqHYMqjFytwU70zZxZRW7vMglqxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLFlA8/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLFlA8/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B37C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758550793;
	bh=DwJvGCOeerSLBHcKCFl+y51cPm6qbKYOxYwbVAjKFE0=;
	h=To:Subject:From:Date:From;
	b=cLFlA8/lFrRhpaFPkGlnTbgGR/UHsGT15nMTPsaU0LhjD6q7iBtrsxl6OviS/yWRt
	 5LoSh3kTwl3we/96HfinpAMl7Y9ox31BPrtho2hDxQsB32M7Sk7rtFoiX/SVfNJFSv
	 nwj+vGVAMmDmLem/0yxywpUXL22fmdPlgv/3LRAMRIJbzKtF7jgW8x/DqKH+MTKoZo
	 jnEP+KgspvgjGHp712tDizj++puDE5Ai6D311viY+P40a4xeHInmJBDR0axc3E6bsg
	 ljVs99ToWtK3CCn/fQnHayl7DeDbjh6OUkFT5OOtsuiv45gBLy5SZaZ36UPCzSCgEV
	 HjhJA5zO9g8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED1CAC5A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855079358.16913.18348074182696192867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926e3b675446a5e954ac18c318e9db908e3065eed4e11de8a104bff5909186de
Date: Mon, 22 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758550793

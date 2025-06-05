Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3023722F765
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749129594; cv=none; b=txyIYhlxFdjN46rhgGZKKC6QrxBdYnWLnnr0p82DY3Hp/y+1SgKZV1FdXLquThz+79A5C/zfbjCK5+CEkjBWPkRmWLAIbzdr1o/47lueZd5yM0kgWj6SYjmFpUaCv1O5AVe48DkuAps5s4FjcSFVK+g4ctkqTS71mc9ZiY2ZsgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749129594; c=relaxed/simple;
	bh=RKpripuKeJKJv+p0h14aCOXiRM+G1p3sSqrq3/zT3fw=;
	h=To:Subject:From:Message-Id:Date; b=ZcYhmlA359u7Hrs9K2fNd1mHf/PuUhaES6rB/akqBaSaUXHzikimCULELzwAiRGQTh7Bt+NeuZkkALRh2iqnJdH0GVL5bNJGJu286wj7BgtC6wXPUEVBcajo45/zYO8o/mEGSobvGXmfmsiV2rMQPFf+XQbklxY0czQZjQ/WRf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KO1mdaFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KO1mdaFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749129593;
	bh=RKpripuKeJKJv+p0h14aCOXiRM+G1p3sSqrq3/zT3fw=;
	h=To:Subject:From:Date:From;
	b=KO1mdaFWhCJSHB855R71XKytfJr8m2swB9HGiWjjo98O3XpVqaa1kqgSw9m/MU6LE
	 nhG6K+bL9XPkCYeHvitv/veXdUSRiUjLm6WJ3q8O3IQ8LBKMydUxNieZ/oXXbxweJL
	 yniilX8OO67DjkswQ7Ms6Edz3AJ2OGKGUg4LjTsxzwOC1qGLNcvJ1C1it8aMG2Xcvn
	 D0TxH499woLzSBB3IBlSRjYuBMigsEMh6M9dcAJ62W0c+t+0MY65JJOLgs2vjuPOU2
	 8d9AyF9/IvS0HZcDMgvVWTxURYWNoNYUHuGPnUgUUtPrdPvK0S96NBNNeljx+wvUZt
	 RvvDIQOmIR5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B2C5B552
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912959357.20109.1154400454221562810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e672568608e824b3fbaee3b172d7c9089c5ed7ce7bfc17fde417cb9f5f35b9
Date: Thu, 05 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749129593

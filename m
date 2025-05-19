Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C69C1A3142
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747688394; cv=none; b=itLbCy8j9d9j8U2LYT7sjX3JN/DR/fvEGmKc3fg9UQNoezXF4qQAnxVJ9l1bNfeEzEO/6ADyUkV/em42QQQk+yNIvYfEWAVoOn0nX2dVElBUpXjpaZckSH5chr7kaDTMIQXfLMxVv7SCksh/b74Sr0LGKX4nTXrvRvJE2enUJyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747688394; c=relaxed/simple;
	bh=bkUwgkHpxepGWnqI+kN1i9E4BhV15e7Zb5EnZhwIrl4=;
	h=To:Subject:From:Message-Id:Date; b=BKqpSZwXV/NEIDgEqNsZB/5EGOkmhJMBcT5JuOPuBNUFc1mAxcR3WuzeMWnv+YqbKn2vJ94sCGUDllWtFWKDkygyh5RmyXbdFjW/9AX2dBa+GNRAbzT54BlNy1C2axH9FANkEFlkMa/kIyg9Kh4wh09nVqvnRrf/qhZbc9wexDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaV+p6v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaV+p6v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A281CC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747688393;
	bh=bkUwgkHpxepGWnqI+kN1i9E4BhV15e7Zb5EnZhwIrl4=;
	h=To:Subject:From:Date:From;
	b=KaV+p6v7I4g5WLAHqGGTfcziltRb1W7WOx/WlHtOX8ZxRRPxoDVXpeFkEmMzEO5m1
	 DVNYtF9GsjcH/zB93NfCsYj/Qikhc6E9mbZ+dtQPtFADCN1DRrct84BeFQViT0yIAw
	 WybPRRKCUt89tGOObQF+mrRxZHJzlPw7CbGsHgElV1vwuRXsVmaF/lsunaGflyRm8s
	 G2DNAh8ydxRx5u1SnUIU7hwCq5gIkQv7kIDqNoqSkgqhZo/+1G1XbvKm1sRgxo74V1
	 TCbHjRwUeqe+11mPaeV69tfWGvA7w5UeNwif2y8Hzc3pTfq09ykqY4tmTqBbtFeFAb
	 mupWRsvKy5zZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DDC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768839357.12733.6944298248479011254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5557f46d4927f960208be4b1e750da74743cc52fd553cf4a6b76b657c7218a
Date: Mon, 19 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747688393

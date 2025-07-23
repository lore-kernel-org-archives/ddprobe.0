Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF62B1F1909
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753308594; cv=none; b=YCNMQmVCLJus3JtbWVFtb7jqEdygSGzIIYhrIJofKF9INFJlwZVt0u1S4bs7e34AWl4abBEhjy3oqbMpezrq/4zHyCv1N52sbAhCzTP1zUoD8x5CpPyTy4GdT7jZTQ1RpFmdi/eSmTaA67jO6AmE+gx9FXUQHVsWf8NgwwD4AcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753308594; c=relaxed/simple;
	bh=I9LxGeTB0Xy2jZJgWmlNwquGC/Iv1LCqyP5sT7DL7SA=;
	h=To:Subject:From:Message-Id:Date; b=SmGbSOmSf700qioj/XpijdnYbjV1ywlAojttR/suOPU7P099EK+qWq36neJHskGgdTDyJ4G2B1Ufzs1mbf6A930xmkpRctMbc/Qy+M5RnGd/ScTjbUeZ4TP3qMqs90oUhSmll9k3QssNeO/j41dcqolM9qvGDuu1iS8KLGQBLj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pz0wL8hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pz0wL8hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7054C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753308593;
	bh=I9LxGeTB0Xy2jZJgWmlNwquGC/Iv1LCqyP5sT7DL7SA=;
	h=To:Subject:From:Date:From;
	b=Pz0wL8hlCMcn/9KKX6pE2xQc1sgdyusQY9KUxMsGBRwYDUf928fNk83Mdc057ul/o
	 WtFV6e5ArVmek92tJglmRMSFM7JBjD0R+yHJ/HnTWQmdvMUhbY5DKaocBeJFq7PabP
	 YJkLxRHX3u7oC+40pyGX6MBPGpoonDoMrVej4W9Be7U7SkSXE4rSrDz54UgU0fEDQJ
	 jb483lfOqlGlBe2zwrsPhFnTscGI1uBNkRAZ/yELpwR3g72q0RxY2yJp5lJagNMjI7
	 htJ1IgRXGx4/NAMreOQUyCSOCqNO8pKqzlUkYMe8ZJmArujw7dGSageQ1PCVCDosK6
	 izZSKO71JhK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927FFC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330859357.15959.9857814898651999580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe6dbed6e3748aa835ec1c356fcc5ec01a7ce6a9108f48fa7830a2eb009123d
Date: Wed, 23 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753308593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B962DCC17
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756587594; cv=none; b=gpYMk1KYylLMNhvT7KOynH+2fzGjAIKFyTvbqkErDY9WgBkXvOZPd/VIQyGHEKhYGkoQnuMpvCF6mp7EySuaRFxv4ENcB5KNT6yr5O0NP+pyk6xKcwNiXW/+NyeS9vTQI5uXtsKR1gObbPrvaM2XsOPrniYj3YgPZEzEEvEKgtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756587594; c=relaxed/simple;
	bh=hpCGMJPetavp6aTi3jkpl+iIVtHe40mZUaOYAPn0dlc=;
	h=To:Subject:From:Message-Id:Date; b=JA+gQ8j3Bn47X5O02yr3RTTPqEE879ReFeUMAx7U/0+F4JgNSQf27BXyWK9zNpIGM/U8hGTAguGksvPD8kT4t5e6lx4Ld5ck9Z65Yxh44OpG1gYIFMrHhoN8ohakarNyST70pqkLfVyccTH4I3frAu5s/ypOA5zIKqz16kNv+yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxP3jHwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxP3jHwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2077C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756587593;
	bh=hpCGMJPetavp6aTi3jkpl+iIVtHe40mZUaOYAPn0dlc=;
	h=To:Subject:From:Date:From;
	b=AxP3jHwBiFJSolFZolYZVhbCH/OK4XIW/kPp7iqdomQA8r7u1Q4TOHKoOwVxnUhHD
	 ZvOl3R1cdl31nNsfgXaLsf198Cx+MU1BYa61em9YY5GAM5bBHQNlKk42BfkXeI6Y+x
	 E0+VU1e0HJnuWPnYJ7O0G0ZNno7cRbSGrSR+Ww1AVZxJOoDt4t5Rg7P7Pd/tNR5O1Z
	 EdvTB8lJPMKxtZo7NgXW36gfrP1ZHaM6Rd42NZjb1HRrYHTl9kdBqP4B4bWHFfoQNl
	 4+7M1F9boTimlpYty3AcvCX6tIr13AFTuvUyPaghlCoY5x4c09bXrNo/G30HxM+aJ8
	 2Xw8IhlU4Csaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02ECA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658759357.27804.16918848940655150005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff8c021044befdf43c03a81de4ad5ca6ef021072ce7783c9e5b509c2c158e5d
Date: Sat, 30 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756587593

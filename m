Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB920F093
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744004394; cv=none; b=TANjzwiEd3yuIHTbJel/tgT620TBv4OY8CPd9PXCqI9ZcD1fcRWYzD1xRXAMTrlXwJvXoAt2Gb28/ay3rqU0TBbLtDsbYHLX6HCTU01T/QeNAnrKiyu94sNzY/PzV2VruUACOrIUqG0OS0kvO1EWXeTY6nBO9iBX/8B8WZ7TeoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744004394; c=relaxed/simple;
	bh=vEss76aImCKro1ZQ/nMBK0Pk4sC/1sx+hTDeqR9xStU=;
	h=To:Subject:From:Message-Id:Date; b=MysU+hmjz2rNpfnKC5IGf2PkiGzkFwNtmQ9+xB60zU7Pwv2wsTUMRxk9iqPYlpg7I8MeXFXHHWqKQibkObefL5tX4v3JxYClw8DrWfSNd8k7o15ulkMWvOdX3zAauNgMK/ai0aw8L4Fy1dgQ8UjRVyuXemKCFZbbpl2aBn9/hoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnlQjNEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnlQjNEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F17C4CEEA
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744004393;
	bh=vEss76aImCKro1ZQ/nMBK0Pk4sC/1sx+hTDeqR9xStU=;
	h=To:Subject:From:Date:From;
	b=VnlQjNEQjc3xv1xahAa35MlE+k662WDorPPKvIyjQy0zhJeqeAnHh9mOzH38htj6D
	 Y+rKItyxqmjKi7VCqCGn08Y2nD8kOIuKYEu0l8xMwz09If4I+ErDFT1wuo/GjjNpbo
	 J0d6oGwV+YdU0xeszzH4DRMLm+Efug84nolL3uRUA2312BNf57YxIHFw7nfUCBY9AL
	 AioFretnRmgmF61pFkCSoYK0xArsq+1Gkp3DzAAL3Ud8gTBCtsmXU296LYn96HG53j
	 gGbrIMElHsG+PVGfrvS7WcNhwM7Kre9kRVnN1ymW8+FPrTyenV9ZwHvAOWzzJoxv8X
	 aQZcwTlxAnkOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A66C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400439361.22684.1551489665266707955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c2e79c14b2f66fe5d5f608ed7e41e9370c4274b95e976fdf4d644d97850246
Date: Mon, 07 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744004393

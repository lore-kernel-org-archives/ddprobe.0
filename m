Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF5434A325
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756218593; cv=none; b=eLhQxgnMq6AmwqyXxQVlWuzOXDlnd40PELFuaFhAwRgE6zctF1MxVWAvvbgLp1OucFbiEc8cc0WQR+I2GqXxo78qKZYFpCpRGjTuCsBIdrb6ezt4tUphmmYoWY5ZRfURpeRz/AePQwOBd/8S7gsI9SlPwbP3CMkHZMUo5YdVatU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756218593; c=relaxed/simple;
	bh=DMZnS70TAPV8k/J3Xt813GPP4yenS6HOR1PtezKvWcQ=;
	h=To:Subject:From:Message-Id:Date; b=n739m8XfnRDSe9RM81/n4ulvYWeSgLppAoVVbS+uTY+b84z57SHWNCalOTAHDUVw4nBAaUramRPOaPw3+2lw/lKLg8CmmfmMQvEoVF/8MHosyFv3NLaK1Q+2692kJ61oM7jvxt/ZlnSmVNa+3CC7ycDeguzcceYNjTtiekiT73Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrQiey4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrQiey4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD7C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756218593;
	bh=DMZnS70TAPV8k/J3Xt813GPP4yenS6HOR1PtezKvWcQ=;
	h=To:Subject:From:Date:From;
	b=jrQiey4yuVMdyJK0ju3S7rk+rvdsV1neq9MLv4CPXFxeps8j4+jG6rmSIcSVM6Rfo
	 J9fzh0KtokwJIuYzQuKEzTODI8RgH9OuhblNFsYwfa+1415khfeoRN+yIfkjSyiJfW
	 TpHgBiCqaNWDouQH2M/qRQKREfxIp4MTh5mG2x+HqlbNQ4l7FdRFIjFbsMyD7p9Lqw
	 0o1AqGixw4cx2ppHGi3Tr2JeAU0sZ+XgrRovcV9+bwmTYZHqJkfMcs3Eiku/RWMald
	 F+3MRKXGFei4FSlE+iTky9pK1D05e0EmnjZUBNun68vLyjWpf3e+oTlQdJCfKX9SOh
	 PsnzrW+T9KYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EEDCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621859358.3073.14155079729880685642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab7a14e86b72a720ed4be3406ae2cb83361eda9a236293da771e0ccb431e1ea
Date: Tue, 26 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756218593

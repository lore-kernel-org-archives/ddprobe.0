Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2792E2DDD
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756886394; cv=none; b=E2DeA+ZUnIubdHwmhHigJor5NhaLl85VpCWyl6MLOuAisnXl6XR04EgaLMYlb+pJZddTOuOmhg7DGwf8hflMp2tiG+/EhgzNvL1BJxAXxE+dYBBMXsiYu1+2ZA3XZYmA8geWavWh025jMRDG+D9wPI1BqDJpHCi89JllBQK6o+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756886394; c=relaxed/simple;
	bh=GKJNUpK/+4eqzumT3/mLwJ9Ic5B09Cpi+Rlp5WHvzfw=;
	h=To:Subject:From:Message-Id:Date; b=os+Qa2CPJ6S1pvb97LaWJ8j/GDspc7/b0AqKyKtWZA0ok6Q0f7jJ2fif9Y3TR1Dn/eTI2wVDWUNeiIIGe0p0Nx+R+Mg3O7i8DRx7UKBAKBBaPdkkwm79rb3yD2epqYcNUrfKfkfojDtexjTREKEYm/ASSkXAMGUQm8PRy7yBr0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSreHN2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSreHN2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D9C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756886393;
	bh=GKJNUpK/+4eqzumT3/mLwJ9Ic5B09Cpi+Rlp5WHvzfw=;
	h=To:Subject:From:Date:From;
	b=DSreHN2zk0oRMDhJZs93xg8gEEMAU+OOscnE3nuWoNKZeMMkWKrNXseWGt8zOR5xw
	 W13b2u4fpZqMfkJTXB00UxfrKe0ARts1U0qNhKJelP1nvKPneIPsnUHSM9/s/CRfSD
	 TpOIATixVaBzpI2a/vWmfzH9QkPbkkkhQyfAVJYrv81k8Oow6aXGVvSmka+7mz4Azy
	 ZO2Ek0iu7ckBr1XLLf6iedP1hjpNJG3hGpeEACGg8B/JiWyrwODjdWpIFiyPLY6ng+
	 upO2fHpNBn0svgotxiRSnvuac7CbxD0N6BiuBfNhLn5N6BUZxUuYDWjZQQDaVhjInz
	 jahDUtcrvTEEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D4CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688639358.18819.9452032429789083938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5ed0e5ec2f80f49512269b0f9efb57aea5bbd808ff8fb60ee34650aac81f71
Date: Wed, 03 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756886393

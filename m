Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1810A1CF7BF
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729542954; cv=none; b=jpnwTpMVD2ViS5rD6kUZoRG1Tkf/mGttYmuRfSl9IKkGk9WF/JqLpQYGWv1YAcNQGj1ye+HA5DHHaMGcUu61+5aLWO0dOiXxI3YgvoVJB5pQDD1NVzkLhZKKzddLoI1Uz38Evvvrf6Hf4XGqHh1cTlKEUkMcO20iQtu7U0TUTmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729542954; c=relaxed/simple;
	bh=PXUdIG4FHUrb6vnhKEekUYiIqHUKADMMyFc5fB92pik=;
	h=To:Subject:From:Message-Id:Date; b=BPMook4jalTstk8nT1y4mjH2Y4hh8KKzswEYxNFF1Xo4OpWDeGM6HHmyaWtG2AMPELWFiA4zyNWMiZ85tYuIo+mK5brvFkD3m1HXPQWwsOFX6LkPhfHLkR4feuN3BS5eTAsB+dDuUmc6U8SzB7YaR7iMHW00X+42djarl4X35W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccImaI7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccImaI7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB8C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729542953;
	bh=PXUdIG4FHUrb6vnhKEekUYiIqHUKADMMyFc5fB92pik=;
	h=To:Subject:From:Date:From;
	b=ccImaI7BIXV3nRomN+zgOcd34WiiECySp79nUHKQZO+U39diwXDBqUqy5IOdR7HWH
	 ISd/so7Nikgq8fNjsbaMhUiHJZkEfrbvqDcCEcp9irwaOoQwHuHeG2viQGQcfR3loG
	 W2FDIq+7Fst5K9DvNSxtVkBURLBij4UkgtgQ4x4M1SjdnivgDxVvxKhBbqLOgB37BW
	 ysfJeuj3P01hB5WprvMSBUiq8ya7pud1+vSjx17E+l5GNzD1DllMjClqWh6kCjJuy9
	 4xHiq+oYRasVdnpOtzOYSzMqKCMOeAwhCFUhTs47v0AXH+K43b7Lt3LGdieCdJpaz5
	 lkCy1JrQ3qk3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004DD17131
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954295358.27705.15065322595390696921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2fcb36b7cf4c91fe0ae9bac898e04c831f031f76db3e15896f0ef87bd197ea
Date: Mon, 21 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729542953

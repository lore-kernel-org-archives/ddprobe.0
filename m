Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2133B4A11
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753738794; cv=none; b=sTGOb7eXubxZWgIHWwffWjsAXXnTuUQoNHsOdXwJBmGXwxhIbJWrPVYVRA5I+VOBFWMK6xepk/bRc1Np2d/CFOtPbKXuKVDT25qI9onObKcWjOqAvfRau/WOfGDKazadxGaex0Eq3nhpdNCR335fWo4h0bN6xDps8+CAlMB7vts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753738794; c=relaxed/simple;
	bh=j+qJP11qSqDnxGIZ3pB6Gsj1cKdYNIp+TtQGx63Y0DQ=;
	h=To:Subject:From:Message-Id:Date; b=eXeDB1khIt/4Nf5gg4gT9uWbf/qhfsMmO3CqiwUov+k/tiY6DNtMuNJg6UUM8Y5gdqVhQI3mmkWuxBVVigANaizLLYNZhcA0yturQnw5BjhH8rfJTGxbvRGQKCo/DjYg/yN7q/WRqNrxyo8s88HUTZsnO4I3uhyC33DZwCOOTL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFU/yQZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFU/yQZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753738793;
	bh=j+qJP11qSqDnxGIZ3pB6Gsj1cKdYNIp+TtQGx63Y0DQ=;
	h=To:Subject:From:Date:From;
	b=PFU/yQZdBy5kLnF7/lvAXXeWUKB123M1X4uM11wKj9IefbQR3XZpF8NoMwb3OvRUG
	 F/0s4Pobf6mOh/CP5bkStnaGrLWn0ZNilJwdmMBjlVP6wyvDpx7Y0nKYQ+sNomN6aW
	 J8lZpK1CzMCJo5hj20eDHjhPx92mHg0x3cUWsW5OKlql9aCBEpxBsXzPOmNiADBW6s
	 aHSFI3uwi53Ic12gW/ALMCngUHepntVu6PdWtIlW5pbg+Kmb81/AC/5qkiSQPx/2gL
	 boQ/9QYvkatNa2zS26Tj3XiCmiBfyQCEZF+wm7YUZj49VkTwp9M60O4qUbQ5DiyNzJ
	 qEiZUQVS6RERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB7C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373879358.5587.13810137262475534080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1437bd09d7918f0168193ee3275f8b2f98caacef6a6eeea6f0eaf5f744c09f
Date: Mon, 28 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753738793

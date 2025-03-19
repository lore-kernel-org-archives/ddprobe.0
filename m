Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B317A2FA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742393394; cv=none; b=OviMjMzuDJunMSv0XWQtBKcjCgWyY0zm3hSOnoVs1thoNGzGP9HnpJkHeej0WzpMKDZ8Sdd0ott/nFxdt0ZqmXcco2CzXL+xb+iZBbafqhXN+GiQarF8g7oL4mfohDTOvf7gRHhvzHMePxr9Vq15V15iiv9PCu7HyCQxq+Ae1Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742393394; c=relaxed/simple;
	bh=tKwalsFMCeJpkuxTWE6XyBf5Q8X9ZeEn3bppLzEV2is=;
	h=To:Subject:From:Message-Id:Date; b=ROFArkx7ySeU9t9ucysdNMlHv9dUaIcjlox7BTwAHtWIJMRlpgt3WXiP9Qo7v41RwEQd3Ru3//8f669F4D+lB67KSDR/jxdi8cQ6m4m9ouq3DqmS31fLx3fUKgZslWl76crmXKXkQnTaYs4y30ZlDNFUWuPjLLOg251yw6eEBKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm2IdhTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm2IdhTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742393393;
	bh=tKwalsFMCeJpkuxTWE6XyBf5Q8X9ZeEn3bppLzEV2is=;
	h=To:Subject:From:Date:From;
	b=Bm2IdhTawAytNVLfBDL6Sl5D4IWJo0Co/xAXsuvg4ph5ZlflGcePDcN1WgbVTQ1Nv
	 EZXkUI7Jcvap/g+RSEMHKe06t25E8Hubye8l0eWFNQRCEUk/aNIF9wHpQJdVW+A3HS
	 5+/1nDpt/TkITXgRJ3z3JUvAyztR6BwDcR2alUd7HtosBU0dQAYcgeV9KBHcUmLYgG
	 EkvrXAWdxZ0/ru3reToHrs8L6jSuyjc54YFjuyP2T4RENYCqbmC4Ud3LZTDVXEOxPO
	 ViXVGDvRmmm1xEUl1fimofVpAYmlsj9Psd3kkQfmnAgbjWNLtpA3FW82VaqfgSSUVg
	 v5JI/AM9hZeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B92C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239339358.18657.16093946771593324211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640b5ed40173484c73cdd6ae8fe91cd4e3b7d8674f85b4d68d7da20fc34b5e21
Date: Wed, 19 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742393393

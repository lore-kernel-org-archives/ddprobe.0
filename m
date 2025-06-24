Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226A825228F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750754994; cv=none; b=uOUyJ6Ss5ZLAPn4jCDdS48e0TbjjkfpuWjoKj6EfdCcqkLABrRUwubD6A9fKkRDko+0joVBMHXbNMu53d1wKaO8iLSda2alSbMxwVtFR6cBpUQsWn59fxrsGRlE9Kn3ZEF2W+6MbMtFen3O+TblXSvk9meWh9GnQ5GimX9wYnxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750754994; c=relaxed/simple;
	bh=fsZ5cITKLE2dDQyT2mdsxNf8nywnsGzVPfAEAistZcM=;
	h=To:Subject:From:Message-Id:Date; b=FafTujt6rVkqQulaI26hjYvwL+dAdZTZIG6urkv0IuM9SPKRdPQ1ju8IP0TZuN8px8r5hsbc74UCfyIAOF17iZndM2hSCfkz0uR4TjGqJJS1tEHA2Rd+mou6TwypPkjYdb27hADyR5jzV256YtdNep/Z0g81rIjKiYY48kvg0RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQr/SmAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQr/SmAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B07C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750754993;
	bh=fsZ5cITKLE2dDQyT2mdsxNf8nywnsGzVPfAEAistZcM=;
	h=To:Subject:From:Date:From;
	b=eQr/SmArn2ZAQ25ApjS9Kb3lURLVF6E/9X0/IkKypCEc4RwpOeVQpWt9Ie78ejxFs
	 l3B5OiDOjASwqAXy2PbtOv7EGuiClsKGCya6l9BSdBTXudAwopRTKpkFohjcCtjF+s
	 SU7C7ec9hT4tlpVtNQWrADr+XfaKaUKJaNiaeO9gDVosaK43D63nloYzJ2MjsCLMda
	 3sYGDJMva8AWJ7gYnZFLCt2C114/UhTzqYQihDYXyIPsff7T/yxEINV9I3cU8r/at4
	 F0gTJScA5Zhr1PxcIXmN8x5WPrqZS89yhwa9gww6HrX4ayT7yoKj9VKv3BreDF84Eo
	 5bRgWdQGih9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBBC7EE31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075499358.734.14327725081946310928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b487d9d944c3667566d09af7571db8de6f7fc63185b16ea2b12234d98ffb6fb
Date: Tue, 24 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750754993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3850D3ACA72
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773827094; cv=none; b=Yd4GBMPsxqQAHmTV6yolPMjTp7h33bFrloqHDNDYnGJowCqxkejIvQepJThEuaKhzHJtdAgBlHP/7lupiC/ECgxymXD8mJevZLPkWeWJgyVNPBf3syyH/xfvPR5Syz2HsLykPqv0rWKqBCgQrWEaPZ9kIfIZplTKOTgNbYZo5mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773827094; c=relaxed/simple;
	bh=el64xvahT8oyk7xLlxW5/zPN2mOECPTwEWPZR8kryFI=;
	h=To:Subject:From:Message-Id:Date; b=lP2YeLEasHQEWiqWn5kPnkI/7T7kNo13fuxQO/cbvhtfWQl4jjl2GfI5N4eK0VWv8SBZHgcUGEFOy3tThz8Dvpd5/Ug+Zvqv7+NSNLRNCcDdfwzEIzmk4+sEenIu5s2kdKm7FFT1AjS4KQf8uSjHTz0IkhmL1TRkKhAETvtPwmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkDusmAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkDusmAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D83AC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773827093;
	bh=el64xvahT8oyk7xLlxW5/zPN2mOECPTwEWPZR8kryFI=;
	h=To:Subject:From:Date:From;
	b=AkDusmAxx57/Fm+cUECQyj75UEalDHy0J9GQTf3i15FWALYeHP31hiU8jdOKpr7xE
	 uGSRnnsoHn/QUW9FCIzUMS6AkzmoYZ537XQkX9NCXML1FIq2kM0zerSF50cSfRBSYX
	 stR6vL+TfFjlurQ9IoD05RSuJcg0v6AAcUZ5ym38mi7+ud2JHM6KP4ZKP0aK6hBC6E
	 hFcsdcwQyB+r6WZVk0/FkFoouo+k08KfXUCCtp6fE1oFdOx4ZsGF+Prx0kEEjNbYtI
	 BOo/dY1QZp5EE3KBK2nMiNUWg2IDSjFYUXpTXyOoRbeheT6y9GH/q/CHFka52VOx6f
	 BjcJ0nUYffkGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84B10854DB
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382709358.22772.14498914251329749170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec77ece5f0c7b5925a062e588a3539d4d0b8c99c7b60cf1e3f276ab93d6e6cf9
Date: Wed, 18 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773827093

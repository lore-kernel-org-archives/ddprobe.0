Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6F52309BD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736843154; cv=none; b=PRnl94ESD3vdtxekn0SB2+pu0AQuE0wmCL5Mozb1IGFhvW8Nfda3nOmDQABlbI0YIz7ihcvnfobUREjfT7eW5QXz1y+PhPgW0mMMWEwOkGK2aRN+DvJCxGoBJIZmMeh6zRVmRNDlGX5jBpfV6liGayWmf39Gb9EXKiEMbPOR7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736843154; c=relaxed/simple;
	bh=kpMhGpOqayosKhhlCwdk9UGy++Rwf1CchOonmQl3Em4=;
	h=To:Subject:From:Message-Id:Date; b=Zr/Ryd0POpGIR2shNtkkui+xSRpohM7Mhq+IZaMOGhn6z50BaCzjNbjYtKmVlLmQ4FUbmD7V9p/KS2zG2djvGo/AkWLqyCNzgjyxIFiLhzpj0bugahwB6z+xz/n7UTo2TrPeIeAd1a+gRdluWwt2xPoB+hAUbUSA3OsISMJu7BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfAFgJYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfAFgJYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B51C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736843153;
	bh=kpMhGpOqayosKhhlCwdk9UGy++Rwf1CchOonmQl3Em4=;
	h=To:Subject:From:Date:From;
	b=AfAFgJYil9xDZnpM6RoILBpt2Vlo50Lpao2c3C4DZrMQ/qvG20ikTwArL15IywAxO
	 5gl/E6KptTalg/htgPwjfMUWjv8fRUJ7vCuUxIdMEey3/lM69V+PozHM5/7CrzsOGz
	 l+1Nv8Qobhw9nqARr5V9oqo1KunnMIjFx+cxm556sLC070mK8/SBCQIKYNRiHw4jqM
	 NRG6eaADRfkUl3yyUcm5tzEifhgO+efzAeZRnKP4AGLrHCbYeXPmMQ4S4ipAMgoT02
	 fE9yn1AxPZehzp9CmEO5zU7ZtUREeFFU9rY/sukXrwMZFgTLUSxxsLg14+UAk4tgR8
	 LuiZ6w09yUxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92669C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684315359.12922.13275313454187576105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1197145273815f081b026580344737833aa002eb0d2ea9659bf9ef81508ddff
Date: Tue, 14 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736843153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E6244E84
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739049956; cv=none; b=LQqLzsRDAKyPdcbrAYU2VBfEs+2osAVhV38TA8549fiOJgc7gjeqzKode4gY4XC8HXnyAvnUKq6H7fJjnf6hphp+/ruFooOf5oOSonMAe87EgkeEVvcsQ1C0EiMrTO3CuWT3W2Qz7GCeZLtzGGc92VTKbbenVRK0gsduZ6lTNtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739049956; c=relaxed/simple;
	bh=IY4ViNHlot0qZd1Df9Q8bL1HU4ISDMkxlYlzoMkKfs0=;
	h=To:Subject:From:Message-Id:Date; b=C354TzPaRe9liZatr3YSDGje8+SC/cXYEWcLYEe4y5ztjBvzAvlKfQy4D15SIZpPsTB3y+gbmXXXSPGwzHc/vz0a8WDAvGTDuSgFK/k/vMTD/7/P0pikP0FcR880Bwz8KPcALJ9T2o/n6bafjbrqcGPg1nwyBWq7/spRXOi7q54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr2cqkwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr2cqkwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB1C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739049953;
	bh=IY4ViNHlot0qZd1Df9Q8bL1HU4ISDMkxlYlzoMkKfs0=;
	h=To:Subject:From:Date:From;
	b=nr2cqkwjFsTNv6ylmovI/8ozAKlTBMauXyGSSwq/esgAXzE3qqhahzUh2IjxZSh3E
	 RIxtM6SDNUlpLEvHMLHn+qBPTdShrzMFO4mkZtJj+u4qFXlJHpYqXe83XQzQl7avJh
	 au7sqrSYbbF+02xkHtvmzcLxmEAftgppn4wWsJMBCbU6UIUNISAq7ThQEXjfL7wygH
	 3p96gNB80YGK3zoQo/hEvFP6BIaOPNIVSrBtaewRR7/VcORADy09I07Kphj+lvQK/5
	 CLg9Dy0MRcKXa2iuaIH8BZx3Kqs5EUeTyv1Vn4b/t5WMoSe3ko4c3YbAI4c+INP26l
	 OJqSG2OHDztog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92397C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904995358.26047.10760243729275466347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314d82ec294178744b0bde50b173549957793cb98029e13fd2b0f141c1534b37
Date: Sat, 08 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739049953

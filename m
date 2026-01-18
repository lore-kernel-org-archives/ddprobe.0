Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A6F171CD
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768750434; cv=none; b=V1RaTheLVWydI8Qeps2EfWrA+3WGofJCRltW+yjbPhA3QbbJLPkvWVd7vbkyWAprVj9EoR4V6y/2LX7K4y57aE+ONzgSTXu02OaH+oI3XwyYe9Q8uN9XTMRzd5GpRhctDu4idPtpy78LzcNr91FBbyfPsGO6aPmiKtWaWi1Lfko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768750434; c=relaxed/simple;
	bh=jpCoSgJEzw+XxY81OvI1yr/ppXlUjnUnxbWZ5SZeKCs=;
	h=To:Subject:From:Message-Id:Date; b=eerIIOe7psvXk6TtnrMXT3htXCqvTJg8WustcqCKs533GJksoZXCQ1pY9GGUIelhGRx6lsIOkovwUtt/sOdUrpEPfpNiX+ijFWKlll5zz8VeZ6fDk/C+wEf+b+fFuCcGGvapsEpNM6mn8kDjy64YGcmmGbDXEsIX/mz8yQu0AIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCWKocV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCWKocV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6216C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768750433;
	bh=jpCoSgJEzw+XxY81OvI1yr/ppXlUjnUnxbWZ5SZeKCs=;
	h=To:Subject:From:Date:From;
	b=lCWKocV+5sPnxlCgQzf3ofrQkqK6u6HyAuVmOsGBat/z9+Dd4KQz4lhA1o0BIh4Kr
	 ENrAhkdDIicwtoKLaJVedCUC++SajlTkww80hfQg2TiSSNYg6R21DFCjBVmmzsjGYS
	 kXlNZWs7sarHzck5s5IvcSB5u5tT5ZABkUJAwx1NHH22ZJO06D5DKwOPqgm5xfnZIS
	 3ROOhHZ0xSKCmGIJ+lXLn0nkIKy7610/XfF6jJZamNm7NoxmSJlfaWCoF5Oex9XBh5
	 D7571Bq9Pc140vTlfzr3viHMmV7/eGlK2aMfzH3RvRUstcP/RhzhEIol76eaA2+dzf
	 yjv5c1EtdZFCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028CD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875043358.19656.7848872530677586159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edfe7cb9e929a83384c2bc1460ea0afe67e4aa1798a34270926df98c733f69a
Date: Sun, 18 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768750433

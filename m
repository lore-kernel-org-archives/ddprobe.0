Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3808D218ADC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737707154; cv=none; b=k6/WCqrz34+VUr2l6ET3e4S1f780xOW7TC3WNlHwhX2hsuyPIvda8EH4GT5SYQkcchdbucV4iMKwO6vUU8Jkee1AW8XXdgW+WTHg0MGpbIbY2LUO51Rd9oXAHnKHQ8wULyJaWeNxx8wKKij7zzHSvmPWOs0OdPs/0WJion7qm+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737707154; c=relaxed/simple;
	bh=id0IHXh29x6+6IHJfEzsfKQO2KRLwVRJD2QmSzO8Hew=;
	h=To:Subject:From:Message-Id:Date; b=bG30lCCaPljNIkaOnuffUvMiZaonhzJDg3/C/WMqpGjIlA7mYqf9t7xOtpyNu3agnJRAJdWYhcFsqljQGjfyaoGkZDDTgOUP6kiEVDfBrtuPzeIEf5nBWaBhdDkrWHWaR64Nn8OQtF4ynHCnbgcH6ZI46atxpQhSX7CndU3rbI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsKP6QJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsKP6QJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737707153;
	bh=id0IHXh29x6+6IHJfEzsfKQO2KRLwVRJD2QmSzO8Hew=;
	h=To:Subject:From:Date:From;
	b=qsKP6QJ2NUtxU6KdeQvSy5sqIjvRYQ54gPIIQqBugAhvkHT8rCriiiiwBLi53IVEt
	 n0/uH5MApb3iIYAwHOrNGabVXeQBjcrSeVIC23ajNkMvCttcDBQiFX34wJn4dNK+Zb
	 F8O/PV+4w0DBhB9LIpnDicyTFE85YID6hDolrmYsCKDFUPf95e9KeaqZ5efvuHq2a9
	 PLvnYwlyis5Zadh0zesbOX5vj1itVmhOBLHesMW0M2aXzhFjnBlgLIQMGC7qtS2JPA
	 smLfl6cgX3VWkhmbSCwspKn/3iVRq7tESVFL5+C6zj4UVtynYlymcL74K0wAkvew/R
	 9njzrKV+MXrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FFFC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770715361.15479.4322144853297629281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff1abd582159ed85128043398cf859b0832578d3d5ec2295a2597ac1fc6ca58
Date: Fri, 24 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737707153

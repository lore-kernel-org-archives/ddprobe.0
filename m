Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F83A345EA1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784758174; cv=none; b=pmgAAHX7Xg5OfsrjTGHIOoZ1dnuAe14roa/vJP/7LqP8cGA26woF7+E5TPYRcnYFXck+1+QiTMDJJVpjlh4uQa7KoRR1vYhjq6f2VB/vqB1MD9YO5Tlj/Tc02akU7sX+w07io2UIgI/FYdAGQI1NZjM2Oa1mXzwAj4b0JUP9xtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784758174; c=relaxed/simple;
	bh=MuvB6dOeyP9txV16KgOx/2VlTPTnSMIt7ns/wpZlSwg=;
	h=To:Subject:From:Message-Id:Date; b=Xcms6Qa5UpzWek4800HZASbzzzXRDuMCcgh3OTZGZH75YQlgKcxIVf03EGWncrdYwgYhhgdHvFMrrVmNnmf+nZuQikH7D8PBXUcuI7M6pZrCo5lPjvRC2Sw7SyPVa+qN2W4R4/XMVkO+69gd+yof07rnYpQP+ik2mNnFjtbJowo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnWtJshc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnWtJshc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD131C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784758173;
	bh=MuvB6dOeyP9txV16KgOx/2VlTPTnSMIt7ns/wpZlSwg=;
	h=To:Subject:From:Date:From;
	b=EnWtJshcUafORfR2inJXsBWeKoI3VZv9qHlaEFnAEyVRodROjYMDNAmeMvrxyUmYP
	 XYu8m8E2xpBwgm/z9bXLOmJzPm2cBuukSJp4VgGo7Ri30m3eiJ2tsbUjhLETDX2z/s
	 pGMa3GHm5nsgQl3AOypgG0XshnDdDevpNWieyTliWh1wrBZdhNU8e2az8cTtU0cebv
	 pyT9K5a65biZPmGDsB6TuxyWWUjlyI8xaM5rVA0rD/aQbx/HZcgM4mjls1oRolP+Nr
	 Ni7qJ5DjAkvuE3XqkqSnwlnthG7+ZxwHy4bWr5tkBntx/WebKQBtRzHGG77iwubL92
	 cHUdSzpQFaruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B6C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475817368.10925.1238068216378006817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d983697cfac3bcd19a28f441858d025852a3c925f652489db89027f2904e88c
Date: Wed, 22 Jul 2026 22:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784758173
